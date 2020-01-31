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

use Illuminate\Http\Request;
 
Route::get('/', function () { return view('scheduler'); });

Route::get('utenti/orari/{id}', 'UtentiController@stampaOrarioGen');
Route::get('studenti/{id}/calendari', 'StudentiController@stampaCalendari');
Route::get('studenti/{id}/corsi/', 'StudentiController@stampaListaCorsi');
Route::get('docenti', 'StudentiController@stampaDocenti');
Route::post('studenti/{id}/eventi/add', 'StudentiController@addEvento');
Route::patch('studenti/{id}/eventi/var', 'StudentiController@varEvento');
Route::delete('studenti/{id}/eventi/delete', 'StudentiController@deleteEventi');
Route::get('amministratori/{id}/lezioni', 'AmministratoriController@stampaLezione');
Route::post('studenti/{id}/lezioni/add', 'AmministratoriController@addLezione');
Route::patch('studenti/{id}/lezioni/var', 'AmministratoriController@varLezione');



