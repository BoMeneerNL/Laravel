<?php

use App\Http\Controllers\AnimeController;
use Illuminate\Support\Facades\Route;

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

Route::get('/','\App\Http\Controllers\AnimeController@index');
Route::get('/anime/{animeid}/delete',function ($animeid){
    AnimeController::destroy($animeid);
});
Route::get('/edit/{animeid}',function ($animeid){
    return AnimeController::edit($animeid);
});
Route::get('/test','\App\Http\Controllers\AnimeController@index');
Route::get("/cedat/{animeid}/{name}/{nameEN}/{nameJPS}/{dates}",function($animeid,$name,$nameEN,$nameJPS,$dates){
    AnimeController::cedit($animeid,$name,$nameEN,$nameJPS,$dates);
});
Route::get("/ccdat/{name}/{nameEN}/{nameJPS}/{dates}",function($name,$nameEN,$nameJPS,$dates){
    AnimeController::ccreate($name,$nameEN,$nameJPS,$dates);
});
Route::get("/create",function(){
    return AnimeController::create();
});
