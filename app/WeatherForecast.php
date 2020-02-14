<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\WeatherForecastApiService;

class WeatherForecast extends Model
{
    public static function callApi($city)
    {
        $params = [
            'q'     => $city,
            'appid' => env('OPENWEATHERMAP_APP_ID'),
            'units' => 'metric',
        ];

        $api = new WeatherForecastApiService();
        $response = $api->send($params);

        return $api->parse($response);
    }
}
