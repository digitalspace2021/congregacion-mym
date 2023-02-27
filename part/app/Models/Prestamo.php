<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prestamo extends Model
{
    protected $table = "libro_prestamo";
    protected $primaryKey = "id";
    protected $fillable = ['usuario_id','libro_id','fecha_prestamo','prestado_a','estado','fecha_devolucion'];

    public function libro()
    {
        return $this->belongsTo('App\Models\Libro','libro_id');
    }
    public function usuario()
    {
        return $this->belongsTo('App\Models\Usuario','usuario_id');
    }
}
