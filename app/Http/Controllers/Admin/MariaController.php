<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Maria;
use App\Models\Casa;
use App\Exports\MariasExport;
use Maatwebsite\Excel\Facades\Excel;

class MariaController extends Controller
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
    	return view('/marias/crear',['equipos' => $this->equipos,'casas' => $this->casas]);
    }

    public function guardar(Request $request)
    {
		$fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
    	$request->validate([
        	'cedula_ciudadania' => 'required',
        	'nombre' => 'required',
        	'fecha_nacimiento' => "required|before_or_equal:fecha",
        	'lugar_origen' => 'required',
			'nacionalidad' => 'required',
        	'fecha_ingreso_convento' => 'required|before_or_equal:fecha',
        	'primera_profesion' => 'required',
        	'convento_actual' => 'required',
        	'equipo_hermanas_perteneciente' => 'required',
    	]);

		Maria::create($request->all());
		return redirect('admin/maria/listar')->with('Mensaje', 'Maria Creado con exito');


	}
	
	public function editar($id)
	{
	   $maria = Maria::where('id',$id)->first();
	   return view('marias/editar',['equipos' => $this->equipos,'maria' => $maria, 'casas' => $this->casas]);
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
			'nacionalidad' => 'required',
        	'fecha_ingreso_convento' => 'required|before_or_equal:fecha',
        	'primera_profesion' => 'required',
        	'convento_actual' => 'required',
        	'equipo_hermanas_perteneciente' => 'required',
    	]);
		$maria  = Maria::find($request['id']);
		$maria->cedula_ciudadania = $request['cedula_ciudadania'];
		$maria->nombre = $request['nombre'];
		$maria->fecha_nacimiento = $request['fecha_nacimiento'];
		$maria->lugar_origen = $request['lugar_origen'];
		$maria->nacionalidad = $request['nacionalidad'];
		$maria->fecha_ingreso_convento = $request['fecha_ingreso_convento'];
		$maria->fecha_ingreso_aspirantado = $request['fecha_ingreso_aspirantado'];
		$maria->fecha_ingreso_postulado = $request['fecha_ingreso_postulado'];
		$maria->fecha_ingreso_noviciado = $request['fecha_ingreso_noviciado'];
		$maria->primera_profesion = $request['primera_profesion'];
		$maria->profesion_perpetua = $request['profesion_perpetua'];
		$maria->convento_actual = $request['convento_actual'];
		$maria->actividad_que_realiza = $request['actividad_que_realiza'];
		$maria->equipo_hermanas_perteneciente = $request['equipo_hermanas_perteneciente'];
		$maria->observaciones = $request['observaciones'];
        $maria->estudios_realizados = $request['estudios_realizados'];
        $maria->renovacion = $request['renovacion'];
		

		$maria->save();
		return redirect('admin/maria/listar')->with('Mensaje', 'Maria Actualizada con exito');

	}
    public function listar()
    {
        $marias = Maria::all();
        return view('marias/listar',['marias' => $marias]);
	}
	
	public function eliminar($id)
	{
		$maria  = Maria::find($id);
		$maria->delete();
		return redirect('admin/maria/listar')->with('Mensaje', 'Maria Eliminada con exito');
	}
	public function export(){
        return Excel::download(new MariasExport, 'Marias.xlsx');
    }

}
