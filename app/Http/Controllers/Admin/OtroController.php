<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Otro;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\OtrosExport;
use Maatwebsite\Excel\Facades\Excel;

class OtroController extends Controller
{
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();

	}
    public function crear()
    {
		$estados = EstadoCivil::all();
    	return view('otros/crear',['casas' => $this->casas,'estados' => $estados]);
    }
    public function guardar(Request $request)
    {
    	$request->validate([
            'nombre' => 'required',
            'cedula' => 'required',
            'nacionalidad' => 'required',
			'fecha_nacimiento' => 'required',
			'casa' => 'required',
            'genero' => 'required',
            'direccion' => 'required',
            'telefono' => 'required',
            'estado_civil' => 'required',
            'fecha_ingreso' => 'required',
    	]);
		Otro::create($request->all());
		return redirect('admin/otro/listar')->with('Mensaje', 'Otro Creado con exito');
		
	}
	
	public function editar($id)
	{
		$otro = Otro::where('id',$id)->first();
		$estados = EstadoCivil::all();
	    return view('otros/editar',['otro' => $otro,'casas' => $this->casas,'estados' => $estados]);
	}

	public function actualizar(Request $request)
	{
		
		$request->validate([
    		'nombre' => 'required',
    		'cedula' => 'required',
			'nacionalidad' => 'required',
			'genero' => 'required',
			'direccion' => 'required',
			'telefono' => 'required',
			'fecha_nacimiento' => 'required',
			'casa' => 'required',
	    	'fecha_ingreso' => 'required',
		]);
		$id = $request['id'];
		unset($request['id']);
		unset($request['_token']);
		unset($request['created_at']);
		Otro::where('id',$id)->update($request->all());
		return redirect('admin/otro/listar')->with('Mensaje', 'Otro Actualizado con exito');
	}

    public function listar()
    {
        $otros = Otro::all();
        return view('otros/listar',['otros' => $otros,'casas' => $this->casas]);
	}
	
	public function eliminar($id)
	{
		$otro = Otro::find($id);
		$otro->delete();
		return redirect('admin/otro/listar')->with('Mensaje', 'Otro Eliminado con exito');

	}
	public function export(){
        return Excel::download(new OtrosExport, 'Otros.xlsx');
    }


}

