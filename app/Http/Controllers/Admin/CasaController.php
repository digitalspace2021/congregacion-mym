<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Models\Ciudades;
use App\Models\Paises;

class CasaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $casa = Casa::orderBy('id')->get();
        return view('admin.casa.index',compact('casa'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pais = Paises::orderBy('name', 'asc')->get();
        $city = Ciudades::orderBy('name', 'asc')->get();
        return view('admin.casa.create',compact('pais', 'city'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Casa::create($request->all());
        return redirect('admin/casa')->with('Mensaje', 'Casa Creada con exito');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Casa::findOrFail($id);
        $pais = Paises::orderBy('name', 'asc')->get();
        return view('admin.casa.edit',compact('data','pais'));
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
        Casa::findOrfail($id)->update($request->all());
        return redirect('admin/casa')->with('Mensaje', 'Casa Actualizada con exito');
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
            if(Casa::destroy($id)) {
                return response()->json(['mensaje' => 'ok']);
            }else{
                return response()->json(['mensaje' => 'ng']);
            }
        }else{
            abort(404);
        }
    }
}
