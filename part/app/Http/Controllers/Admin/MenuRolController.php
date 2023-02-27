<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Rol;

class MenuRolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rols = Rol::orderBy('id')->pluck('nombre', 'id')->toArray();
        $menus = Menu::getMenu();
        $menusRols = Menu::with('roles')->get()->pluck('roles', 'id')->toArray(); 
        return view('admin.menu-rol.index',compact('rols', 'menus', 'menusRols'));

    }

    /** 
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->ajax()) {
            $menus = new Menu();
            if($request->input('estado') == 1) {
                $menus->find($request->input('menu_id'))->roles()->attach($request->input('rol_id'));
                return response()->json(['respuesta' => 'El Rol se asigno correctamente']);
            }else{
                $menus->find($request->input('menu_id'))->roles()->detach($request->input('rol_id'));
                return response()->json(['respuesta' => 'El Rol se elimino correctamente']);
            }
        }else{
            abort(404);
        }
    }
}
