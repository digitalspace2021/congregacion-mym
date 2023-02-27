<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Pais;
use App\Ciudad;

class InformesController extends Controller
{
    public function index($ciudad = null)
    {
        $acogidos = Casa::where('ciudad',$ciudad)
        ->join('acogidos','acogidos.casa','casa.id')->count();
        $hermanas = Casa::where('ciudad',$ciudad)
        ->join('hermanas','hermanas.convento_actual','casa.id')->count();
        $empleados = Casa::where('ciudad',$ciudad)
        ->join('empleados','empleados.casa','casa.id')->count();
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        return view('admin/informes/index',compact('hermanas','empleados','acogidos','paises','ciudades'));
    
    }
    
    public function graficar(Request $request)
    {
        if($request['pais'] == null and $request['ciudad_actual'] == null){
            return back();
        }
        $pais = $request['pais'];
        $ciudad = $request['ciudad_actual'];
        if($request['pais'] != null and $request['ciudad_actual'] == null){
            $acogidos = Casa::where('acogidos.pais',$pais)
            ->join('acogidos','acogidos.casa','casa.id')->count();
            $hermanas = Casa::where('hermanas.pais',$pais)
            ->join('hermanas','hermanas.convento_actual','casa.id')->count();
            $empleados = Casa::where('empleados.pais',$pais)
            ->join('empleados','empleados.casa','casa.id')->count();
            $paises = Pais::all();
            $ciudades = Ciudad::all();
        }
        elseif($request['ciudad_actual'] != null){
            $acogidos = Casa::where('ciudad',$ciudad)
            ->join('acogidos','acogidos.casa','casa.id')->count();
            $hermanas = Casa::where('ciudad',$ciudad)
            ->join('hermanas','hermanas.convento_actual','casa.id')->count();
            $empleados = Casa::where('ciudad',$ciudad)
            ->join('empleados','empleados.casa','casa.id')->count();

        }
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        return view('admin/informes/index',compact('hermanas','empleados','acogidos','paises','ciudades'));
    
    }

}
