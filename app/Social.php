<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Social extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'provider_user_id', 'provider_user_email', 'provider', 'user'
    ];

    protected $primaryKey = 'user_id';
    protected $table = 'social';
    public function user(){
        return $this->belongsTo('App\User', 'user', 'id');
    }
}
