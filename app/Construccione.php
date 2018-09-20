<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Construccione extends Model
{
    public function informesValoraciones(){
        return $this->belongsTo('App\InformesValoracione','informe_valoracion_id','id');
    }
}
