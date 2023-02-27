<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;
use App\Models\Hermana;
use App\Models\Acogido;
use App\Models\Empleado;

use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = Usuario::all();
        return view('users/listar',['users' => $users]);
    }
    public function crear(Request $request)
    {
        $request->validate(
        [
            'nombre' => ['required', 'string', 'max:255'],
            'usuario' => ['required', 'string', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        Usuario::create([
            'nombre' => $request['nombre'],
            'usuario' => $request['usuario'],
            'rol' => $request['rol'],
            'estado' => 1,
            'password' => Hash::make($request['password']),
        ]);
        return redirect("/listarusuarios")->with('Mensaje', 'Usuario Creado con exito');
    }
    public function editar($id)
    {
        $user = Usuario::where('id',$id)->first();
        return view('users/editar',['user'=> $user]);
    }
    
    public function update(Request $request)
    {
        $user = Usuario::where('id',$request['id'])->first();
        $user->nombre = $request['nombre'];
        $user->usuario = $request['usuario'];
        $user->rol = $request['rol'];
        $user->save();
        
        return redirect('/listarusuarios')->with('message','El usuario ha sido editado correctamente');
    }
    public function delete($id)
    {
        $user = Usuario::where('id',$id)->first();
        $user->delete();
        return redirect('/listarusuarios')->with('message','El usuario ha sido eliminado correctamente');
    }
    public function usuarioByType($id)
    {
        if($id == 1){
            return Hermana::all();
        }
        elseif($id == 2){
            return Empleado::all();
        }
        elseif($id == 3){
            return Acogido::all();
        }
    }
}
