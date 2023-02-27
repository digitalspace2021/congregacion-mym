<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UsuarioExterno extends Model
{
    protected $table = "usuario_externo";
    protected $primaryKey = "id";
    protected $fillable = ['nombre','cedula'];
}
