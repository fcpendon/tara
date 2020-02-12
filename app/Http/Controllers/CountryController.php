<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;

class CountryController extends Controller
{
    public function all()
    {
        return Country::all();
    }

    public function cities(Country $country)
    {
        return $country->cities;
    }
}
