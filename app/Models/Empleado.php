<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    protected $table = "empleados";
    protected $primaryKey = "id";
    protected $fillable = ['cedula_ciudadania','nombre','nacionalidad','fecha_nacimiento','genero','direccion',
    	'telefono','estado_civil','num_hijos','actividad_que_realiza','salario',
        'casa','fecha_ingreso','fecha_retiro','observaciones','profesion','cargo'];
        
    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }
}
