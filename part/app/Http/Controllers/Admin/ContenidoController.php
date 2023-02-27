<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Contenido;
use App\Models\Areas;
use Illuminate\Support\Facades\DB;

class ContenidoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contenido = DB::table('contenido_areas as ca')
        ->join('areas as a', 'a.id','=', 'ca.area')
            ->select(
                'ca.*',
                'a.descripcion as descripcionArea'
            )
            ->get();
        return view('admin.contenido.index', compact('contenido'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $area = Areas::all();
        return view('admin.contenido.create', compact('area'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Contenido::create($request->all());
        return redirect('admin/contenido')->with('Mensaje', 'El contenido a sido creado con exito');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Contenido::findOrFail($id);
        $areas = Areas::all();
        return view('admin.contenido.edit', compact('data', 'areas'));
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
        Contenido::findOrFail($id)->update($request->all());
        return redirect('admin/contenido')->with('Mensaje', 'Contenido actualizado con exito');
    }
    
    public function contenidoarea($area){
        $contenido = Contenido::where('area',$area)->get();
        return $contenido;
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->ajax()) {
            if (Contenido::destroy($id)) {
                return response()->json(['mensaje' => 'ok']);
            } else {
                return response()->json(['mensaje' => 'ng']);
            }
        } else {
            abort(404);
        }
    }
}
