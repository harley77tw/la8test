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
use App\Http\Controllers\APIDocsController;
//Route::resource('articles', ArticlesController::class);

Route::get('/', function () {
    dd(123);
});

Auth::routes();

//Route::resource(name:'articles',controller:ArticleController::class);
//Route::resource('articles', 'App\Http\Controllers\ArticlesController');
//Route::get('/home', [HomeController::class, 'index'])->name('home');
/*
Route::post('testmid', ['middleware' => ['OldMiddleware'], function () {    //
    echo "AV頁";
}]);
*/
/*
Route::post('testmid', function () {    //
    echo "AV頁";
})->middleware(['OldMiddleware']);
*/
Route::group(['middleware' => 'OldMiddleware'], function () {
    Route::post('gy', function () {    //
        echo "GY頁(post)";
    });
    Route::get('av', function () {    //
        echo "AV頁(get)";
    });
});
Route::get('/get-api-document',[ArticlesController::class], 'index');
//Route::get('/get-api-document', [APIDocsController::class, 'getJSON']);
//Route::get('/get-api-document','App\Http\Controllers\APIDocsController@getJSON')
/*
Route::get('/', ['middleware' => ['first', 'second'], function () {
    //
}]);
*/
/*
Route::get('/', function () {
}])->middleware(['first', 'second']);
*/