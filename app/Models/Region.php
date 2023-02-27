<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Casa;
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

class Region extends Model
{
    protected $table = "regiones";
    protected $primaryKey = "id";

    public function paises(){
        return $this->hasMany('App\Pais','region');
    }

    public function casas($id){
        return Casa::where('regiones.id',$id)
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();    }

    public function hermanas($id){
        return Hermana::where('regiones.id',$id)
        ->join('casa','casa.id','hermanas.convento_actual')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }
    
    public function empleados($id){
        return Empleado::where('regiones.id',$id)
        ->join('casa','casa.id','empleados.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function acogidos($id){
        return Acogido::where('regiones.id',$id)
        ->join('casa','casa.id','acogidos.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }
    
    public function sacerdotes($id){
        return Sacerdote::where('regiones.id',$id)
        ->join('casa','casa.id','sacerdotes.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function religiosos($id){
        return Religioso::where('regiones.id',$id)
        ->join('casa','casa.id','religiosos.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function laicos($id){
        return Laico::where('regiones.id',$id)
        ->join('casa','casa.id','laicos.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function marias($id){
        return Maria::where('regiones.id',$id)
        ->join('casa','casa.id','marias.convento_actual')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function oblatos($id){
        return Oblato::where('regiones.id',$id)
        ->join('casa','casa.id','oblatos.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function martitas($id){
        return Martita::where('regiones.id',$id)
        ->join('casa','casa.id','martitas.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function otros($id){
        return Otro::where('regiones.id',$id)
        ->join('casa','casa.id','otros.casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function libros($id){
        return \DB::table('libro')->where('regiones.id',$id)
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }

    public function prestamos($id){
        return \DB::table('libro_prestamo')->where('regiones.id',$id)
        ->join('libro','libro.id','libro_prestamo.libro_id')
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }
    
    public function devueltos($id){
        return \DB::table('libro_prestamo')->where('regiones.id',$id)->where('estado',1)
        ->join('libro','libro.id','libro_prestamo.libro_id')
        ->join('casa','casa.id','libro.id_casa')
        ->join('paises','paises.id','casa.pais')
        ->join('regiones','regiones.id','paises.region')->count();
    }
}
