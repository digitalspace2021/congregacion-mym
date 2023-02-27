<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Laico;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\LaicosExport;
use Maatwebsite\Excel\Facades\Excel;

class LaicoController extends Controller
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
    	return view('laicos/crear',['casas' => $this->casas,'estados' => $estados]);
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
		Laico::create($request->all());
		return redirect('admin/laico/listar')->with('Mensaje', 'Laico Creado con exito');
		
	}
	
	public function editar($id)
	{
		$laico = Laico::where('id',$id)->first();
		$estados = EstadoCivil::all();
	    return view('laicos/editar',['laico' => $laico,'casas' => $this->casas,'estados' => $estados]);
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
		Laico::where('id',$id)->update($request->all());
		return redirect('admin/laico/listar')->with('Mensaje', 'Laico Actualizado con exito');
	}

    public function listar()
    {
        $laicos = Laico::all();
        return view('laicos/listar',['laicos' => $laicos]);
	}
	
	public function eliminar($id)
	{
		$laico = Laico::find($id);
		$laico->delete();
		return redirect('admin/laico/listar')->with('Mensaje', 'Laico Eliminado con exito');

	}
	public function export(){
        return Excel::download(new LaicosExport, 'Laicos.xlsx');
    }


}

