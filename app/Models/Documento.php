<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
    protected $table = "documentos";
    protected $primarekey = "id";
    protected $fillable = ['documento','tipo_documento','hermana_id','empleado_id','acogido_id','sacerdote_id','religioso_id','laico_id','martita_id','oblato_id','maria_id','otro_id','casa_id','usuario'];

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
    public function sacerdotes()
    {
       return $this->belongsTo('App\Models\Sacerdote','sacerdote_id');
    }
    public function religiosos()
    {
       return $this->belongsTo('App\Models\Religioso','religioso_id');
    }
    public function laicos()
    {
       return $this->belongsTo('App\Models\Laico','laico_id');
    }
    public function martitas()
    {
       return $this->belongsTo('App\Models\Martita','martita_id');
    }
    public function oblatos()
    {
       return $this->belongsTo('App\Models\Oblato','oblato_id');
    }
    public function marias()
    {
       return $this->belongsTo('App\Models\Maria','maria_id');
    }
    public function otros()
    {
       return $this->belongsTo('App\Models\Otro','otro_id');
    }
    public function casas()
    {
       return $this->belongsTo('App\Models\Casa','casa_id');
    }
    public function tipo_doc()
    {
       return $this->belongsTo('App\Models\TipoDocumento','tipo_documento');
    }
}


