<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Hermana;
use App\Models\Casa;
use App\Exports\HermanasExport;
use Maatwebsite\Excel\Facades\Excel;

class HermanaController extends Controller
{
	
	public function __construct()
	{
		$this->casas = Casa::all();
		$this->ciudades = \DB::table('ciudades')->orderby('name','asc')->get();
		$this->paises = \DB::table('paises')->orderby('name','asc')->get();
		$this->equipos = \DB::table('equiposhermanas')->get();

	}

    public function crear()
    {	
    	return view('/hermanas/crear',['equipos' => $this->equipos,'casas' => $this->casas,'ciudades' => $this->ciudades,'paises' =>$this->paises]);
    }

    public function guardar(Request $request)
    {
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
    	$request->validate([
        	//'id_hermana' => 'required',
        	'cedula_ciudadania' => 'required',
        	'nombre' => 'required',
        	'fecha_nacimiento' => "required|before_or_equal:fecha",
        	'lugar_origen' => 'required',
        	'ciudad_actual' => 'required',
			'pais' => 'required',
			'nacionalidad' => 'required',
        	'fecha_ingreso_convento' => 'required|before_or_equal:fecha',
        	'primera_profesion' => 'required',
        	'convento_actual' => 'required',
        	'actividad_que_realiza' => 'required',
        	'equipo_hermanas_perteneciente' => 'required',
    	]);

		Hermana::create($request->all());
		return redirect('admin/hermana/listar')->with('Mensaje', 'Hermana Creado con exito');


	}
	
	public function editar($id)
	{
	   $hermana = Hermana::where('id',$id)->first();
	   return view('hermanas/editar',['equipos' => $this->equipos,'hermana' => $hermana, 'casas' => $this->casas,'ciudades' => $this->ciudades,'paises' =>$this->paises]);
	}

	public function actualizar(Request $request)
	{
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
		$request->validate([
        	//'id_hermana' => 'required',
        	'cedula_ciudadania' => 'required',
        	'nombre' => 'required',
        	'fecha_nacimiento' => 'required|before_or_equal:fecha',
        	'lugar_origen' => 'required',
        	'ciudad_actual' => 'required',
			'pais' => 'required',
			'nacionalidad' => 'required',
        	'fecha_ingreso_convento' => 'required|before_or_equal:fecha',
        	'primera_profesion' => 'required',
        	'convento_actual' => 'required',
        	'actividad_que_realiza' => 'required',
        	'equipo_hermanas_perteneciente' => 'required',
    	]);
		$hermana  = Hermana::find($request['id']);
		$hermana->id_hermana = $request['id_hermana'];
		$hermana->cedula_ciudadania = $request['cedula_ciudadania'];
		$hermana->nombre = $request['nombre'];
		$hermana->fecha_nacimiento = $request['fecha_nacimiento'];
		$hermana->lugar_origen = $request['lugar_origen'];
		$hermana->ciudad_actual = $request['ciudad_actual'];
		$hermana->pais = $request['pais'];
		$hermana->nacionalidad = $request['nacionalidad'];
		$hermana->fecha_ingreso_convento = $request['fecha_ingreso_convento'];
		$hermana->fecha_ingreso_aspirantado = $request['fecha_ingreso_aspirantado'];
		$hermana->fecha_ingreso_postulado = $request['fecha_ingreso_postulado'];
		$hermana->fecha_ingreso_noviciado = $request['fecha_ingreso_noviciado'];
		$hermana->fecha_retiro_convento = $request['fecha_retiro_convento'];
		$hermana->primera_profesion = $request['primera_profesion'];
		$hermana->profesion_perpetua = $request['profesion_perpetua'];
		$hermana->convento_actual = $request['convento_actual'];
		$hermana->actividad_que_realiza = $request['actividad_que_realiza'];
		$hermana->equipo_hermanas_perteneciente = $request['equipo_hermanas_perteneciente'];
		$hermana->observaciones = $request['observaciones'];
		$hermana->estudios_realizados = $request['estudios_realizados'];
		

		$hermana->save();
		return redirect('admin/hermana/listar')->with('Mensaje', 'Hermana Actualizada con exito');

	}
    public function listar()
    {
        $hermanas = Hermana::all();
        return view('hermanas/listar',['hermanas' => $hermanas]);
	}
	
	public function eliminar($id)
	{
		$hermana  = Hermana::find($id);
		$hermana->delete();
		return redirect('admin/hermana/listar')->with('Mensaje', 'Hermana Eliminada con exito');
	}
	public function export(){
        return Excel::download(new HermanasExport, 'Hermanas.xlsx');
    }

}
