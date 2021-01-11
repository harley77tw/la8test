<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
//use App\Http\Controllers\ArticlesController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Http\Controllers\ArticlesController;

Route::resource('articles', ArticlesController::class);

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//Route::resource(name:'articles',controller:ArticleController::class);
//Route::resource('articles', 'App\Http\Controllers\ArticlesController');
//Route::get('/home', [HomeController::class, 'index'])->name('home');
