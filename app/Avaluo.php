<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Avaluo extends Model
{  
    public function contenidos(){
        return $this->belongsToMany(Contenido::Class);
    }
    
}
