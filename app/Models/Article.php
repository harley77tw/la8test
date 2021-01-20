<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
;
class Article extends Model
{
     public $table = "articles";
    use HasFactory;
    use SoftDeletes;
protected $fillable = ['title','content'];
}
