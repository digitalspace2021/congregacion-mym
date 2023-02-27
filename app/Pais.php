<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\Hermana;
use App\Models\Empleado;
use App\Models\Acogido;
use App\Models\Sacerdote;
use App\Models\Religioso;
use App\Models\Laico;
use App\Models\Maria;
use App\Models\Oblato;
use App\Models\Martita;
use App\Models\Otro;

class Pais extends Model
{
    protected $table = "paises";
    protected $primaryKey = "id";

    public function regiones(){
        return $this->belongsTo('App\Models\Region','region');
    }

    public function casas(){
        return $this->hasMany('App\Models\Casa','pais');
    }

    public function hermanas($id){
        return Hermana::where('paises.id',$id)
        ->join('casa','casa.id','hermanas.convento_actual')
        ->join('paises','paises.id','casa.pais')->count();
    }
    
    public function empleados($id){
        return Empleado::where('paises.id',$id)
        ->join('casa','casa.id','empleados.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function acogidos($id){
        return Acogido::where('paises.id',$id)
        ->join('casa','casa.id','acogidos.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }
    
    public function sacerdotes($id){
        return Sacerdote::where('paises.id',$id)
        ->join('casa','casa.id','sacerdotes.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function religiosos($id){
        return Religioso::where('paises.id',$id)
        ->join('casa','casa.id','religiosos.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function laicos($id){
        return Laico::where('paises.id',$id)
        ->join('casa','casa.id','laicos.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function marias($id){
        return Maria::where('paises.id',$id)
        ->join('casa','casa.id','marias.convento_actual')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function oblatos($id){
        return Oblato::where('paises.id',$id)
        ->join('casa','casa.id','oblatos.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function martitas($id){
        return Martita::where('paises.id',$id)
        ->join('casa','casa.id','martitas.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function otros($id){
        return Otro::where('paises.id',$id)
        ->join('casa','casa.id','otros.casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function libros($id){
        return \DB::table('libro')->where('paises.id',$id)
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')->count();
    }

    public function prestamos($id){
        return \DB::table('libro_prestamo')->where('paises.id',$id)
        ->join('libro','libro.id','libro_prestamo.libro_id')
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')->count();
    }
    
    public function devueltos($id){
        return \DB::table('libro_prestamo')->where('paises.id',$id)->where('estado',1)
        ->join('libro','libro.id','libro_prestamo.libro_id')
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')->count();
    }
   
}
