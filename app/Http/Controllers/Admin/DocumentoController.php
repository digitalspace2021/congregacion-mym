<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Documento;
use App\Models\Hermana;
use App\Models\Acogido;
use App\Models\Empleado;
use App\Models\Sacerdote;
use App\Models\Religioso;
use App\Models\Laico;
use App\Models\Martita;
use App\Models\Oblato;
use App\Models\Maria;
use App\Models\Otro;
use App\Models\Casa;
use App\Models\TipoDocumento;
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
        elseif($usuario == 'sacerdote'){
            $usuarioNombre = Sacerdote::where('id',$id)->first();
        }
        elseif($usuario == 'religioso'){
            $usuarioNombre = Religioso::where('id',$id)->first();
        }
        elseif($usuario == 'laico'){
            $usuarioNombre = Laico::where('id',$id)->first();
        }
        elseif($usuario == 'martita'){
            $usuarioNombre = Martita::where('id',$id)->first();
        }
        elseif($usuario == 'oblato'){
            $usuarioNombre = Oblato::where('id',$id)->first();
        }
        elseif($usuario == 'maria'){
            $usuarioNombre = Maria::where('id',$id)->first();
        }
        elseif($usuario == 'otro'){
            $usuarioNombre = Otro::where('id',$id)->first();
        }
        elseif($usuario == 'casa'){
            $usuarioNombre = Casa::where('id',$id)->first();
        }

        $tipo_doc = TipoDocumento::all();
        return view('documentos/crear',['id' => $id,'usuario' => $usuario,'usuarioNombre' => $usuarioNombre,'tipo_doc' => $tipo_doc]);
    }
    public function guardar(Request $request)
    {
        $request->validate([
            'documento' => 'required|max:2024',
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
        elseif($request['usuario'] == 'sacerdote'){
            $data['sacerdote_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'religioso'){
            $data['religioso_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'laico'){
            $data['laico_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'martita'){
            $data['martita_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'oblato'){
            $data['oblato_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'maria'){
            $data['maria_id'] = $request['id'];
        }
        elseif($request['usuario'] == 'otro'){
            $data['otro_id'] = $request['id'];
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
        elseif($id != null and $tipo == "4"){
            $documentos = Documento::where('sacerdote_id',$id)->get();    
        }
        elseif($id != null and $tipo == "5"){
            $documentos = Documento::where('religioso_id',$id)->get();    
        }
        elseif($id != null and $tipo == "6"){
            $documentos = Documento::where('laico_id',$id)->get();    
        }
        elseif($id != null and $tipo == "7"){
            $documentos = Documento::where('martita_id',$id)->get();    
        }
        elseif($id != null and $tipo == "8"){
            $documentos = Documento::where('oblato_id',$id)->get();    
        }
        elseif($id != null and $tipo == "9"){
            $documentos = Documento::where('maria_id',$id)->get();    
        }
        elseif($id != null and $tipo == "10"){
            $documentos = Documento::where('otro_id',$id)->get();    
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
            'tipo_documento' => 'required|max:2024',
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
