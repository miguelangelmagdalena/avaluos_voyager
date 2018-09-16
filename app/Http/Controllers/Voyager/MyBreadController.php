<?php

namespace App\Http\Controllers\Voyager;

use App\Avaluo;
use App\Contenido;
use App\AvaluoContenido;
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

class MyBreadController extends VoyagerBaseController
{
    use BreadRelationshipParser;

    /*switch ($slug) {
        case "avaluos":
        break;
        default:
        break;
    }*/
    
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

        switch ($slug) {
            case "avaluos":

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

                //Probando visualizacion en pdf
            
                $view = Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
                $pdf = \App::make('dompdf.wrapper');
                $pdf->loadHTML($view);
                return $pdf->stream('Ava');
            break;
            default:
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

        //Luego como se diferencian los metodos edit -->
        switch ($slug) {
            case "avaluos":
                //Consultamos los contenidos
                $contenidos =  Contenido::all();
                $avaluos = Avaluo::find($id);
                $avaluo_contenido = $avaluos->contenidos()->get();

                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','contenidos','avaluo_contenido'));
            break;
            case "solicitudes":
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
            break;
            case "dictamenes":
                $uop =  DB::table('unidades_organicasproductivas')
                    ->where('dictamen_id', $id)
                    ->get();
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','uop'));
            break;
            default:
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
            break;
        }
    }
    public function update(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Compatibility with Model binding.
        $id = $id instanceof Model ? $id->{$id->getKeyName()} : $id;

        $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows, $dataType->name, $id);

        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }

        switch ($slug) {
            case "avaluos":
                if (!$request->ajax()) {
                    //Limpiamos todo los contenidos
                    $avaluos_contenido =  DB::table('avaluo_contenido')
                                            ->where('avaluo_id', $id)
                                            ->delete();
                    //Insertamos si hay al menos un contenido seleccionado
                    $this->insertAvaluoContenido($request, $id);
                }
            break;
            case "solicitudes":
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
                if (!$request->ajax()) {
                    if($new_solicitante=="true"){
                        $this->insertUpdateData($request, $slug2, $dataType2->editRows, $data2);
                        event(new BreadDataUpdated($dataType2, $data2));
                    }else{
                        $request->merge(['solicitante_id' => $request->input('old_solicitante')]);
                    }
                }
            break;
            case "dictamenes":
                if (!$request->ajax()) {
                    //Limpiamos todo los contenidos
                    $uop =  DB::table('unidades_organicasproductivas')
                                ->where('dictamen_id', $id)
                                ->delete();
                    //Insertamos si hay al menos un contenido seleccionado
                    $this->insertUOP($request, $id);
                }
            break;
            default:
            break;
        }

        if (!$request->ajax()) {
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
    {
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

        switch ($slug) {
            case "avaluos":
                //Consultamos los contenidos
                $contenidos =  DB::table('contenidos')
                    ->get();

                //vacio
                $avaluo_contenido = collect([]);

                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','contenidos','avaluo_contenido'));
            break;
            case "solicitudes":
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
            break;
            case "dictamenes":
                $uop = collect([]);
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','uop'));
            break;
            default:
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
            break;
        }
        
    }
    public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows);

        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }

        switch ($slug) {
            case "avaluos":
                if (!$request->has('_validate')) {
                    $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
        
                    event(new BreadDataAdded($dataType, $data));
        
                    //Insertamos si hay al menos un contenido seleccionado
                    $this->insertAvaluoContenido($request, $data->id);
                }
            break;
            case "solicitudes":
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
                if (!$request->has('_validate')) {
                    if($new_solicitante=="true"){
                        //Insertamos solicitante
                        $data2 = $this->insertUpdateData($request, $slug2, $dataType2->addRows, new $dataType2->model_name());
                        event(new BreadDataAdded($dataType2, $data2));
        
                        //Cambiamos el request para saber la Solicitud de que solicitante?
                        $request->merge(['solicitante_id' => $data2->id]);
                    }else{
                        $request->merge(['solicitante_id' => $request->input('old_solicitante')]);
                    }
                    
                    //Pasar por parametro en la ruta del form
                    if($request->input('avaluo')){
                        $request->merge(['avaluo_id' => $request->input('avaluo')]);
                    }
                        
                    //Insertamos solicitud
                    $data  = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
                    
                    event(new BreadDataAdded($dataType, $data));
                }
            break;
            case "dictamenes":
                if (!$request->has('_validate')) {
                    //Pasar por parametro en la ruta del form
                    if($request->input('avaluo')){
                        $request->merge(['avaluo_id' => $request->input('avaluo')]);
                    }
                    
                    $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
        
                    event(new BreadDataAdded($dataType, $data));

                    //Insertamos
                    $this->insertUOP($request, $data->id);
                }
            break;
            default:
                if (!$request->has('_validate')) {
                    //Pasar por parametro en la ruta del form
                    if($request->input('avaluo')){
                        $request->merge(['avaluo_id' => $request->input('avaluo')]);
                    }
                    
                    $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
        
                    event(new BreadDataAdded($dataType, $data));
                }
            break;
        }

        if (!$request->has('_validate')) {
            if ($request->ajax()) {
                return response()->json(['success' => true, 'data' => $data]);
            }

            return redirect('/admin/'.$dataType->slug.'/'.$data->id.'/edit')
                ->with([
                        'message'    => __('voyager::generic.successfully_added_new')." {$dataType->display_name_singular}",
                        'alert-type' => 'success',
                    ]);
        }
    }

    //Navegación entre los contenidos del avaluo 1/2
    public function next_content(Request $request)
    {  
        //Obtenemos los parametros del request
        $actual_slug = $request->slug;
        
        //Si es el primer elemento entonces tendremos este request false
        if($request->avaluo_id){
            $avaluo_id = $request->avaluo_id;
        }
        else{
            $avaluo_id = $request->id;
        }
        
        if($avaluo_id){
            //Consultamos el avaluo
            $avaluo = Avaluo::find($avaluo_id);

            //Consultamos los contenidos
            $avaluo_contenido = $avaluo->contenidos()->get();
            
            $next_element = null;
            //Buscamos el siguiente elemento por el slug
            if(!$request->avaluo_id){
                foreach ($avaluo_contenido as $row) {
                    $next_element = $row;
                    break;
                }
            }else{
                
                //Buscamos el siguiente
                $bandera = false;
                foreach ($avaluo_contenido as $row) {
                    if($bandera){
                        $next_element = $row;
                        break;
                    }
                    //Si encontramos el slug entonces guardamos el prox element en la siguiente iteracion
                    if($actual_slug  == $row->slug){
                        $bandera = true;
                    }
                }
            }
            
            //Si existe un elemento (caso que sea el ultimo valor)
            if($next_element){
                //Buscamos las relaciones
                $dataContent = $avaluo->relationships($next_element->id)->get();
                
                $data_id = -1;
                foreach ($dataContent as $row) {
                    $data_id = $row->id ;
                }


                if($data_id != -1){
                    return redirect('/admin/'.$next_element->slug.'/'.$data_id.'/edit');
                }else{
                    return redirect()->route('voyager.'.$next_element->slug.'.create', ['avaluo_id' =>  $avaluo_id]);
                }
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }
    //Navegación entre los contenidos del avaluo 2/2
    public function previous_content(Request $request)
    {
        //return redirect('/admin');

        //Obtenemos los parametros del request
        $actual_slug = $request->slug;
        
        //Si es el primer elemento entonces tendremos este request false
        if($request->avaluo_id){
            $avaluo_id = $request->avaluo_id;
        }
        else{
            $avaluo_id = $request->id;
        }

        if($avaluo_id){
            //Consultamos el avaluo
            $avaluo = Avaluo::find($avaluo_id);

            //Consultamos los contenidos
            $avaluo_contenido = $avaluo->contenidos()->get();

            //Buscamos el siguiente elemento por el slug
            $next_element = null;
            if(!$request->avaluo_id){
                return redirect()->back();
            }else{
                
                //Buscamos el siguiente
                $bandera = false;
                foreach ($avaluo_contenido as $row) {
                    
                    //Si encontramos el slug entonces ya habiamos encontrado el anterior
                    if($actual_slug  == $row->slug){
                        break;
                    }
                    $next_element = $row;
                    $bandera = true;
                }
                //Significa que tenemos que regresar a la principal que es avaluo
                if($bandera == false){
                    return redirect('/admin/avaluos/'.$avaluo_id.'/edit');
                }
            }
            
            //Si existe un elemento (caso que sea el ultimo valor)
            if($next_element){
                //Buscamos las relaciones
                $dataContent = $avaluo->relationships($next_element->id)->get();
                
                $data_id = -1;
                foreach ($dataContent as $row) {
                    $data_id = $row->id ;
                }


                if($data_id != -1){
                    return redirect('/admin/'.$next_element->slug.'/'.$data_id.'/edit');
                }else{
                    return redirect()->route('voyager.'.$next_element->slug.'.create', ['avaluo_id' =>  $avaluo_id]);
                    //return redirect()->route('voyager.solicitudes.create');
                    //return redirect('/admin');
                }
            }else{
                return redirect()->back();
            }
        }else{
            $avaluo_id = $request->avaluo;
            if($avaluo_id){
                return redirect('/admin/avaluos/'.$avaluo_id.'/edit');
            }else{
                return redirect()->back();
            }
        }
    }

    //Funcion para insertar o cuando se modifica la relacion de muchos a muchos entre avaluo y contenido
    protected function insertAvaluoContenido(Request $request, $id)
    {
        if ($request->contenido){
            foreach ($request->contenido as $content){
                $nuevo_contenido = new AvaluoContenido;

                $nuevo_contenido->avaluo_id = $id;
                $nuevo_contenido->contenido_id = $content;

                $nuevo_contenido->save();
            }
        }
    }

    //Ajax para consultar todos los solicitantes registrados
    public function fetchOldSolicitantes(Request $request) 
    {

        //Consultamos todos los solicitantes/ clientes existentes
        $solicitantes_list =  DB::table('solicitantes')
            ->get();
        

        $output = '<option value="">Selecciona un solicitante</option>';
        foreach($solicitantes_list as $row)
        {
            $output .= '<option value="'.$row->id.'">'.$row->nombre.' '.$row->cedula.' '.$row->email.'</option>';
        }
        echo $output;

    }

    //Funcion para insertar o cuando se modifica las UOP en dictamen
    protected function insertUOP(Request $request, $id)
    {

        if (isset($request->item_uop)){

            //Hacemos el array para insertar varios
            $newArray = array();
            foreach (array_keys($request->item_uop) as $fieldKey) {
                foreach ($request->item_uop[$fieldKey] as $key=>$value) {
                    $newArray[$key]["dictamen_id"] = $id;
                    $newArray[$key][$fieldKey] = $value;
                    
                }
            } 
            /*
            Datos recibidos de la vista en forma de array y transformados de esta forma para insertarlos
            $data = array(
                array('nombre'=>'UOP', 'descripcion'=> 'algo', 'metros_cuadrados'=>100, 'costo'=> 4096),
                array('nombre'=>'UOP', 'descripcion'=> 'algo', 'metros_cuadrados'=>100, 'costo'=> 4096),
                //...
            );*/

            DB::table('unidades_organicasproductivas')->insert($newArray);

        }
    }
    
}
