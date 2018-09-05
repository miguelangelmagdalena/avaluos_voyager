<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Solicitude extends Model
{
    public function solicitante(){
        return $this->belongsTo('App\Solicitante','solicitante_id','id');
    }
}
