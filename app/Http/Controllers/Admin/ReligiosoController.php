<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Religioso;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\ReligiososExport;
use Maatwebsite\Excel\Facades\Excel;

class ReligiosoController extends Controller
{
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();

	}
    public function crear()
    {
    	return view('religiosos/crear',['casas' => $this->casas]);
    }
    public function guardar(Request $request)
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
	    	'fecha_ingreso_convento' => 'required',
    	]);
		Religioso::create($request->all());
		return redirect('admin/religioso/listar')->with('Mensaje', 'Religioso Creado con exito');
		
	}
	
	public function editar($id)
	{
		$religioso = Religioso::where('id',$id)->first();
	    return view('religiosos/editar',['religioso' => $religioso, 'casas' => $this->casas]);
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
	    	'fecha_ingreso_convento' => 'required',
		]);
		$id = $request['id'];
		unset($request['id']);
		unset($request['_token']);
		unset($request['created_at']);
		Religioso::where('id',$id)->update($request->all());
		return redirect('admin/religioso/listar')->with('Mensaje', 'Religioso Actualizado con exito');
	}

    public function listar()
    {
        $religiosos = Religioso::all();
        return view('religiosos/listar',['religiosos' => $religiosos]);
	}
	
	public function eliminar($id)
	{
		$religioso = Religioso::find($id);
		$religioso->delete();
		return redirect('admin/religioso/listar')->with('Mensaje', 'Religioso Eliminado con exito');

	}
	public function export(){
        return Excel::download(new ReligiososExport, 'Religiosos.xlsx');
    }


}

