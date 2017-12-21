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

// Route::get('laydanhsachchude',function(){
//   $dsChuDe = ChuDe::all();
//   return json_encode($dsChuDe);
// });

Route::resource('chude','ChuDe2Controller');
