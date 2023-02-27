<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Inventarios extends Model
{
    protected $table = 'inventarios';

    protected $fillable = ['id_casa', 'tipo_inventario', 'id_area', 'id_contenido', 'cantidad',
                             'valor', 'tiene_factura', 'documento_soporte', 'fecha', 'created_at', 'updated_at'];
                             
        public function casas()
            {
                return $this->belongsTo('App\Models\Casa');
            }
        public function areas()
            {
                return $this->belongsTo('App\Models\Areas');
            }
        public function contenidos()
            {
                return $this->belongsTo('App\Models\Contenido');
            }
}
