<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Models\Ciudades;
class CiudadPaisController extends Controller
{

    public function ciudadPais($pais)
    {
        $pais = \DB::table('paises')->where('id',$pais)->first();
        $ciudad_pais = \DB::table('ciudades')->where('country_code',$pais->code)->orderby('name','asc')->get();
        return $ciudad_pais;
    }
    public function index($id){
        $ciudades = Ciudades::where('country_code',$id)->get();
        return view('ciudades/index',compact('ciudades'));
    }
    public function create($id){
        return view('ciudades/create',['id' => $id]);
    }
    public function store(Request $request){
        
        $ciudades = Ciudades::create([
            'country_code' => $request['country_code'],    
            'name' => $request['name'],
        ]);
        return redirect('admin/ciudades/'.$request->country_code)->with('message','Ciudad creado correctamente');
    }

    public function edit($id){
        $ciudad = Ciudades::where('id',$id)->first();
        return view('ciudades/edit',compact('ciudad'));
    }

    public function update(Request $request){
        unset($request['_token']);
        $ciudad = Ciudades::where('id',$request->id)->update($request->all());
        $ciudad = Ciudades::where('id',$request->id)->first();
        return redirect('admin/ciudades/'.$ciudad->country_code)->with('message','Ciudad Editada correctamente');
    }
    
    public function delete($id){
        $ciudad = Ciudades::where('id',$id)->first();
        $cc = $ciudad->country_code;
        $ciudad = Ciudades::where('id',$id)->delete();
                return redirect('admin/ciudades/'.$cc)->with('message','Ciudad Borrada correctamente');
    }
}
