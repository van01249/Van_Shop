<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'comment', 'comment_name', 'comment_date', 'id_product'
    ];
    protected $productKey = 'id';
    protected $table = 'comment';

    public function product(){
        return $this->belongsTo('App\Product', 'id_product');
    }
}
