<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;
use App\City;

class CityController extends Controller
{
    public function info(Country $country, City $city)
    {
        return $city;
    }
}
