<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Paises extends Model
{
    protected $table = "paises";

    protected $primaryKey = "id";

    protected $fillable = ['code','name'];

    public function casas()

	{

		return $this->hasMany('App\Models\Casa');

	}
}
