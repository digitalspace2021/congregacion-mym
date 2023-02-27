<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Documento;
use App\Models\Hermana;
use App\Models\Acogido;
use App\Models\Empleado;
use App\Models\Casa;
use App\Models\TipoDocumento;
use Illuminate\Http\Request;

class TipoDocumentoController extends Controller
{
    public function crear()
    {
        return view('tipodocumentos/crear');
    }
    public function guardar(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
        ]);
       
        $data = new Request();
        $data['nombre'] = $request['nombre'];
        TipoDocumento::create($data->all());
        return redirect('admin/tipodocumento/listar')->with('Mensaje', 'Tipo Documento Creado con exito');
    }
    public function listar()
    {
        $tipodocumentos = TipoDocumento::all();   
        return view('tipodocumentos/listar',['tipodocumentos' => $tipodocumentos]);
    }
    public function editar($id)
    {
        $tipodocumento = TipoDocumento::where('id',$id)->first();
        return view('tipodocumentos/editar',['tipodocumento' => $tipodocumento]);
    }
    public function actualizar(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
        ]);
        $documento = TipoDocumento::find($request->id);
        $documento->nombre = $request['nombre'];
        $documento->save();
        return redirect('admin/tipodocumento/listar')->with('Mensaje', 'Tipo Documento Actualizado con exito');
    }
    public function eliminar($id)
    {
        $tipodocumento = TipoDocumento::find($id);
        $tipodocumento->delete();
        return redirect('admin/tipodocumento/listar')->with('Mensaje', 'Tipo Documento Eliminado con exito');
    }

     
    
}
