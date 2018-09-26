<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class InformesValoracione extends Model
{
    public function bien(){
        return $this->hasOne('App\Biene','informe_valoracion_id','id');
    }
    public function edificacion(){
        return $this->hasOne('App\Edificacione','informe_valoracion_id','id');
    }
    public function componentes(){
        return $this->hasMany('App\ObraComponente','informe_valoracion_id','id');
    }
    public function construcciones(){
        return $this->hasMany('App\Construccione','informe_valoracion_id','id');
    }
    public function relationships(int $relation){
        switch ($relation) {
            case 0:
                return $this->hasOne('App\Biene','informe_valoracion_id','id');
            break;
            case 1:
                return $this->hasOne('App\Edificacione','informe_valoracion_id','id');
            break;
            case 2:
                return $this->hasMany('App\ObraComponente','informe_valoracion_id','id');
            break;
            case 3:
                return $this->hasMany('App\Construccione','informe_valoracion_id','id');
            break;
            default:
                return null;
        }
    }
}
