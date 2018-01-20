<?php

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
use App\Chude;

// Route::get('/', function () {
//     return view('welcome');
// });
/*
Route::get('laydanhsachchude', function(){
	//$dsChuDe = Chude::all();
	$dsChuDe = DB::table('cusc_chude')->get();
	return json_encode($dsChuDe);
});
*/

//Route::get('laydanhsach/het', 'ChuDeController@LayHetDanhSach');
//Route::get('laydanhsach/laydongdautien', 'ChuDeController@LayDongDauTien');

Route::get('/', 'FrontendController@index');
Route::get('/checkout', 'FrontendController@checkout');
Route::group(['prefix' => 'admin'], function() {

	Route::resource('chude', 'ChuDeController');
	Route::resource('loai', 'LoaiController');
	Route::resource('sanpham', 'SanPhamController');

});

// Route::get('/', function() {
// 	return view('frontend.index');
// });
