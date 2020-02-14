<?php

namespace App\Services;

use Illuminate\Database\Eloquent\Model;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;

class SearchLocationApiService extends Model implements ApiServiceInterface
{
    const ENDPOINT = 'https://api.foursquare.com/v2/venues/search';

    public function send($params)
    {
        $client = new Client();

        return $client->get(self::ENDPOINT, ['query' => $params]);
    }
}
