<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $fillabe=[
    'title',
    'description',
    'price',
    'available'    
    ];
    
    public function store(){
        return $this->belongsTo('Store');
    }
    
    //hasmany
    public function authors(){
        return $this->belongsToMany('Author');
    }        
}
