<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Solicitante extends Model
{
    public function solicitudes(){
        return $this->hasMany('App\Solicitude','solicitante_id','id');
    }
}
