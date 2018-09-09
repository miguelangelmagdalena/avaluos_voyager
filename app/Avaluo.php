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
}
