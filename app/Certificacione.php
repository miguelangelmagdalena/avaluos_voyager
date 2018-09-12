<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Certificacione extends Model
{
    public function avaluo(){
        return $this->belongsTo('App\Avaluo','avaluo_id','id');
    }
}
