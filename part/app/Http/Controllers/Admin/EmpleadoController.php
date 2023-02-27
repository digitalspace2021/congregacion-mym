<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Empleado;
use App\EstadoCivil;
use App\Models\Casa;
use App\Exports\EmpleadosExport;
use Maatwebsite\Excel\Facades\Excel;

class EmpleadoController extends Controller
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
    	return view('empleados/crear',['casas' => $this->casas, 'estados' => $estados,'paises' => $this->paises]);
    }
    public function guardar(Request $request)
    {
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
    	$request->validate([
    		'cedula_ciudadania' => 'required',
    		'nombre' => 'required',
    		'genero' => 'required',
    		'direccion' => 'required',
	    	'telefono' => 'required',
	    	'estado_civil' => 'required',
	    	'actividad_que_realiza' => 'required',
	    	'salario' => 'required',
	    	'pais' => 'required',
	    	'casa' => 'required',
	    	'fecha_ingreso' => 'required|before_or_equal:fecha',
    	]);
		Empleado::create($request->all());
		return redirect('admin/empleado/listar')->with('Mensaje', 'Empleado Creado con exito');
		
	}
	
	public function editar($id)
	{
		$empleado = Empleado::where('id',$id)->first();
		$estados = EstadoCivil::all();
	   	return view('empleados/editar',['empleado' => $empleado, 'casas' => $this->casas,'estados' => $estados,'paises' =>$this->paises]);
	}

	public function actualizar(Request $request)
	{
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
		$request->validate([
    		'cedula_ciudadania' => 'required',
    		'nombre' => 'required',
    		'genero' => 'required',
    		'direccion' => 'required',
	    	'telefono' => 'required',
	    	'estado_civil' => 'required',
	    	'actividad_que_realiza' => 'required',
	    	'salario' => 'required',
	    	'pais' => 'required',
	    	'casa' => 'required',
	    	'fecha_ingreso' => 'required|before_or_equal:fecha',
		]);
		$empleado = Empleado::find($request['id']);
		$empleado->cedula_ciudadania = $request['cedula_ciudadania'];
		$empleado->nombre = $request['nombre'];
		$empleado->genero = $request['genero'];
		$empleado->direccion = $request['direccion'];
		$empleado->telefono = $request['telefono'];
		$empleado->estado_civil = $request['estado_civil'];
		$empleado->num_hijos = $request['num_hijos'];
		$empleado->actividad_que_realiza = $request['actividad_que_realiza'];
		$empleado->salario = $request['salario'];
		$empleado->pais = $request['pais'];
		$empleado->casa = $request['casa'];
		$empleado->fecha_ingreso = $request['fecha_ingreso'];
		$empleado->fecha_retiro = $request['fecha_retiro'];
		$empleado->motivo = $request['motivo'];
		$empleado->save();
		return redirect('admin/empleado/listar')->with('Mensaje', 'Empleado Actualizado con exito');
	}

    public function listar()
    {
        $empleados = Empleado::all();
        return view('empleados/listar',['empleados' => $empleados]);
	}
	
	public function eliminar($id)
	{
		$empleado = Empleado::find($id);
		$empleado->delete();
		return redirect('admin/empleado/listar')->with('Mensaje', 'Empleado Eliminado con exito');

	}
	public function export(){
        return Excel::download(new EmpleadosExport, 'Empleados.xlsx');
    }


}

