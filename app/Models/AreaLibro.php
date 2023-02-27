<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AreaLibro extends Model
{
    
    protected $table = 'areas_libros';

    protected $primaryKey = 'id';

    protected $fillable = ['area'];

    
}
