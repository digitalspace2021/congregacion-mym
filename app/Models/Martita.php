<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Martita extends Model
{
    public $table = 'martitas';
    public $primaryKey = 'id';
    public $fillable = ['id','nombre','cedula','nacionalidad','lugar_origen','fecha_nacimiento','estudios_realizados','actividad',
    'observaciones','casa','direccion','telefono','numero_hijos','fecha_ingreso','fecha_retiro'];
    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }

}
