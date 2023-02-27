<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Martita;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\MartitasExport;
use Maatwebsite\Excel\Facades\Excel;

class MartitaController extends Controller
{
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();

	}
    public function crear()
    {
    	return view('martitas/crear',['casas' => $this->casas]);
    }
    public function guardar(Request $request)
    {
    	$request->validate([
            'nombre' => 'required',
            'cedula' => 'required',
            'nacionalidad' => 'required',
			'fecha_nacimiento' => 'required',
			'casa' => 'required',
            'direccion' => 'required',
            'telefono' => 'required',
            'fecha_ingreso' => 'required',
    	]);
		Martita::create($request->all());
		return redirect('admin/martita/listar')->with('Mensaje', 'Martita Creado con exito');
		
	}
	
	public function editar($id)
	{
		$martita = Martita::where('id',$id)->first();
	    return view('martitas/editar',['martita' => $martita,'casas' => $this->casas]);
	}

	public function actualizar(Request $request)
	{
		
		$request->validate([
    		'nombre' => 'required',
    		'cedula' => 'required',
			'nacionalidad' => 'required',
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
		Martita::where('id',$id)->update($request->all());
		return redirect('admin/martita/listar')->with('Mensaje', 'Martita Actualizada con exito');
	}

    public function listar()
    {
        $martitas = Martita::all();
        return view('martitas/listar',['martitas' => $martitas]);
	}
	
	public function eliminar($id)
	{
		$martita = Martita::find($id);
		$martita->delete();
		return redirect('admin/martita/listar')->with('Mensaje', 'Martita Eliminado con exito');

	}
	public function export(){
        return Excel::download(new MartitasExport, 'Martitas.xlsx');
    }


}

