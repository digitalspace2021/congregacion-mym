<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ciudades extends Model
{
    protected $table = "ciudades";

    protected $primaryKey = "id";

    protected $fillable = ['country_code','name'];
}
