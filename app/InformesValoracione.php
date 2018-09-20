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
    public function construcciones(){
        return $this->hasMany('App\Construccione','informe_valoracion_id','id');
    }
}
