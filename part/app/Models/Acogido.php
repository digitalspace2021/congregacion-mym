<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Acogido extends Model
{
    protected $table = "acogidos";
    protected $primaryKey = "id";
    protected $fillable = ['nombre','genero','edad','fecha_ingreso','fecha_retiro','pais','casa', 'motivo','observaciones'];
}
