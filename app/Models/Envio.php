<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Envio extends Model
{
    protected $table = "envios";
    protected $primarekey = "id";
    protected $fillable = ['pais','ciudad','fecha','cargo','hermana_id'];
    public $timestamps = false;

    public function hermana()
    {
       return $this->belongsTo('App\Models\Hermana');
    }
    public function paises()
	{
		return $this->belongsTo('App\Pais','pais');
	}
	public function ciudades()
	{
		return $this->belongsTo('App\Ciudad','ciudad');
	}
}
