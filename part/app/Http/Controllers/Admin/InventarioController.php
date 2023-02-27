<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Areas;
use App\Models\Casa;
use App\Models\Contenido;
use App\Models\Inventarios;
use Illuminate\Support\Facades\DB;

class InventarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $invent = DB::table('inventarios as in')
        ->join('casa as c', 'c.id','=', 'in.id_casa')
        ->join('areas as a', 'a.id','=', 'in.id_area')
        ->join('contenido_areas as co', 'co.id','=', 'in.id_contenido')
            ->select(
                'in.*',
                'c.nombre_casa as casa',
                'a.descripcion as descripcionArea',
                'co.descripcion as descripcionContenido'
            )
            ->get();

        return view('admin.inventario.index',compact('invent'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $casas = Casa::all();
        $areas= Areas::all();
        $contenidos = Contenido::all(); 
        return view('admin.inventario.create',compact('casas','areas','contenidos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'documento_soport' => 'required|max:1024',
        ]);

        $request['documento_soporte'] = $request->documento_soport->getClientOriginalName();
        Inventarios::create($request->all());
        $request->documento_soport->storeAs('documentos', $request->documento_soport->getClientOriginalName());
        return redirect('admin/inventario')->with('Mensaje', 'El inventario a sido creado con exito');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Inventarios::findOrFail($id);
        $casas = Casa::all();
        $areas= Areas::all();
        $contenidos = Contenido::all();
        return view('admin.inventario.edit',compact('data','casas','areas','contenidos'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if($request['documento_soport']){
            $request->validate([
            'documento_soport' => 'max:1024',
        ]);
            $request['documento_soporte'] = $request->documento_soport->getClientOriginalName();
            $request->documento_soport->storeAs('documentos', $request->documento_soport->getClientOriginalName());
        }
        Inventarios::findOrFail($id)->update($request->all());
        return redirect('admin/inventario')->with('Mensaje', 'El inventario a sido actualizado con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if($request->ajax()){
            if(Inventarios::destroy($id)) {
                return response()->json(['mensaje' => 'ok']);
            }else{
                return response()->json(['mensaje' => 'ng']);
            }
        }else{
            abort(404);
        }
    }
}
