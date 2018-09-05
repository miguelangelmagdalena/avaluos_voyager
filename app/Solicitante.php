<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Solicitante extends Model
{
    public function representante(){
        return $this->hasOne('App\Representante','solicitante_id','id');
    }
    public function solicitudes(){
        return $this->hasMany('App\Solicitude','solicitante_id','id');
    }
}
