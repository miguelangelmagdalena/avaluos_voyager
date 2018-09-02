<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Municipio extends Model
{

    public function user(){
        return $this->hasMany('App\User', 'user_municipio_fk', 'id_municipio');
    }
    public function parroquia(){
        return $this->hasMany('App\Parroquia', 'municipio_parroquia_fk', 'id_municipio');
    }
    public function state(){
        return $this->belongsTo('App\Estado', 'estado_municipio_fk', 'id_estado');
    }
    
}
