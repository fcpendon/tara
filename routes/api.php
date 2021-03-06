<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('api')->group(function () {
    Route::get('/countries', 'CountryController@all');
    Route::get('/{country}', 'CountryController@info');
    Route::get('/{country}/cities', 'CountryController@cities');
    Route::get('/{country}/{city}', 'CityController@info');
    Route::get('/{country}/{city}/forecast', 'CityController@forecast');
    Route::any('/{country}/{city}/search', 'CityController@search');
});
