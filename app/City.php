<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    public function getRouteKeyName()
    {
        return 'name';
    }

    public function country()
    {
        return $this->belongsTo('App\Country');
    }

    public function search($params)
    {
        $params['city'] = $this->name;

        return SearchLocation::callApi($params);
    }

    public function getWeatherForecast()
    {
        return WeatherForecast::callApi($this->name);
    }
}
