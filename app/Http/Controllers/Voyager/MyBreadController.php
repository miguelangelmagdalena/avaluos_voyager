<?php

namespace App\Http\Controllers\Voyager;

use App\Avaluo;
use App\Contenido;
use App\AvaluoContenido;
use App\Solicitude;
use App\Solicitante;
use App\InformesValoracione;
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
use App;
use PDF;
class MyBreadController extends VoyagerBaseController
{
    use BreadRelationshipParser;

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
                
                $view2 = Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
                /*$pdf = App::make('snappy.pdf.wrapper');
                $pdf->loadHTML($view2);*/

                $pdf = PDF::loadView($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));



                return $pdf->inline();
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

                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2', 'isModelTranslatable2'));
            break;
            case "dictamenes":
                $uop =  DB::table('unidades_organicasproductivas')
                    ->where('dictamen_id', $id)
                    ->get();
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','uop'));
            break;
            case "informes-valoraciones":
                
                // ###Buscamos la tabla inspectores###
                $slug2 = "inspectores";
                $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();
                $relationships2 = $this->getRelationships($dataType2);
                //BUSCAMOS EL ID de la relacion
                //2. Usamos dataTypeContent que ya hizo el query para consultar
                $id2 = $dataTypeContent->inspector_id;
                //dd();
                if(isset($id2)){
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
                }else{
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
                }
                

                // ###Buscamos la tabla bienes###
                $slug3 = "bienes";
                $dataType3 = Voyager::model('DataType')->where('slug', '=', $slug3)->first();
                $relationships3 = $this->getRelationships($dataType3);
                //BUSCAMOS EL ID de la relacion
                $bien = InformesValoracione::find($id)->bien;
                $id3 = $bien->id;
                $dataTypeContent3 = (strlen($dataType3->model_name) != 0)
                    ? app($dataType3->model_name)->with($relationships3)->findOrFail($id3)
                    : DB::table($dataType3->name)->where('id', $id3)->first(); // If Model doest exist, get data from table name
                foreach ($dataType3->editRows as $key => $row) {
                    $details3 = json_decode($row->details);
                    $dataType3->editRows[$key]['col_width'] = isset($details3->width) ? $details3->width : 100;
                }
                // If a column has a relationship associated with it, we do not want to show that field
                $this->removeRelationshipField($dataType3, 'edit');
                // Check permission
                $this->authorize('edit', $dataTypeContent3);


                // ###Buscamos la tabla edificaciones###
                $slug4 = "edificaciones";
                $dataType4 = Voyager::model('DataType')->where('slug', '=', $slug4)->first();
                $relationships4 = $this->getRelationships($dataType4);
                //BUSCAMOS EL ID de la relacion
                $edificacion = InformesValoracione::find($id)->edificacion;
                $id4 = $edificacion->id;
                $dataTypeContent4 = (strlen($dataType4->model_name) != 0)
                    ? app($dataType4->model_name)->with($relationships4)->findOrFail($id4)
                    : DB::table($dataType4->name)->where('id', $id4)->first(); // If Model doest exist, get data from table name
                foreach ($dataType4->editRows as $key => $row) {
                    $details4 = json_decode($row->details);
                    $dataType4->editRows[$key]['col_width'] = isset($details4->width) ? $details4->width : 100;
                }
                // If a column has a relationship associated with it, we do not want to show that field
                $this->removeRelationshipField($dataType3, 'edit');
                // Check permission
                $this->authorize('edit', $dataTypeContent3);


                $componentes_list =  DB::table('obra_componentes')
                    ->where('informe_valoracion_id', $id)
                    ->get();
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2','dataType3', 'dataTypeContent3','dataType4', 'dataTypeContent4','componentes_list'));
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
            case "informes-valoraciones":
                // ###Buscamos la tabla inspectores###
                $new_inspector = $request->input('new_inspector');
                if($new_inspector=="true"){
                    $slug2 = "inspectores";
                    $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();
                    // ID de inspector
                    $id2 = $data->inspector_id;
                    if(isset($id2)){
                        $data2 = call_user_func([$dataType2->model_name, 'findOrFail'], $id2);
                        // Check permission
                        $this->authorize('edit', $data2);
                        // Validate fields with ajax
                        $val2 = $this->validateBread($request->all(), $dataType2->editRows, $dataType2->name, $id2);
                        if ($val2->fails()) {
                            return response()->json(['errors' => $val2->messages()]);
                        }
                    }else{
                        // Check permission
                        $this->authorize('add', app($dataType2->model_name));

                        // Validate fields with ajax
                        $val2 = $this->validateBread($request->all(), $dataType2->addRows);

                        if ($val2->fails()) {
                            return response()->json(['errors' => $val2->messages()]);
                        }
                    }
                }

                // ###Buscamos la tabla bienes###
                $slug3 = "bienes";
                $dataType3 = Voyager::model('DataType')->where('slug', '=', $slug3)->first();
                //BUSCAMOS EL ID de la relacion
                $bien = InformesValoracione::find($id)->bien;
                $id3 = $bien->id;
                $data3 = call_user_func([$dataType3->model_name, 'findOrFail'], $id3);
                // Check permission
                $this->authorize('edit', $data3);
                // Validate fields with ajax
                $val3 = $this->validateBread($request->all(), $dataType3->editRows, $dataType3->name, $id3);
                if ($val3->fails()) {
                    return response()->json(['errors' => $val3->messages()]);
                }

                // ###Buscamos la tabla edificaciones###
                $slug4 = "edificaciones";
                $dataType4 = Voyager::model('DataType')->where('slug', '=', $slug4)->first();
                //BUSCAMOS EL ID de la relacion
                $edificacion = InformesValoracione::find($id)->edificacion;
                $id4 = $edificacion->id;
                $data4 = call_user_func([$dataType4->model_name, 'findOrFail'], $id4);
                // Check permission
                $this->authorize('edit', $data4);
                // Validate fields with ajax
                $val4 = $this->validateBread($request->all(), $dataType4->editRows, $dataType4->name, $id4);
                if ($val4->fails()) {
                    return response()->json(['errors' => $val4->messages()]);
                }

                if (!$request->ajax()) {


                    if($new_inspector=="true" && !isset($id2)){
                        //Insertamos inspector
                        $data2 = $this->insertUpdateData($request, $slug2, $dataType2->addRows, new $dataType2->model_name());
                        event(new BreadDataAdded($dataType2, $data2));
        
                        //Cambiamos el request para saber la Solicitud de que solicitante?
                        $request->merge(['inspector_id' => $data2->id]);
                    }elseif(!isset($id2)){
                        $request->merge(['inspector_id' => $request->input('old_inspector')]);
                    }else{

                        //Modificamos el inspector
                        if($new_inspector=="true"){
                            $this->insertUpdateData($request, $slug2, $dataType2->editRows, $data2);
                            event(new BreadDataUpdated($dataType2, $data2));
                        }else{
                            $request->merge(['inspector_id' => $request->input('old_inspector')]);
                        }
                    }

                    //Modificamos bien
                    $this->insertUpdateData($request, $slug3, $dataType3->editRows, $data3);
                    event(new BreadDataUpdated($dataType3, $data3));

                    //Modificamos edificaciones
                    $this->insertUpdateData($request, $slug4, $dataType4->editRows, $data4);
                    event(new BreadDataUpdated($dataType4, $data4));

                    //Limpiamos todo los componentes
                    $componentes_list =  DB::table('obra_componentes')
                                ->where('informe_valoracion_id', $id)
                                ->delete();
                    //Insertamos si hay al menos un contenido seleccionado
                    $this->insertComponentes($request, $id);

                    //Limpiamos todo los construcciones
                    $construcciones_list =  DB::table('construcciones')
                                ->where('informe_valoracion_id', $id)
                                ->delete();
                    //Insertamos si hay al menos un contenido seleccionado
                    $this->insertConstrucciones($request, $id);
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
                
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2', 'isModelTranslatable2'));
            break;
            case "dictamenes":
                $uop = collect([]);
                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','uop'));
            break;
            case "informes-valoraciones":
                // ###Buscamos la tabla inspectores###
                $slug2 = "inspectores";
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
                
                // ###Buscamos la tabla bienes###
                $slug3 = "bienes";
                $dataType3 = Voyager::model('DataType')->where('slug', '=', $slug3)->first();
                // Check permission
                $this->authorize('add', app($dataType3->model_name));
                $dataTypeContent3 = (strlen($dataType3->model_name) != 0)
                                    ? new $dataType3->model_name()
                                    : false;
                foreach ($dataType3->addRows as $key => $row) {
                    $details3 = json_decode($row->details);
                    $dataType3->addRows[$key]['col_width'] = isset($details3->width) ? $details3->width : 100;
                }
                // If a column has a relationship associated with it, we do not want to show that field
                $this->removeRelationshipField($dataType3, 'add');

                // ###Buscamos la tabla edificaciones###
                $slug4 = "edificaciones";
                $dataType4 = Voyager::model('DataType')->where('slug', '=', $slug4)->first();
                // Check permission
                $this->authorize('add', app($dataType4->model_name));
                $dataTypeContent4 = (strlen($dataType4->model_name) != 0)
                                    ? new $dataType4->model_name()
                                    : false;
                foreach ($dataType4->addRows as $key => $row) {
                    $details4 = json_decode($row->details);
                    $dataType4->addRows[$key]['col_width'] = isset($details4->width) ? $details4->width : 100;
                }
                // If a column has a relationship associated with it, we do not want to show that field
                $this->removeRelationshipField($dataType4, 'add');
                
                $componentes_list = collect([]);

                return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable','dataType2', 'dataTypeContent2','dataType3', 'dataTypeContent3','dataType4', 'dataTypeContent4','componentes_list'));
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
            case "informes-valoraciones":
                //## Inspector
                $new_inspector = $request->input('new_inspector');
                if($new_inspector=="true"){
                    $slug2 = "inspectores";
                    $dataType2 = Voyager::model('DataType')->where('slug', '=', $slug2)->first();

                    // Check permission
                    $this->authorize('add', app($dataType2->model_name));

                    // Validate fields with ajax
                    $val2 = $this->validateBread($request->all(), $dataType2->addRows);

                    if ($val2->fails()) {
                        return response()->json(['errors' => $val2->messages()]);
                    }
                }

                //## Bienes
                $slug3 = "bienes";
                $dataType3 = Voyager::model('DataType')->where('slug', '=', $slug3)->first();
                // Check permission
                $this->authorize('add', app($dataType3->model_name));
                // Validate fields with ajax
                $val3 = $this->validateBread($request->all(), $dataType3->addRows);
                if ($val3->fails()) {
                    return response()->json(['errors' => $val3->messages()]);
                }

                //## Edificaciones
                $slug4 = "edificaciones";
                $dataType4 = Voyager::model('DataType')->where('slug', '=', $slug4)->first();
                // Check permission
                $this->authorize('add', app($dataType4->model_name));
                // Validate fields with ajax
                $val4 = $this->validateBread($request->all(), $dataType4->addRows);
                if ($val4->fails()) {
                    return response()->json(['errors' => $val4->messages()]);
                }

                if (!$request->has('_validate')) {
                    if($new_inspector=="true"){
                        //Insertamos inspector
                        $data2 = $this->insertUpdateData($request, $slug2, $dataType2->addRows, new $dataType2->model_name());
                        event(new BreadDataAdded($dataType2, $data2));
        
                        //Cambiamos el request para saber la Solicitud de que solicitante?
                        $request->merge(['inspector_id' => $data2->id]);
                    }else{
                        $request->merge(['inspector_id' => $request->input('old_inspector')]);
                    }
                    
                    //Pasar por parametro en la ruta del form
                    if($request->input('avaluo')){
                        $request->merge(['avaluo_id' => $request->input('avaluo')]);
                    }
                        
                    //Insertamos Informe de valoracion
                    $data  = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
                    event(new BreadDataAdded($dataType, $data));

                    //Luego insertamos los otros valores con este id
                    $request->merge(['informe_valoracion_id' => $data->id]);

                    //## Bienes
                    $data3  = $this->insertUpdateData($request, $slug3, $dataType3->addRows, new $dataType3->model_name());
                    event(new BreadDataAdded($dataType3, $data3));

                    //## Edificaciones
                    $data4  = $this->insertUpdateData($request, $slug4, $dataType4->addRows, new $dataType4->model_name());
                    event(new BreadDataAdded($dataType4, $data4));

                    //## Componentes
                    $this->insertComponentes($request, $data->id);

                    //## Construcciones
                    $this->insertConstrucciones($request, $data->id);
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

        switch ($slug) {
            case "informes-valoraciones":
                $slugs = ["bienes","edificaciones","obra-componentes","construcciones"];
                $slugs_cantidad = 4;

                $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

                $dataTypes = [];
                foreach ($slugs as $key=>$singleSlug){
                    $dataTypes[$key] = Voyager::model('DataType')->where('slug', '=', $singleSlug)->first();
                    $this->authorize('delete', app($dataTypes[$key]->model_name));
                }
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

                //Id de relaciones
                $ids_slugs = array(array());
                
                for ($i = 0; $i < $slugs_cantidad; $i++) {
                    $ids_slugs[$i] = [];
                }
                
                foreach ($ids as $id) {
                    $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);
                    $this->cleanup($dataType, $data);

                    //##Buscamos todas las tablas relacionadas
                    for ($i = 0; $i < $slugs_cantidad; $i++) {
                        $this->queryInformesValoraciones($i,$id,$ids_slugs[$i]);
                    }
                    
                }
                $datas = [];
                foreach ($ids_slugs as $key=>$idSlug) {
                    foreach ($idSlug as $id) {
                        $datas[$key] = call_user_func([$dataTypes[$key]->model_name, 'findOrFail'], $id);
                        $this->cleanup($dataTypes[$key], $datas);
                    }
                }

                $displayName = count($ids) > 1 ? $dataType->display_name_plural : $dataType->display_name_singular;
  
                $res = $data->destroy($ids);
                

                for ($i = 0; $i < $slugs_cantidad; $i++) {
                    if(isset($datas[$i])){
                        $res2[$i] = $datas[$i]->destroy($ids_slugs[$i]);
                        if ($res2[$i]) {
                            event(new BreadDataDeleted($dataTypes[$i], $datas[$i]));
                        }
                    }
                }   
                
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
            break;
            default:
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
            break;
        }
    }
    protected function queryInformesValoraciones ($relation, $id, &$array){
        $query = InformesValoracione::find($id)->relationships($relation)->get();
        foreach ($query as $row) {
            $aux = [$row->id];
            $array  = array_merge($array, $aux);
        }
        
    }

    protected function queryMerge($query, $old_array, $data, $dataType, $id)
    {
        foreach ($query as $row) {
            $array = [$row->id];
            $old_array  = array_merge($old_array, $array);
            $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);
            $this->cleanup($dataType, $data);
        }
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

    //Ajax para consultar todos los inspectores registrados
    public function fetchOldInspectores(Request $request) 
    {

        //Consultamos todos los solicitantes/ clientes existentes
        $inspectores_list =  DB::table('inspectores')
            ->get();
        

        $output = '<option value="">Selecciona un inspector</option>';
        foreach($inspectores_list as $row)
        {
            $output .= '<option value="'.$row->id.'">'.$row->nombre.' '.$row->v_b.' '.$row->email.'</option>';
        }
        echo $output;

    }

    //Ajax para agregar construccion
    public function newConstruccion(Request $request) 
    {
        //dd($request);
        //Parametro para difererciar si esta editando o agregando
        $new = $request->new;
        $informe_valoracion_id = $request->informe_valoracion_id;
        
        // ###Buscamos la tabla construcciones###
        $slug5 = "construcciones";

        //Salida
        $output = '';
        
        if($new == "true"){
            $dataType5 = Voyager::model('DataType')->where('slug', '=', $slug5)->first();
            // Check permission
            $this->authorize('add', app($dataType5->model_name));
            $dataTypeContent5 = (strlen($dataType5->model_name) != 0)
                                ? new $dataType5->model_name()
                                : false;
            foreach ($dataType5->addRows as $key => $row) {
                $details5 = json_decode($row->details);
                $dataType5->addRows[$key]['col_width'] = isset($details5->width) ? $details5->width : 100;
            }
            // If a column has a relationship associated with it, we do not want to show that field
            $this->removeRelationshipField($dataType5, 'add');

            //Adding / Editing 
            $dataTypeRows = $dataType5->{(!is_null($dataTypeContent5->getKey()) ? 'editRows' : 'addRows' )};

            $output .= '<tr>';
            foreach($dataTypeRows as $row){
                //GET THE DISPLAY OPTIONS
                $options = json_decode($row->details);
                $display_options = isset($options->display) ? $options->display : NULL;

                //Agregamos el name para los input
                $row->setAttribute('name', 'item_construccion['.$row->field.'][]');
                if ($options && isset($options->formfields_custom)){
                    //include('voyager::formfields.custom.' . $options->formfields_custom)
                }else{
                    //@include('voyager::multilingual.input-hidden-bread-edit-add')
                    if($row->type == 'relationship'){
                        //@include('voyager::formfields.relationship')
                    }elseif ($row->type != 'hidden'){
                        $output .= '<td>'.app('voyager')->formField($row, $dataType5, $dataTypeContent5).'</td>';
                    }
                }
            }
            $output .= '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove_construccion"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>';

        }else{
            // ###Buscamos la tabla construcciones###
            $dataType5 = Voyager::model('DataType')->where('slug', '=', $slug5)->first();
            $relationships5 = $this->getRelationships($dataType5);
            
            //BUSCAMOS EL ID de la relacion
            $construcciones = InformesValoracione::find($informe_valoracion_id)->construcciones;
            
            foreach($construcciones as $construccion){
                $id5 = $construccion->id;
        
                $dataTypeContent5 = (strlen($dataType5->model_name) != 0)
                    ? app($dataType5->model_name)->with($relationships5)->findOrFail($id5)
                    : DB::table($dataType5->name)->where('id', $id5)->first(); // If Model doest exist, get data from table name
                foreach ($dataType5->editRows as $key => $row) {
                    $details5 = json_decode($row->details);
                    $dataType5->editRows[$key]['col_width'] = isset($details5->width) ? $details5->width : 100;
                }
                // If a column has a relationship associated with it, we do not want to show that field
                $this->removeRelationshipField($dataType5, 'edit');
                // Check permission
                $this->authorize('edit', $dataTypeContent5);

                //Adding / Editing 
                $dataTypeRows = $dataType5->{(!is_null($dataTypeContent5->getKey()) ? 'editRows' : 'addRows' )};

                $output .= '<tr>';
                foreach($dataTypeRows as $row){
                    //GET THE DISPLAY OPTIONS
                    $options = json_decode($row->details);
                    $display_options = isset($options->display) ? $options->display : NULL;

                    //Agregamos el name para los input
                    $row->setAttribute('name', 'item_construccion['.$row->field.'][]');
                    if ($options && isset($options->formfields_custom)){
                        //include('voyager::formfields.custom.' . $options->formfields_custom)
                    }else{
                        //@include('voyager::multilingual.input-hidden-bread-edit-add')
                        if($row->type == 'relationship'){
                            //@include('voyager::formfields.relationship')
                        }elseif ($row->type != 'hidden'){
                            $output .= '<td>'.app('voyager')->formField($row, $dataType5, $dataTypeContent5).'</td>';
                        }
                    }
                }
                $output .= '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove_construccion"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>';

            }
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

    //Funcion para insertar o cuando se modifica los componentes en Informes Valoraciones
    protected function insertComponentes(Request $request, $id)
    {

        if (isset($request->item_componente)){

            //Hacemos el array para insertar varios
            $newArray = array();
            foreach (array_keys($request->item_componente) as $fieldKey) {
                foreach ($request->item_componente[$fieldKey] as $key=>$value) {
                    $newArray[$key]["informe_valoracion_id"] = $id;
                    $newArray[$key][$fieldKey] = $value;
                    
                }
            } 

            DB::table('obra_componentes')->insert($newArray);

        }
    }
    
     //Funcion para insertar o cuando se modifica los construcciones en Informes Valoraciones
     protected function insertConstrucciones(Request $request, $id)
     {
 
         if (isset($request->item_construccion)){
 
             //Hacemos el array para insertar varios
             $newArray = array();
             foreach (array_keys($request->item_construccion) as $fieldKey) {
                 foreach ($request->item_construccion[$fieldKey] as $key=>$value) {
                     $newArray[$key]["informe_valoracion_id"] = $id;
                     $newArray[$key][$fieldKey] = $value;                    
                 }
             } 
 
             DB::table('construcciones')->insert($newArray);
 
         }
     }
}
