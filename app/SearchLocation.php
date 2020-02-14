<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\SearchLocationApiService;

class SearchLocation extends Model
{
    public static function callApi($params)
    {
        $params = [
            'client_id'     => env('FOURSQUARE_CLIENT_ID'),
            'client_secret' => env('FOURSQUARE_CLIENT_SECRET'),
            'near'          => $params['city'],
            'query'         => $params['name'],
            'radius'        => $params['radius'] * 1000,
            'limit'         => $params['limit'],
            'v'             => date('Ymd'),
        ];

        $api = new SearchLocationApiService();
        $response = $api->send($params);

        return $response;
    }
}
