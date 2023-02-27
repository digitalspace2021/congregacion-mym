<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Renovacion extends Model
{
    protected $table = "renovaciones";
    protected $primaryKey = "id";
    protected $fillable = ['num_renovacion','fecha','id_hermana'];

    public function hermana()
    {
        return $this->belongsTo('App\Models\Hermana','id_hermana');
    }
}
