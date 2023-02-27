<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Renovacion;
use App\Models\Hermana;
class RenovacionController extends Controller
{
	public function index(){
        $hermanas = Hermana::all();
        return view('renovaciones/index',['hermanas' => $hermanas]);
    }
    public function crear($id_hermana)
    {
        $hermana = Hermana::where('id',$id_hermana)->first();
        return view('renovaciones/crear',['id_hermana' => $id_hermana,'hermana' => $hermana]);
    }
    public function guardar(Request $request)
    {
		$fecha = date('d-m-Y');
		$request['fechas'] = $fecha;
        $request->validate([
    		'num_renovacion' => 'required',
    		'fecha' => 'required|before_or_equal:fechas',
    	]);
        Renovacion::create($request->all());
		return redirect('admin/hermana/renovacion/listar')->with('Mensaje', 'Renovacion Creada con exito');
    }
	
	public function editar($id)
	{
		$renovacion = Renovacion::where('id',$id)->first();
		$hermana = Hermana::where('id',$renovacion->id_hermana)->first();
	   	return view('renovaciones/editar',['renovacion' => $renovacion,'hermana' => $hermana]);
	}

	public function actualizar(Request $request)
	{
		$fecha = date('d-m-Y');
		$request['fechas'] = $fecha;
		$request->validate([
    		'num_renovacion' => 'required',
    		'fecha' => 'required|before_or_equal:fechas',
    	]);
		$renovacion = Renovacion::find($request['id_renovacion']);
        $renovacion->num_renovacion = $request['num_renovacion'];
        $renovacion->fecha = $request['fecha'];
        $renovacion->save();
		return redirect('admin/hermana/renovacion/listar')->with('Mensaje', 'Renovacion Actualizada con exito');
	}

    public function listar()
    {
        $renovaciones = Renovacion::all();
        return view('renovaciones/listar',['renovaciones' => $renovaciones]);
	}
	
	public function eliminar($id)
	{
		$renovacion = Renovacion::find($id);
		$renovacion->delete();
		return redirect('admin/hermana/renovacion/listar')->with('Mensaje', 'Renovacion Actualizada con exito');

	}
}
