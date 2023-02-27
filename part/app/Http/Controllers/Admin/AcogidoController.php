<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Acogido;
use App\Models\Casa;
use App\Models\Rol;
use App\Models\Menu;
use App\Exports\AcogidosExport;
use Maatwebsite\Excel\Facades\Excel;

class AcogidoController extends Controller
{
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();

	}

    public function crear()
    {
    	$casas = Casa::all();
    	return view('/acogidos/crear',['casas' => $this->casas, 'paises' =>$this->paises]);
    }
    public function guardar(Request $request)
    {
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
    	$request->validate([
    	   'nombre' => 'required',
    	   'genero' => 'required',
    	   'edad' => 'required',
    	   'fecha_ingreso' => 'required|before_or_equal:fecha',
    	   'pais' => 'required',
    	   'casa' => 'required',
    	]);
		Acogido::create($request->all());
		return redirect("admin/acogido/listar")->with('Mensaje', 'Acogido Creado con exito');
	}
	
	public function editar($id)
	{
	   $acogido = Acogido::where('id',$id)->first();
	   return view('acogidos/editar',['acogido' => $acogido, 'casas' => $this->casas,'paises' =>$this->paises]);
	}

	public function actualizar(Request $request)
	{
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
		$request->validate([
			'nombre' => 'required',
			'genero' => 'required',
			'edad' => 'required',
			'fecha_ingreso' => 'required|before_or_equal:fecha',
			'pais' => 'required',
			'casa' => 'required',
		]);
        $acogido = Acogido::find($request['id']); 
		$acogido->nombre = $request['nombre'];
		$acogido->genero = $request['genero'];
		$acogido->edad = $request['edad'];
		$acogido->fecha_ingreso = $request['fecha_ingreso'];
		$acogido->fecha_retiro = $request['fecha_retiro'];
		$acogido->pais = $request['pais'];
		$acogido->casa = $request['casa'];
		$acogido->motivo = $request['motivo'];
		$acogido->observaciones =$request['observaciones'];
		$acogido->save();
		return redirect("admin/acogido/listar")->with('Mensaje', 'Acogido Actualizado con exito');
	}
    public function listar()
    {
        $acogidos = Acogido::all();
        return view('acogidos/listar',['acogidos' => $acogidos]);
	}
	
	public function eliminar($id)
	{
		$acogido = Acogido::find($id); 
		$acogido->delete();
		return redirect('admin/acogido/listar')->with('Mensaje', 'Acogido Eliminado con exito');
	}
	public function export(){
        return Excel::download(new AcogidosExport, 'Acogidos.xlsx');
    }

}
