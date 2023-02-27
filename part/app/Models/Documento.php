<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
    protected $table = "documentos";
    protected $primarekey = "id";
    protected $fillable = ['documento','tipo_documento','hermana_id','empleado_id','acogido_id','casa_id','usuario'];

    public function hermanas()
    {
       return $this->belongsTo('App\Models\Hermana','hermana_id');
    }
    public function empleados()
    {
       return $this->belongsTo('App\Models\Empleado','empleado_id');
    }
    public function acogidos()
    {
       return $this->belongsTo('App\Models\Acogido','acogido_id');
    }
    public function casas()
    {
       return $this->belongsTo('App\Models\Casa','casa_id');
    }
}
