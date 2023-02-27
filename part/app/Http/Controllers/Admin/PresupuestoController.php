<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Presupuesto;
use App\Models\Casa;

class PresupuestoController extends Controller
{
    public function crear($id)
    {
        $casa = Casa::where('id',$id)->first();
        return view('documentos/presupuesto/crear',['id_casa' => $id,'casa' => $casa]);
    }

    public function guardar(Request $request)
    {
        $presupuesto = Presupuesto::where('id',$request['casa'])->Where('ano',$request['ano'])->first();
        if($presupuesto){
            return redirect('admin/documento/presupuesto/listar')->with('Mensaje','Presupuesto de ese ano ya ha sido creado');
        }
        $request->validate([
            'ano' => 'required',
            'documento' => 'required|max:1024'
        ]);
        
        $pp = Presupuesto::create([
            'casa' => $request['casa'],
            'documento' => $request['documento']->getClientOriginalName(),
            'ano' => $request['ano'],
            'usuario' => \Auth::user()->nombre
        ]);
        

        $request->documento->storeAs('documentos', $request->documento->getClientOriginalName());

        return redirect('admin/documento/presupuesto/listar')->with('Mensaje','Presupuesto Creado Correctamente');
    }

    public function listar()
    {
        $presupuestos = Presupuesto::all();
        return view('documentos/presupuesto/listar',['presupuestos' => $presupuestos]);
    }
    public function editar($id)
    {
        $presupuesto = Presupuesto::where('id',$id)->first();
        $casa = Casa::where('id',$presupuesto->casa)->first();
        return view('documentos/presupuesto/editar',['presupuesto' => $presupuesto,'casa' => $casa]);
    }
    public function Actualizar(Request $request)
    {
        $request->validate([
            'ano' => 'required',
        ]);
        
        $presupuesto = Presupuesto::find($request->id);
        $presupuesto->ano = $request['ano'];
        $presupuesto->usuario = \Auth::user()->nombre;
        if($request['documento']){
             $request->validate([
                'documento' => 'max:1024'
        ]);
            $presupuesto->documento = $request['documento']->getClientOriginalName();
            $request->documento->storeAs('documentos', $request->documento->getClientOriginalName());

        }
        $presupuesto->save();
        return redirect('admin/documento/presupuesto/listar')->with('Mensaje','Presupuesto Editado Correctamente');
    }

    public function eliminar($id)
    {
        $presupuesto = Presupuesto::find($id);
        $presupuesto->delete();
        return redirect('admin/documento/presupuesto/listar')->with('Mensaje','Presupuesto Borrado Correctamente');

    }
}