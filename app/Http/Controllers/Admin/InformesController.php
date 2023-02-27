<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Pais;
use App\Ciudad;
use App\Models\Region;



class InformesController extends Controller
{
    public function index($ciudad = null)
    {
        $casas = \DB::table('casa')->count();
        $acogidos = \DB::table('acogidos')->count();
        $hermanas = \DB::table('hermanas')->count();
        $empleados = \DB::table('empleados')->count();
        $sacerdotes = \DB::table('sacerdotes')->count();
        $religiosos = \DB::table('religiosos')->count();
        $laicos = \DB::table('laicos')->count();
        $martitas = \DB::table('martitas')->count();
        $oblatos = \DB::table('oblatos')->count();
        $marias = \DB::table('marias')->count();
        $otros = \DB::table('otros')->count();
        $libros = \DB::table('libro')->count();
        $prestamos = \DB::table('libro_prestamo')->count();
        $devueltos = \DB::table('libro_prestamo')->where('estado',1)->count();
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        $regiones = Region::all();

        return view('admin/informes/index',compact('hermanas','empleados','acogidos','paises',
        'ciudades','regiones','casas','sacerdotes','religiosos','laicos','martitas','oblatos','marias','otros','libros','prestamos','devueltos'));
    
    }
    
    public function graficar(Request $request)
    {
        if($request['pais'] == null and $request['ciudad_actual'] == null and $request['region'] == null ){
            return back();
        }
        $pais = $request['pais'];
        $ciudad = $request['ciudad_actual'];
        $region = $request['region'];
        if($request['pais'] != null and $request['ciudad_actual'] == null){
            $casas = Casa::where('pais',$pais)->count();
            $acogidos = Casa::where('casa.pais',$pais)
            ->join('acogidos','acogidos.casa','casa.id')->count();
            $hermanas = Casa::where('casa.pais',$pais)
            ->join('hermanas','hermanas.convento_actual','casa.id')->count();
            $empleados = Casa::where('casa.pais',$pais)
            ->join('empleados','empleados.casa','casa.id')->count();
            $sacerdotes = Casa::where('casa.pais',$pais)
            ->join('sacerdotes','sacerdotes.casa','casa.id')->count();
            $religiosos = Casa::where('casa.pais',$pais)
            ->join('religiosos','religiosos.casa','casa.id')->count();
            $laicos = Casa::where('casa.pais',$pais)
            ->join('laicos','laicos.casa','casa.id')->count();
            $martitas = Casa::where('casa.pais',$pais)
            ->join('martitas','martitas.casa','casa.id')->count();
            $oblatos = Casa::where('casa.pais',$pais)
            ->join('oblatos','oblatos.casa','casa.id')->count();
            $marias = Casa::where('casa.pais',$pais)
            ->join('marias','marias.convento_actual','casa.id')->count();
            $otros = Casa::where('casa.pais',$pais)
            ->join('otros','otros.casa','casa.id')->count();
            $paises = Pais::all();
            $ciudades = Ciudad::all();
        }
        elseif($request['ciudad_actual'] != null){
            $casas = Casa::where('ciudad',$ciudad)->count();
            $acogidos = Casa::where('ciudad',$ciudad)
            ->join('acogidos','acogidos.casa','casa.id')->count();
            $hermanas = Casa::where('ciudad',$ciudad)
            ->join('hermanas','hermanas.convento_actual','casa.id')->count();
            $empleados = Casa::where('ciudad',$ciudad)
            ->join('empleados','empleados.casa','casa.id')->count();
            $sacerdotes = Casa::where('ciudad',$ciudad)     
            ->join('sacerdotes','sacerdotes.casa','casa.id')->count();
            $religiosos = Casa::where('ciudad',$ciudad)
            ->join('religiosos','religiosos.casa','casa.id')->count();
            $laicos = Casa::where('ciudad',$ciudad)
            ->join('laicos','laicos.casa','casa.id')->count();
            $martitas = Casa::where('ciudad',$ciudad)
            ->join('martitas','martitas.casa','casa.id')->count();
            $oblatos = Casa::where('ciudad',$ciudad)
            ->join('oblatos','oblatos.casa','casa.id')->count();
            $marias = Casa::where('ciudad',$ciudad)
            ->join('marias','marias.convento_actual','casa.id')->count();
            $otros = Casa::where('ciudad',$ciudad)
            ->join('otros','otros.casa','casa.id')->count();
        }
        elseif($request['region'] != null){
            $casas = Casa::where('regiones.id',$region)
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $acogidos = Casa::where('regiones.id',$region)
            ->join('acogidos','acogidos.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $hermanas = Casa::where('regiones.id',$region)
            ->join('hermanas','hermanas.convento_actual','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $empleados = Casa::where('regiones.id',$region)
            ->join('empleados','empleados.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $sacerdotes = Casa::where('regiones.id',$region)
            ->join('sacerdotes','sacerdotes.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $religiosos = Casa::where('regiones.id',$region)
            ->join('religiosos','religiosos.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $laicos = Casa::where('regiones.id',$region)
            ->join('laicos','laicos.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $martitas = Casa::where('regiones.id',$region)
            ->join('martitas','martitas.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $oblatos = Casa::where('regiones.id',$region)
            ->join('oblatos','oblatos.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $marias = Casa::where('regiones.id',$region)
            ->join('marias','marias.convento_actual','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $otros = Casa::where('regiones.id',$region)
            ->join('otros','otros.casa','casa.id')
            ->join('paises','paises.id','casa.pais')
            ->join('regiones','regiones.id','paises.region')->count();
            $paises = Pais::all();
            $ciudades = Ciudad::all();
        }
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        $regiones = Region::all();
        return view('admin/informes/index',compact('hermanas','empleados','acogidos','paises',
        'ciudades','regiones','casas','sacerdotes','religiosos','laicos','martitas','oblatos','marias','otros'));
    
    }

}
