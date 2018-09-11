<?php

namespace App\Http\Controllers\Voyager;

use App\Avaluo;
use App\Contenido;
use App\AvaluoContenido;
use App\Solicitude;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;

class GeneralController extends VoyagerBreadController
{


    public function next_content(Request $request)
    {  //dd($request->all());  
        
        //Obtenemos los parametros del request
        $actual_slug = $request->slug;
        
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

            /*dd($avaluo_contenido);
            $siguiente_slug = null;
            //Buscamos el slug siguiente
            foreach ($avaluo_contenido as $row) {
                $siguiente_slug = $row->slug ;
            }*/

            //Buscamos las relaciones
            $dataContent = $avaluo->relationships(1)->get();
            
            $data_id = -1;
            foreach ($dataContent as $row) {
                $data_id = $row->id ;
            }

            if($data_id != -1){
                return redirect('/admin/solicitudes/'.$data_id.'/edit');
            }else{
                return redirect()->route('voyager.solicitudes.create', ['avaluo_id' =>  $avaluo_id]);
                //return redirect()->route('voyager.solicitudes.create');
                //return redirect('/admin');
            }
        }else{
            return redirect()->back();
        }
    }
    public function previous_content(Request $request){
        return redirect('/admin');
    }

}
