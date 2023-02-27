<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;
use App\Models\Hermana;
use App\Models\Acogido;
use App\Models\Empleado;
use Illuminate\Support\Facades\Auth;
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
        if($request['password']){
            $user->password =  Hash::make($request['password']);
        }
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
        elseif($id == 4){
            return \DB::table('sacerdotes')->get();
        }
        elseif($id == 5){
            return \DB::table('religiosos')->get();
        }
        elseif($id == 6){
            return \DB::table('laicos')->get();
        }
        elseif($id == 7){
            return \DB::table('martitas')->get();
        }
        elseif($id == 8){
            return \DB::table('oblatos')->get();
        }
        elseif($id == 9){
            return \DB::table('marias')->get();
        }
        elseif($id == 10){
            return \DB::table('otros')->get();
        }
    }
    public function cambiarContraseña()
    {
        return view('users/ressetPassword');
    }
    public function updatePassword(Request $request)
    {
        $request->validate([
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        $user = Usuario::find(Auth::id());
        $user->password = Hash::make($request->password);
        $user->save();
        return back()->with('Mensaje','Contrasena actualizada correctamente');

    }
}
