<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Sacerdote;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\SacerdotesExport;
use Maatwebsite\Excel\Facades\Excel;

class SacerdoteController extends Controller
{
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();

	}
    public function crear()
    {
    	return view('sacerdotes/crear',['casas' => $this->casas]);
    }
    public function guardar(Request $request)
    {
    	$request->validate([
    		'nombre' => 'required',
    		'cedula' => 'required',
    		'nacionalidad' => 'required',
			'fecha_nacimiento' => 'required',
			'casa' => 'required',
	    	'fecha_ingreso_convento' => 'required',
    	]);
		Sacerdote::create($request->all());
		return redirect('admin/sacerdote/listar')->with('Mensaje', 'Sacerdote Creado con exito');
		
	}
	
	public function editar($id)
	{
		$sacerdote = Sacerdote::where('id',$id)->first();
	    return view('sacerdotes/editar',['sacerdote' => $sacerdote,'casas' => $this->casas]);
	}

	public function actualizar(Request $request)
	{
		
		$request->validate([
    		'nombre' => 'required',
    		'cedula' => 'required',
    		'nacionalidad' => 'required',
			'fecha_nacimiento' => 'required',
			'casa' => 'required',
	    	'fecha_ingreso_convento' => 'required',
		]);
		$id = $request['id'];
		unset($request['id']);
		unset($request['_token']);
		unset($request['created_at']);
		Sacerdote::where('id',$id)->update($request->all());
		return redirect('admin/sacerdote/listar')->with('Mensaje', 'Sacerdote Actualizado con exito');
	}

    public function listar()
    {
        $sacerdotes = Sacerdote::all();
        return view('sacerdotes/listar',['sacerdotes' => $sacerdotes]);
	}
	
	public function eliminar($id)
	{
		$sacerdote = Sacerdote::find($id);
		$sacerdote->delete();
		return redirect('admin/sacerdote/listar')->with('Mensaje', 'Sacerdote Eliminado con exito');

	}
	public function export(){
        return Excel::download(new SacerdotesExport, 'Sacerdotes.xlsx');
    }


}

