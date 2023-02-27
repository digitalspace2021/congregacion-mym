<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Libro;
use App\Models\Prestamo;
use App\Models\UsuarioExterno;

class PrestamoLibroController extends Controller
{
    public function crear()
    {
        $libros = Libro::all();
        return view('libro/prestamo/crear',compact('libros'));
    }

    public function guardar(Request $request)
    {
        $fecha = date('d-m-Y');
        $request['fecha'] = $fecha;
        $request['usuario_id'] = \Auth::user()->id;
        if(isset($request['nombre']))
        {
            $request->validate([
                'libro_id' => 'required',
                'fecha_prestamo' => 'required|before_or_equal:fecha',
                'tipo_usuario' => 'required',
                'fecha_devolucion' => 'before_or_equal:fecha'
            ]);
        }
        else{
            $request->validate([
                'libro_id' => 'required',
                'fecha_prestamo' => 'required|before_or_equal:fecha',
                'tipo_usuario' => 'required',
                'prestado_a' => 'required',
                'fecha_devolucion' => 'before_or_equal:fecha'
            ]);
        }
        if($request->tipo_usuario == 1){
            $request['prestado_a'] = "Hermana: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 2){
            $request['prestado_a'] = "Empleado: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 3){
            $request['prestado_a'] = "Acogido: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 4){
            $request['prestado_a'] = "Sacedote: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 5){
            $request['prestado_a'] = "Religioso: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 6){
            $request['prestado_a'] = "Laico Consagrado: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 7){
            $request['prestado_a'] = "Consagrada Martita: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 8){
            $request['prestado_a'] = "Oblato de Betania: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 9){
            $request['prestado_a'] = "Maria de Betania: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 10){
            $request['prestado_a'] = "Otro: ". $request->prestado_a;
        }
        elseif($request->tipo_usuario  == 11){
            $request['prestado_a'] = "Usuario Externo: ". $request->nombre;
            UsuarioExterno::create([
                'nombre' => $request['nombre'],
                'cedula' => $request['cedula'],
            ]);
            unset($request['nombre']);
            
        }
        
        Prestamo::create($request->all());
        
        return redirect('admin/libro/prestamo/listar')->with('Mensaje','Prestamo Registrado Correctamente');
    }

    public function listar()
    {
        $prestamos = Prestamo::all();
        return view('libro/prestamo/listar',['prestamos' => $prestamos]);
    }
    public function editar($id,$devolver = null)
    {
        if($devolver == 1){
            $prestamo = Prestamo::find($id);
            $prestamo->estado = 1;
            $prestamo->fecha_devolucion = date("Y-m-d H:i:s"); 
            $prestamo->save();
            return redirect('admin/libro/prestamo/listar')->with('Mensaje','Este Libro Ha Sido Entregado');

        }
        $libros = Libro::all();

        $prestamo = Prestamo::where('id',$id)->first();
        return view('libro/prestamo/editar',['prestamo' => $prestamo,'libros' => $libros]);
    }
    public function Actualizar(Request $request)
    {
        $fecha = date('d-m-Y');
		$request['fecha'] = $fecha;
        $request->validate([
            'libro_id' => 'required',
            'fecha_prestamo' => 'required|before_or_equal:fecha',
            'prestado_a' => 'required',
            'fecha_devolucion' => 'before_or_equal:fecha'
        ]);
        $prestamo = Prestamo::find($request->id);
        $prestamo->libro_id = $request['libro_id'];
        $prestamo->fecha_prestamo =  $request['fecha_prestamo']; 
        $prestamo->prestado_a = $request['prestado_a'];
        if($request['fecha_devolucion']){
            $prestamo->fecha_devolucion = $request['fecha_devolucion'];
        }
        $prestamo->save();
        return redirect('admin/libro/prestamo/listar')->with('Mensaje','Prestamo Editado Correctamente');
    }

    public function eliminar($id)
    {
        $prestamo = Prestamo::find($id);
        $prestamo->delete();
        return redirect('admin/libro/prestamo/listar')->with('Mensaje','Prestamo Borrado Correctamente');

    }
}
