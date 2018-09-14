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

Route::get('/', function () {
    //return view('welcome');
   return redirect('/admin');
});

Route::get('/home', function () {
    //return view('welcome');
   return redirect('/admin');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

/*
|--------------------------------------------------------------------------
| More Auth routes
|--------------------------------------------------------------------------
|
| Auth routes Ajax
|
*/
Route::post('/register/fetchAddress', 'Auth\RegisterController@fetchAddress')->name('register.fetchAddress');

Route::post('/user_edit/fetchAddress', 'Voyager\userController@fetchAddress')->name('user_edit.fetchAddress');

/*
|--------------------------------------------------------------------------
| Solicicitud
|--------------------------------------------------------------------------
|
| Consultar solicitantes registrados con ajax
|
*/
Route::post('/solicitud/fetchOldSolicitantes', 'Voyager\SolicitudController@fetchOldSolicitantes')->name('solicitud.fetchOldSolicitantes');


/*
|--------------------------------------------------------------------------
| Rutas para navegacion entre secciones del avaluo
|--------------------------------------------------------------------------
|
| Secciones
|
*/

Route::get('/next_content', 'Voyager\GeneralController@next_content');

Route::get('/previous_content', 'Voyager\GeneralController@previous_content');

Route::get('pdf', function(){
    $pdf = App::make('dompdf.wrapper');
    $pdf->loadHTML('<h1>Test</h1>');
    return $pdf->stream();
});