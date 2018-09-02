<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','id_estado','id_municipio','id_parroquia',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function state(){
        return $this->belongsTo('App\Estado', 'user_state_fk', 'id_estado');
    }
    public function municipio(){
        return $this->hasMany('App\Municipio', 'user_municipio_fk', 'id_municipio');
    }
    public function parroquia(){
        return $this->hasMany('App\Parroquia', 'user_parroquia_fk', 'id_parroquia');
    }
}
