<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Package;
class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::all();
        return view('packages/index',compact('packages'));
    }
    public function create()
    {
        return view('packages/create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
            'duracion' => 'required|numeric',
            'precio' => 'required|numeric',
            'descripcion' => 'required',
        ]);

        Package::create($request->all());

        return redirect('package')->with('message','Paquete creado correctamente');
    }
    public function edit($id)
    {
        $package = Package::where('id',$id)->first();
        return view('packages/editar',compact('package'));
    }
    public function update(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
            'duracion' => 'required|numeric',
            'precio' => 'required|numeric',
            'descripcion' => 'required',
        ]);

        unset($request['_token']);
        unset($request['id']);
        
        Package::where('id',$request->id)->update($request->all());
        return redirect('package')->with('message','Paquete Actualizado correctamente');
    }

    public function delete($id)
    {
        $package = Package::where('id',$id);
        $package->delete();
        return redirect('package')->with('message','Paquete Eliminado correctamente');
    }
}
