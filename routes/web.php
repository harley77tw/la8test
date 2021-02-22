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
   // dd(123);
            session_start();
            echo "111";
            $ary=Session::get('sid');
        print_r($ary);
        echo "<br>";
        
        $ary=array();
        
      //      $docs = array_push($session, $corporate_docs); 
    //Session::put($name, $docs); 
    
    
        $docs = array_push($ary,"aaa");
        $docs = array_push($ary,"bbb");
        $docs = array_push($ary,"ccc");
        Session::put('sid',$docs);
            echo "222";
        print_r(Session::get('sid'));
        
        
        
        
       
        echo "<hr>";
        $_SESSION["xid"]=array();
        print_r($_SESSION["xid"]);
        echo "<br>";
       // $_SESSION["xid"]=$ary;     
        array_push($_SESSION["xid"],"xxx");
        array_push($_SESSION["xid"],"yyy");
        array_push($_SESSION["xid"],"zzz");
        print_r($_SESSION["xid"]);
             
});
Route::get('/xxx', function () {
     session_start();
     echo "111";
   print_r(Session::get('sid'));
      echo "<br>";
  
      echo "222";
   print_r($_SESSION["xid"]);
             
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
//Route::get('/get-api-document',[ArticlesController::class], 'index');
Route::get('/get-api-document', [APIDocsController::class, 'getJSON']);
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