<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Estado extends Model
{
    public function user(){
        return $this->hasMany('App\User', 'user_state_fk', 'id_estado');
    }
    public function municipio(){
        return $this->hasMany('App\Municipio', 'estado_municipio_fk', 'id_estado');
    }
}
