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
                $next_element = head(head($avaluo_contenido));
            }else{
                
                //Buscamos el siguiente
                $bandera = false;
                foreach ($avaluo_contenido as $row) {
                    if($bandera){
                        $next_element = $row;
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
                    //return redirect()->route('voyager.solicitudes.create');
                    //return redirect('/admin');
                }
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }
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

}
