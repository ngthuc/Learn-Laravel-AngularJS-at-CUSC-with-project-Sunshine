<?php
// use App\ChuDe;
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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'admin'], function(){

  Route::resource('chude','ChuDeController');
  Route::resource('loai','LoaiController');
  Route::resource('sanpham','SanPhamController');

});

Route::group(['prefix' => 'site'], function(){

  //....

});

Route::get('/f', function () {
    return view('frontend.index');
});
