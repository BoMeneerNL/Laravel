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
    return view('edit',['animeid'=>$animeid]);
});
Route::get('/test','\App\Http\Controllers\AnimeController@index');
