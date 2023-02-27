<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EquipoHermana extends Model
{
    public $table = 'equiposhermanas';
    public $primaryKey = 'id';
    public $fillable = ['nombre'];

}
