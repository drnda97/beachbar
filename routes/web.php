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
//classic way without custom controller
// Route::get('/', function () {
//     return view('user/welcome');
// });

Route::get('/', 'UsersController@index');
Route::get('/menu', 'UsersController@menu');
Route::get('/contact', 'UsersController@contact');
Route::get('/hoursandlocation', 'UsersController@hoursandlocation');
Route::get('/feed', 'UsersController@feed');