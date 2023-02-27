<?php

namespace App\Exports;

use App\Models\Hermana;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class MariasExport implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Id',
            'Nombre',
            'Cedula',
            'Fecha Nacimiento',
            'Lugar de origen',
            'Nacionalidad',
            'Fecha ingreso convento',
            'Fecha ingreso aspirantado',
            'Fecha ingreso noviciado',
            'Primera profesion',
            'Profesion perpetua',
            'renovacion',
            'Convento Actual',
            'Actividad que realiza',
            'Equipo hermana perteneciente',
            'observaciones',
            'Estudios realizados'
        ];
    }
    public function collection()
    {
         $marias = DB::table('marias')->select('id','nombre','cedula_ciudadania'
         ,'fecha_nacimiento','lugar_origen','nacionalidad','fecha_ingreso_convento'
         ,'fecha_ingreso_aspirantado','fecha_ingreso_noviciado','primera_profesion'
         ,'profesion_perpetua','renovacion','convento_actual','actividad_que_realiza','equipo_hermanas_perteneciente'
         ,'observaciones','estudios_realizados')->get();
         return $marias;
        
    }
}