<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    use HasFactory;
    /*
    public function book(){
        return $this->hasOne('Book');
    }
    */
    public function books(){
        return $this->hasMany('Book');
    }

    protected $fillable = ['title'];
}
