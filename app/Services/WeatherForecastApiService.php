<?php

namespace App\Services;

use Illuminate\Database\Eloquent\Model;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;

class WeatherForecastApiService extends Model implements ApiServiceInterface
{
    const ENDPOINT = 'http://api.openweathermap.org/data/2.5/forecast';

    public function send($params)
    {
        $client = new Client();

        return $client->get(self::ENDPOINT, ['query' => $params]);
    }

    public function parse($data)
    {
    	$contents = json_decode($data->getBody()->getContents());
    	$items = $contents->list;
    	$result = [];

    	foreach ($items as $i=>$item)
    	{
    		// only get every 8th entry (1 forecast per day)
    		if ($i%8 ===  0) {
	    		$result[] = [
	    			'date'     => date('Y-m-d', $item->dt),
	    			'weather'  => $item->weather[0]->main,
                    'icon'     => $item->weather[0]->icon,
                    'temp_max' => $item->main->temp_max,
	    			'temp'     => $item->main->temp,
                    'temp_min' => $item->main->temp_min,
	    		];
	    	}
    	}

    	return $result;
    }
}
