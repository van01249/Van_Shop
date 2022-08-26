<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    public $timetamps = false;
    protected $fillable = [
        'name', 'type'
    ];

    protected $primaryKey = 'matp';
    protected $table = 'devvn_tinhthanhpho';

    public function phi(){
        return $this->hasMany('App\PhiShip', 'matp', 'matp');
    }
}
