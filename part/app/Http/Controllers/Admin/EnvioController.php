<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Envio;
use App\Models\Hermana;

class EnvioController extends Controller
{
    public function __construct()
	{
		$this->ciudades = \DB::table('ciudades')->get();
        $this->paises = \DB::table('paises')->get();
        

	}
    public function crear($id_hermana)
    {
        $hermana = Hermana::where('id',$id_hermana)->first();
        return view('envios/crear',['id_hermana' => $id_hermana,'ciudades' => $this->ciudades,'paises' =>$this->paises,'hermana' => $hermana]);
    }
    public function guardar(Request $request)
    {
        $fecha = date('d-m-Y');
		$request['fechas'] = $fecha;
        $request->validate([
            'pais' => 'required',
            'ciudad' => 'required',
            'fecha' => 'required|before_or_equal:fechas',
            'cargo' => 'required',
        ]);
        Envio::create($request->all());
        return redirect('admin/hermana/envio/listar')->with('Mensaje', 'Envio Creado con exito');
    }
    public function listar()
    {   
        $envios = Envio::all();
        return view('envios/listar',['envios' => $envios]);
    }
    public function editar($id)
    {
        
        $envio = Envio::where('id',$id)->first();
        
        $hermana = Hermana::where('id',$envio->hermana_id)->first();
        return view('envios/editar',['envio' => $envio,'ciudades' => $this->ciudades,'paises' =>$this->paises,'hermana' => $hermana]);
    }
    public function actualizar(Request $request)
    {
        $fecha = date('d-m-Y');
		$request['fechas'] = $fecha;
        $request->validate([
            'pais' => 'required',
            'ciudad' => 'required',
            'fecha' => 'required|before_or_equal:fechas',
            'cargo' => 'required',
        ]);
        $envio = Envio::find($request->hermana_id);
        $envio->ciudad = $request['ciudad'];
        $envio->pais = $request['pais'];
        $envio->fecha = $request['fecha'];
        $envio->cargo = $request['cargo'];
        $envio->save();
        return redirect('admin/hermana/envio/listar')->with('Mensaje', 'Envio Actualizado con exito');
    }
    public function eliminar($id)
    {
        $envio = Envio::find($id);
        $envio->delete();
        return redirect('admin/hermana/envio/listar')->with('Mensaje', 'Envio Eliminado con exito');
    }
}
