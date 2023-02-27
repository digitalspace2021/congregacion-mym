<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Documento;
use App\Models\Hermana;
use App\Models\Acogido;
use App\Models\Empleado;
use App\Models\Casa;
use Illuminate\Http\Request;

class DocumentoController extends Controller
{
    public function crear($id,$usuario)
    {
        if($usuario == 'hermana'){
            $usuarioNombre = Hermana::where('id',$id)->first();
        }
        elseif($usuario == 'empleado'){
            $usuarioNombre = Empleado::where('id',$id)->first();
        }
        elseif($usuario == 'acogido'){
            $usuarioNombre = Acogido::where('id',$id)->first();
        }
        elseif($usuario == 'casa'){
            $usuarioNombre = Casa::where('id',$id)->first();
        }
        return view('documentos/crear',['id' => $id,'usuario' => $usuario,'usuarioNombre' => $usuarioNombre]);
    }
    public function guardar(Request $request)
    {
        $request->validate([
            'documento' => 'required|max:1024',
            'tipo_documento' => 'required',
        ]);
       
        $data = new Request();
         if($request['usuario'] == 'hermana'){
            $data['hermana_id'] = $request['id'];
            
        }
        elseif($request['usuario'] == 'empleado'){
            $data['empleado_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'acogido'){
            $data['acogido_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'casa'){
            $data['casa_id'] = $request['id'];
        }
        $data['id'] = $request['id'];
        $data['usuario'] =  $request['usuario'];
        $data['tipo_documento'] = $request['tipo_documento'];
        $data['documento'] = $request['documento']->getClientOriginalName();
        $data['usuario'] = \Auth::user()->nombre;
        $request->documento->storeAs('documentos', $request->documento->getClientOriginalName());

        Documento::create($data->all());
        return redirect('admin/documento/listar')->with('Mensaje', 'Documento Creado con exito');
    }
    public function listar($id = null,$tipo = null)
    {
        
        if($id != null and $tipo == "1"){
            $documentos = Documento::where('hermana_id',$id)->get();    
        }
        elseif($id != null and $tipo == "2"){
            $documentos = Documento::where('empleado_id',$id)->get();    
        }
        elseif($id != null and $tipo == "3"){
            $documentos = Documento::where('acogido_id',$id)->get();    
        }
        elseif($id != null and $tipo == "0"){
            $documentos = Documento::where('casa_id',$id)->get();    
        }
        else
        {
            $documentos = Documento::all();   
        }
        
        return view('documentos/listar',['documentos' => $documentos]);
    }
    public function editar($id)
    {
        
        $documento = Documento::where('id',$id)->first();
        if($documento->hermana_id != null){
            $usuarioNombre = Hermana::where('id',$documento->hermana_id)->first();
            $usuarioNombre = "Hermana: ". $usuarioNombre->nombre; 
        }
        elseif($documento->empleado_id != null){
            $usuarioNombre = Empleado::where('id',$documento->empleado_id)->first();
            $usuarioNombre = "Empleado: ". $usuarioNombre->nombre;
        }
        elseif($documento->acogido_id != null){
            $usuarioNombre = Acogido::where('id',$documento->acogido_id)->first();
            $usuarioNombre = "Acogido: ". $usuarioNombre->nombre;
        }
        elseif($documento->casa_id != null){
            $usuarioNombre = Casa::where('id',$documento->casa_id)->first();
            $usuarioNombre = "Casa: ". $usuarioNombre->nombre_casa;
            
        }
        return view('documentos/editar',['documento' => $documento,'usuarioNombre' => $usuarioNombre]);
    }
    public function actualizar(Request $request)
    {
        $request->validate([
            'tipo_documento' => 'required',
        ]);
        $documento = documento::find($request->id);
        if($request['documento']){
           $request->validate([
            'documento' => 'max:1024',
            ]);
            $request->documento->storeAs('documentos', $request->documento->getClientOriginalName());
            $documento->documento = $request['documento']->getClientOriginalName();
        }
        $documento->usuario = \Auth::user()->nombre;
        $documento->tipo_documento = $request['tipo_documento'];
        $documento->save();
        return redirect('admin/documento/listar')->with('Mensaje', 'Documento Actualizado con exito');
    }
    public function eliminar($id)
    {
        $documento = Documento::find($id);
        $documento->delete();
        return redirect('admin/documento/listar')->with('Mensaje', 'documento Eliminado con exito');
    }

     
    
}
