<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contenido extends Model
{
    public function avaluos(){
        return $this->belongsToMany(Avaluo::Class);
    }
}
