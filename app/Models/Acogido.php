<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Acogido extends Model
{
    protected $table = "acogidos";
    protected $primaryKey = "id";
    protected $fillable = ['nombre','genero','fecha_nacimiento','edad','fecha_ingreso','fecha_retiro','pais','casa', 'motivo','observaciones'];
    
    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }
}
