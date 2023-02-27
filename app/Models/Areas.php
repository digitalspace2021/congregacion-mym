<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Areas extends Model
{
    
    protected $table = 'areas';

    protected $keyTipe = 'integer';

    protected $fillable = ['descripcion', 'created_at', 'updated_at'];

    public function Contenidos()
    {
        return $this->hasMany(Contenido::class);
    }
    
}
