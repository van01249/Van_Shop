<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wards extends Model
{
    public $timetamps = false;
    protected $fillable = [
        'name', 'type', 'maqh'
    ];

    protected $primaryKey = 'xaid';
    protected $table = 'devvn_xaphuongthitran';

    public function phi(){
        return $this->hasMany('App\PhiShip', 'xaid', 'xaid');
    }
}
