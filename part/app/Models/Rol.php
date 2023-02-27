<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property string $nombre
 * @property string $created_at
 * @property string $updated_at
 * @property Menu[] $menus
 * @property Permiso[] $permisos
 * @property UsuarioRol[] $usuarioRols
 */
class Rol extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'rol';

    /**
     * The "type" of the auto-incrementing ID.
     * 
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['nombre', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function menu()
    {
        return $this->belongsToMany('App\Models\Menu');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function permiso()
    {
        return $this->belongsToMany('App\Models\Permiso');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function usuarioRol()
    {
        return $this->hasMany('App\Models\UsuarioRol');
    }
}
