<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Oblato;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\OblatosExport;
use Maatwebsite\Excel\Facades\Excel;

class OblatoController extends Controller
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
    	return view('oblatos/crear',['casas' => $this->casas,'estados' => $estados]);
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
            'fecha_ingreso' => 'required',
    	]);
		Oblato::create($request->all());
		return redirect('admin/oblato/listar')->with('Mensaje', 'Oblato Creado con exito');
		
	}
	
	public function editar($id)
	{
		$oblato = Oblato::where('id',$id)->first();
		$estados = EstadoCivil::all();
	    return view('oblatos/editar',['oblato' => $oblato,'casas' => $this->casas,'estados' => $estados]);
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
		Oblato::where('id',$id)->update($request->all());
		return redirect('admin/oblato/listar')->with('Mensaje', 'Oblato Actualizado con exito');
	}

    public function listar()
    {
        $oblatos = Oblato::all();
        return view('oblatos/listar',['oblatos' => $oblatos]);
	}
	
	public function eliminar($id)
	{
		$oblato = Oblato::find($id);
		$oblato->delete();
		return redirect('admin/oblato/listar')->with('Mensaje', 'Oblato Eliminado con exito');

	}
	public function export(){
        return Excel::download(new OblatosExport, 'Oblatos.xlsx');
    }


}

