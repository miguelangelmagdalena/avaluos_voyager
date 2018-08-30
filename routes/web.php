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
/*
Route::get('/home', 'HomeController@index')->name('home');
*/
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



