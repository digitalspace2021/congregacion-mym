<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Laico extends Model
{
    public $table = 'laicos';
    public $primaryKey = 'id';
    public $fillable = ['id','nombre','cedula','nacionalidad','lugar_origen','fecha_nacimiento','casa','estudios_realizados','actividad',
    'observaciones','genero','direccion','telefono','estado_civil','numero_hijos','edad','fecha_ingreso','fecha_retiro'];

    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }
}
