<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PhiShip extends Model
{
    protected $table = "phi_ship";

    public function city(){
        return $this->belongsTo('App\City', 'matp');
    }

    public function province(){
        return $this->belongsTo('App\Province', 'maqh');
    }

    public function ward(){
        return $this->belongsTo('App\Wards', 'xaid');
    }
}
