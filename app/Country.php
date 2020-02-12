<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public function getRouteKeyName()
    {
        return 'name';
    }

    public function cities()
    {
        return $this->hasMany('App\City');
    }
}
