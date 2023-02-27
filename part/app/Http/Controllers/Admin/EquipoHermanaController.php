<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\EquipoHermana;
use Illuminate\Http\Request;

class EquipoHermanaController extends Controller
{
    public function listar()
    {
        $equipos = EquipoHermana::all();
        return view('equipos/listar',compact('equipos'));
    }
    public function crear()
    {
        return view('equipos/crear');
    }
    public function guardar(Request $request)
    {
        EquipoHermana::create($request->all());
        return redirect('admin/equipo/listar')->with('message','Equipo Creado Correctamente');
    }
    public function editar($id)
    {
        $equipos = EquipoHermana::where('id',$id)->first();
        return view('equipos/editar',compact('equipos'));
    }
    public function actualizar(Request $request)
    {
        unset($request['_token']);
        $equipos = EquipoHermana::where('id',$request->id)->update($request->all());
        return redirect('admin/equipo/listar')->with('message','Equipo Editado Correctamente');
    }
    public function eliminar($id)
    {
        EquipoHermana::where('id',$id)->delete();
        return redirect('admin/equipo/listar')->with('message','Equipo Eliminado Correctamente');

    }
}

