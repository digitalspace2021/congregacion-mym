<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hermana extends Model
{
    protected $table = "hermanas";
    protected $primaryKey = "id";
    protected $fillable = ['id_hermana','cedula_ciudadania','nombre','fecha_nacimiento','lugar_origen','nacionalidad','fecha_ingreso_convento',
    	'fecha_ingreso_aspirantado','fecha_ingreso_postulado','fecha_ingreso_noviciado',
    	'fecha_retiro_convento','primera_profesion','profesion_perpetua','convento_actual',
    	'actividad_que_realiza','equipo_hermanas_perteneciente',
		'observaciones','estudios_realizados'];
		
	public function casas()
	{
		return $this->belongsTo('App\Models\Casa','convento_actual');
	}
}
