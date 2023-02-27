<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $rol_id
 * @property integer $menu_id
 * @property Menu $menu
 * @property Rol $rol
 */
class MenuRol extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'menu_rol';

    /**
     * @var array
     */
    protected $fillable = ['rol_id', 'menu_id'];

    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function menu()
    {
        return $this->belongsTo('App\Models\Menu');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function rol()
    {
        return $this->belongsTo('App\Models\Rol');
    }
}
