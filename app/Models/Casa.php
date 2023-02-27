<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Casa extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'casa';

    /**
     * The "type" of the auto-incrementing ID.
     * 
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['fecha_fundacion', 'nombre_casa', 'direccion_casa',
     'telefono_casa', 'pais', 'ciudad', 'nombre_encargado', 'obispo_pertenece',
     'primera_madre', 'primera_equipo_hermanas', 'nombre_madre_actual',
     'equipo_actual_hermanas', 'mision_que_realiza', 'created_at', 'updated_at'];

     public function paises()
     {
         return $this->belongsTo('App\Pais','pais');
     }

	public function ciudades()
	{
		return $this->belongsTo('App\Models\Ciudades','ciudad');
    }
    public function hermanas()
    {
        return $this->hasMany('App\Models\Hermana','convento_actual','id');
    }
    public function acogidos()
    {
        return $this->hasMany('App\Models\Acogido','casa','id');
    }
    public function empleados()
    {
        return $this->hasMany('App\Models\Empleado','casa','id');
    }
}
