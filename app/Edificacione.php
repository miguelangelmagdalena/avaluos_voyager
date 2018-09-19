<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Edificacione extends Model
{
    public function InformeValoracion(){
        return $this->belongsTo('App\InformesValoracione','informe_valoracion_id','id');
    }
}
