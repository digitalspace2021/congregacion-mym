<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sacerdote extends Model
{
    protected $table = "sacerdotes";
    protected $primaryKey = "id";
    protected $fillable = ['nombre','cedula','nacionalidad','lugar_origen','fecha_nacimiento','casa',
    'fecha_ingreso_convento','estudios_realizados','actividad_que_realiza',
    'fecha_retiro_convento','observaciones'];

    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }
}
