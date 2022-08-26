<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    public $timetamps = false;
    protected $fillable = [
        'name', 'type', 'matp'
    ];

    protected $primaryKey = 'maqh';
    protected $table = 'devvn_quanhuyen';

    public function phi(){
        return $this->hasMany('App\PhiShip', 'maqh', 'maqh');
    }
}
