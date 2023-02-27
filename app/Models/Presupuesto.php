<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Presupuesto extends Model
{
    protected $table = "presupuestos";
    protected $primaryKey = "id";
    protected $fillable = ['ano','documento','casa','usuario'];

    public function casas()
    {
        return $this->belongsTo('App\Models\Casa','casa');
    }
}
