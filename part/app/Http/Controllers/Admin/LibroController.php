<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Models\Libro;
use App\Models\AreaLibro;
use Illuminate\Support\Facades\Storage;

class LibroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = Libro::orderBy('id')->get();
        return view('admin.libro.index', compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $casa = Casa::all();
        $areas = AreaLibro::all();
        return view('admin.libro.create',compact('casa','areas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($foto = Libro::setCaratula($request->foto_up))
           $request->request->add(['foto' => $foto]); 
           Libro::create($request->all());
           return redirect()->route('libro')->with('Mensaje', 'El libro fue creado con exito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Libro $libro)
    {
        return view('admin.libro.show',compact('libro'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Libro::findOrFail($id);
        $casa = Casa::all();
        $areas = AreaLibro::all();
        return view('admin.libro.edit', compact('data','casa','areas'));
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
        $libro = Libro::findOrFail($id);
        if ($foto = Libro::setCaratula($request->foto_up, $libro->foto))
            $request->request->add(['foto' => $foto]);
        $libro->update($request->all());
        return redirect()->route('libro')->with('Mensaje', 'El libro fue actualizado con exito');
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
            $libro = Libro::findOrFail($id);
            if(Libro::destroy($id)){
                Storage::disk('public')->delete("imagenes/caratulas/$libro->foto");
                return response()->json(['mensaje' => 'ok']);
            }else{
                return response()->json(['mensaje' => 'ng']);
            }
        } else{
            abort(404);
        }
    }
}
