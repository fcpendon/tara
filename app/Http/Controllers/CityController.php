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

    public function forecast(Country $country, City $city)
    {
        return $city->getWeatherForecast();
    }

    public function search(Country $country, City $city)
    {
        $params = request()->validate([
            'name'   => 'required|string',
            'radius' => 'required|integer|between:1,100000',
            'limit'  => 'required|integer|between:1,50',
        ]);

        return $city->search($params);
    }
}
