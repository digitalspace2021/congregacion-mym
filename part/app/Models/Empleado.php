<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    protected $table = "empleados";
    protected $primaryKey = "id";
    protected $fillable = ['cedula_ciudadania','nombre','genero','direccion',
    	'telefono','estado_civil','num_hijos','actividad_que_realiza','salario',
    	'pais','casa','fecha_ingreso','fecha_retiro','motivo'];
}
