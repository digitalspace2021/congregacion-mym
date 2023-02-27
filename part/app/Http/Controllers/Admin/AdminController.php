<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Casa;

class AdminController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');    
    }

    public function index()
    {
        $acogidos = \DB::table('casa')
        ->join('acogidos','acogidos.casa','casa.id')->count();
        $hermanas = \DB::table('casa')
        ->join('hermanas','hermanas.convento_actual','casa.id')->count();
        $empleados = \DB::table('casa')
        ->join('empleados','empleados.casa','casa.id')->count();
        return view('admin.admin.index',compact('hermanas','empleados','acogidos'));
    }


}
