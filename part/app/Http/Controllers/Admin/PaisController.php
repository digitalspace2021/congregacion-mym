<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Paises;

class PaisController extends Controller
{
    public function index(){
        $paises = Paises::all();
        return view('paises/index',compact('paises'));
    }
    public function create(){
        return view('paises/create');
    }
    public function store(Request $request){
        Paises::create($request->all());
        return redirect('/admin/paises')->with('message','Pais creado correctamente');
    }

    public function edit($id){
        $pais = Paises::where('id',$id)->first();
        return view('paises/edit',compact('pais'));
    }

    public function update(Request $request){
        unset($request['_token']);
        $pais = Paises::where('id',$request->id)->update($request->all());
        return redirect('/admin/paises')->with('message','Pais Editado correctamente');

    }
    
    public function delete($id){
        $pais = Paises::where('id',$id)->delete();
        return redirect('/admin/paises')->with('message','Pais Borrado correctamente');
    }
}
