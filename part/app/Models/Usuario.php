<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\Rol;
use Session;

class Usuario extends Authenticatable
{
    protected $remenber_token = false;
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'usuario';

    /**
     * The "type" of the auto-incrementing ID.
     * 
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['usuario', 'password', 'nombre','rol','estado','created_at', 'updated_at'];

    protected $guarded = ['id'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function roles()
    {
        return $this->belongsTo('App\Models\Rol','rol');
    }
 
    public function setSession($roles)
    {
        if (count($roles) == 1) {
            Session::put(
                [
                    'rol_id' => $roles[0]['id'],
                    'rol_nombre' => $roles[0]['nombre'],
                    'usuario' => $this->usuario,
                    'usuario_id' => $this->id,
                    'nombre_usuario' => $this->nombre
                ]
            );
        }
    }

}
