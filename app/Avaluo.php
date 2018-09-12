<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Avaluo extends Model
{  
    public function contenidos(){
        return $this->belongsToMany(Contenido::Class);
    }
    public function solicitud(){
        return $this->hasOne('App\Solicitude','avaluo_id','id');
    }
    public function certificacion(){
        return $this->hasOne('App\Certificacione','avaluo_id','id');
    }
    //Guarda todas las relaciones con contenido (cada vez que se agrege contenido se debe agregar un modelo relacionado aqui para mantener la navegabilidad)
    public function relationships(int $relation){
        switch ($relation) {
            case 1:
                return $this->hasOne('App\Solicitude','avaluo_id','id');
                break;
            case 3:
                return $this->hasOne('App\Certificacione','avaluo_id','id');
                break;
            default:

                return null;
        }
        /*
        if($relation == 1){
            return $this->hasOne('App\Solicitude','avaluo_id','id');
        }else{
            return null;
        }*/
        
    }
}
