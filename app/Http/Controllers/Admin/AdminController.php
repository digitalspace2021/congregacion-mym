<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Casa;
use App\Pais;
use App\Ciudad;
use App\Models\Region;

class AdminController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');    
    }

    public function index()
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
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        $regiones = Region::all();

        return view('admin/admin/index',compact('hermanas','empleados','acogidos','paises',
        'ciudades','regiones','casas','sacerdotes','religiosos','laicos','martitas','oblatos','marias','otros'));
    }


}
