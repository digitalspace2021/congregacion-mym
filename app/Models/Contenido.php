<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contenido extends Model
{
    protected $table = 'contenido_areas';

    protected $keyTipe = 'integer';

    protected $fillable = ['descripcion', 'area', 'created_at', 'updated_at'];

    public function area()
    {
        return $this->belongsTo(Areas::class);
    }
}
