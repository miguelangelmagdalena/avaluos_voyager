<?php

namespace App\Http\Controllers\Voyager;

use App\Solicitude;
use App\Solicitante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class SolicitudController extends VoyagerBaseController
{
    use BreadRelationshipParser;
    //***************************************
    //               ____
    //              |  _ \
    //              | |_) |
    //              |  _ <
    //              | |_) |
    //              |____/
    //
    //      Browse our Data Type (B)READ
    //
    //****************************************

    public function index(Request $request)
    {
        // GET THE SLUG, ex. 'posts', 'pages', etc.
        $slug = $this->getSlug($request);

        // GET THE DataType based on the slug
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('browse', app($dataType->model_name));

        $getter = $dataType->server_side ? 'paginate' : 'get';

        $search = (object) ['value' => $request->get('s'), 'key' => $request->get('key'), 'filter' => $request->get('filter')];
        $searchable = $dataType->server_side ? array_keys(SchemaManager::describeTable(app($dataType->model_name)->getTable())->toArray()) : '';
        $orderBy = $request->get('order_by');
        $sortOrder = $request->get('sort_order', null);

        // Next Get or Paginate the actual content from the MODEL that corresponds to the slug DataType
        if (strlen($dataType->model_name) != 0) {
            $relationships = $this->getRelationships($dataType);

            $model = app($dataType->model_name);
            $query = $model::select('*')->with($relationships);

            // If a column has a relationship associated with it, we do not want to show that field
            $this->removeRelationshipField($dataType, 'browse');

            if ($search->value && $search->key && $search->filter) {
                $search_filter = ($search->filter == 'equals') ? '=' : 'LIKE';
                $search_value = ($search->filter == 'equals') ? $search->value : '%'.$search->value.'%';
                $query->where($search->key, $search_filter, $search_value);
            }

            if ($orderBy && in_array($orderBy, $dataType->fields())) {
                $querySortOrder = (!empty($sortOrder)) ? $sortOrder : 'DESC';
                $dataTypeContent = call_user_func([
                    $query->orderBy($orderBy, $querySortOrder),
                    $getter,
                ]);
            } elseif ($model->timestamps) {
                $dataTypeContent = call_user_func([$query->latest($model::CREATED_AT), $getter]);
            } else {
                $dataTypeContent = call_user_func([$query->orderBy($model->getKeyName(), 'DESC'), $getter]);
            }

            // Replace relationships' keys for labels and create READ links if a slug is provided.
            $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        } else {
            // If Model doesn't exist, get data from table name
            $dataTypeContent = call_user_func([DB::table($dataType->name), $getter]);
            $model = false;
        }

        // Check if BREAD is Translatable
        if (($isModelTranslatable = is_bread_translatable($model))) {
            $dataTypeContent->load('translations');
        }

        // Check if server side pagination is enabled
        $isServerSide = isset($dataType->server_side) && $dataType->server_side;

        $view = 'voyager::bread.browse';

        if (view()->exists("voyager::$slug.browse")) {
            $view = "voyager::$slug.browse";
        }

        return Voyager::view($view, compact(
            'dataType',
            'dataTypeContent',
            'isModelTranslatable',
            'search',
            'orderBy',
            'sortOrder',
            'searchable',
            'isServerSide'
        ));
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |__) |
    //               |  _  /
    //               | | \ \
    //               |_|  \_\
    //
    //  Read an item of our Data Type B(R)EAD
    //
    //****************************************

    public function show(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $relationships = $this->getRelationships($dataType);
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);
            $dataTypeContent = call_user_func([$model->with($relationships), 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        // Replace relationships' keys for labels and create READ links if a slug is provided.
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType, true);

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'read');

        // Check permission
        $this->authorize('read', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.read';

        if (view()->exists("voyager::$slug.read")) {
            $view = "voyager::$slug.read";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    //***************************************
    //                ______
    //               |  ____|
    //               | |__
    //               |  __|
    //               | |____
    //               |______|
    //
    //  Edit an item of our Data Type BR(E)AD
    //
    //****************************************

    public function edit(Request $request, $id)
    { 
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        
        $relationships = $this->getRelationships($dataType);

        $dataTypeContent = (strlen($dataType->model_name) != 0)
            ? app($dataType->model_name)->with($relationships)->findOrFail($id)
            : DB::table($dataType->name)->where('id', $id)->first(); // If Model doest exist, get data from table name

        foreach ($dataType->editRows as $key => $row) {
            $details = json_decode($row->details);
            $dataType->editRows[$key]['col_width'] = isset($details->width) ? $details->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'edit');

        // Check permission
        $this->authorize('edit', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        //TABLA SOLICITANTES
        $slug2 = "solicitantes";

        $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();
        
        $relationships2 = $this->getRelationships($dataType2);

        //BUSCAMOS EL ID de la relacion

        //1. Forma de consultar el id de la relacion de solicitud con solicitante
            //$solicitante = Solicitude::find($id);
            //$id2 = $solicitante->solicitante_id;

        //2. Usamos dataTypeContent que ya hizo el query para consultar
        $id2 = $dataTypeContent->solicitante_id;

        $dataTypeContent2 = (strlen($dataType2->model_name) != 0)
            ? app($dataType2->model_name)->with($relationships2)->findOrFail($id2)
            : DB::table($dataType2->name)->where('id', $id2)->first(); // If Model doest exist, get data from table name

        foreach ($dataType2->editRows as $key => $row) {
            $details2 = json_decode($row->details);
            $dataType2->editRows[$key]['col_width'] = isset($details2->width) ? $details2->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType2, 'edit');

        // Check permission
        $this->authorize('edit', $dataTypeContent2);

        // Check if BREAD is Translatable
        $isModelTranslatable2 = is_bread_translatable($dataTypeContent2);

        //Consultamos todos los solicitantes/ clientes existentes
        $solicitantes_list =  DB::table($slug2)
                           ->get();

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2', 'isModelTranslatable2','solicitantes_list'));
    }

    // POST BR(E)AD
    public function update(Request $request, $id)
    {//dd($request);
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Compatibility with Model binding.
        $id = $id instanceof Model ? $id->{$id->getKeyName()} : $id;

        $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);
       
        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows, $dataType->name, $id);

        //**************************************** TABLA SOLICITANTES
        $new_solicitante = $request->input('new_solicitante');
        if($new_solicitante=="true"){
            $slug2 = "solicitantes";

            $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();

            // ID de solicitante
            $id2 = $data->solicitante_id;

            $data2 = call_user_func([$dataType2->model_name, 'findOrFail'], $id2);

            // Check permission
            $this->authorize('edit', $data2);

            // Validate fields with ajax
            $val2 = $this->validateBread($request->all(), $dataType2->editRows, $dataType2->name, $id2);

        

            if ($val2->fails()) {
                return response()->json(['errors' => $val2->messages()]);
            }
        }

        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }

        if (!$request->ajax()) {
            if($new_solicitante=="true"){
                $this->insertUpdateData($request, $slug2, $dataType2->editRows, $data2);
                event(new BreadDataUpdated($dataType2, $data2));
            }else{
                $request->merge(['solicitante_id' => $request->input('old_solicitante')]);
            }

            $this->insertUpdateData($request, $slug, $dataType->editRows, $data);
            event(new BreadDataUpdated($dataType, $data));

            

            return redirect()
                ->back()
                ->with([
                    'message'    => __('voyager::generic.successfully_updated')." {$dataType->display_name_singular}",
                    'alert-type' => 'success',
                ]);
        }
    }

    //***************************************
    //
    //                   /\
    //                  /  \
    //                 / /\ \
    //                / ____ \
    //               /_/    \_\
    //
    //
    // Add a new item of our Data Type BRE(A)D
    //
    //****************************************

    public function create(Request $request)
    {//dd($request);
        $slug = $this->getSlug($request);
        
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        $dataTypeContent = (strlen($dataType->model_name) != 0)
                            ? new $dataType->model_name()
                            : false;

        foreach ($dataType->addRows as $key => $row) {
            $details = json_decode($row->details);
            $dataType->addRows[$key]['col_width'] = isset($details->width) ? $details->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'add');

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        //**************************************** Buscamos la tabla solicitantes
        $slug2 = "solicitantes";

        $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();

        // Check permission
        $this->authorize('add', app($dataType2->model_name));

        $dataTypeContent2 = (strlen($dataType2->model_name) != 0)
                            ? new $dataType2->model_name()
                            : false;

        foreach ($dataType2->addRows as $key => $row) {
            $details2 = json_decode($row->details);
            $dataType2->addRows[$key]['col_width'] = isset($details2->width) ? $details2->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType2, 'add');

        // Check if BREAD is Translatable
        $isModelTranslatable2 = is_bread_translatable($dataTypeContent2);

        //Consultamos todos los solicitantes/ clientes existentes
        $solicitantes_list =  DB::table($slug2)
                           ->get();
        //dd($solicitantes_list);
        
        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2', 'isModelTranslatable2','solicitantes_list'));
    }

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    { //dd($request->input('avaluo')); 
        //dd($request->input('old_solicitante')); 
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows);

        //**************************************** Buscamos el solicitante               (Poner id de consulta)
        $new_solicitante = $request->input('new_solicitante');
        if($new_solicitante=="true"){
            $slug2 = "solicitantes";
            $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();

            // Check permission
            $this->authorize('add', app($dataType2->model_name));

            // Validate fields with ajax
            $val2 = $this->validateBread($request->all(), $dataType2->addRows);

            if ($val2->fails()) {
                return response()->json(['errors' => $val2->messages()]);
            }
        }
        
        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }
        

        if (!$request->has('_validate')) 
        {
            if($new_solicitante=="true"){
                //Insertamos solicitante
                $data2 = $this->insertUpdateData($request, $slug2, $dataType2->addRows, new $dataType2->model_name());
                event(new BreadDataAdded($dataType2, $data2));

                //Cambiamos el request para saber la Solicitud de que solicitante?
                $request->merge(['solicitante_id' => $data2->id]);
            }else{
                $request->merge(['solicitante_id' => $request->input('old_solicitante')]);
            }
            

            if($request->input('avaluo')){
                $request->merge(['avaluo_id' => $request->input('avaluo')]);
            }
                
            //Insertamos solicitud
            $data  = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
            
            event(new BreadDataAdded($dataType, $data));
            

            if ($request->ajax()) { /*Checkear luego estas peticiones ajax*/ 
                return response()->json(['success' => true, 'data' => $data]);
            }

            return redirect('/admin/'.$dataType->slug.'/'.$data->id.'/edit')
                ->with([
                        'message'    => __('voyager::generic.successfully_added_new')." {$dataType->display_name_singular}",
                        'alert-type' => 'success',
                    ]);
        }
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |  | |
    //               | |  | |
    //               | |__| |
    //               |_____/
    //
    //         Delete an item BREA(D)
    //
    //****************************************

    public function destroy(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('delete', app($dataType->model_name));

        // Init array of IDs
        $ids = [];
        if (empty($id)) {
            // Bulk delete, get IDs from POST
            $ids = explode(',', $request->ids);
        } else {
            // Single item delete, get ID from URL
            $ids[] = $id;
        }
        foreach ($ids as $id) {
            $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);
            $this->cleanup($dataType, $data);
        }

        $displayName = count($ids) > 1 ? $dataType->display_name_plural : $dataType->display_name_singular;

        $res = $data->destroy($ids);
        $data = $res
            ? [
                'message'    => __('voyager::generic.successfully_deleted')." {$displayName}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => __('voyager::generic.error_deleting')." {$displayName}",
                'alert-type' => 'error',
            ];

        if ($res) {
            event(new BreadDataDeleted($dataType, $data));
        }

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
        
    }

    /**
     * Remove translations, images and files related to a BREAD item.
     *
     * @param \Illuminate\Database\Eloquent\Model $dataType
     * @param \Illuminate\Database\Eloquent\Model $data
     *
     * @return void
     */
    protected function cleanup($dataType, $data)
    {
        // Delete Translations, if present
        if (is_bread_translatable($data)) {
            $data->deleteAttributeTranslations($data->getTranslatableAttributes());
        }

        // Delete Images
        $this->deleteBreadImages($data, $dataType->deleteRows->where('type', 'image'));

        // Delete Files
        foreach ($dataType->deleteRows->where('type', 'file') as $row) {
            foreach (json_decode($data->{$row->field}) as $file) {
                $this->deleteFileIfExists($file->download_link);
            }
        }
    }

    /**
     * Delete all images related to a BREAD item.
     *
     * @param \Illuminate\Database\Eloquent\Model $data
     * @param \Illuminate\Database\Eloquent\Model $rows
     *
     * @return void
     */
    public function deleteBreadImages($data, $rows)
    {
        foreach ($rows as $row) {
            if ($data->{$row->field} != config('voyager.user.default_avatar')) {
                $this->deleteFileIfExists($data->{$row->field});
            }

            $options = json_decode($row->details);

            if (isset($options->thumbnails)) {
                foreach ($options->thumbnails as $thumbnail) {
                    $ext = explode('.', $data->{$row->field});
                    $extension = '.'.$ext[count($ext) - 1];

                    $path = str_replace($extension, '', $data->{$row->field});

                    $thumb_name = $thumbnail->name;

                    $this->deleteFileIfExists($path.'-'.$thumb_name.$extension);
                }
            }
        }

        if ($rows->count() > 0) {
            event(new BreadImagesDeleted($data, $rows));
        }
    }

    /**
     * Order BREAD items.
     *
     * @param string $table
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function order(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('edit', app($dataType->model_name));

        if (!isset($dataType->order_column) || !isset($dataType->order_display_column)) {
            return redirect()
            ->route("voyager.{$dataType->slug}.index")
            ->with([
                'message'    => __('voyager::bread.ordering_not_set'),
                'alert-type' => 'error',
            ]);
        }

        $model = app($dataType->model_name);
        $results = $model->orderBy($dataType->order_column)->get();

        $display_column = $dataType->order_display_column;

        $view = 'voyager::bread.order';

        if (view()->exists("voyager::$slug.order")) {
            $view = "voyager::$slug.order";
        }

        return Voyager::view($view, compact(
            'dataType',
            'display_column',
            'results'
        ));
    }

    public function update_order(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('edit', app($dataType->model_name));

        $model = app($dataType->model_name);

        $order = json_decode($request->input('order'));
        $column = $dataType->order_column;
        foreach ($order as $key => $item) {
            $i = $model->findOrFail($item->id);
            $i->$column = ($key + 1);
            $i->save();
        }
    }

    /*protected function insertSolicitud(Request $request, $id){
        if ($request->contenido){
            
            $nuevo_contenido = new AvaluoContenido;

            $nuevo_contenido->avaluo_id = $id;
            $nuevo_contenido->contenido_id = $content;

            $nuevo_contenido->save();
            
        }
    }*/
}
