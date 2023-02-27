<?php

namespace App\Exports;

use App\Models\Hermana;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class HermanasExport implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Id',
            'Nombre',
            'ID Hermana',
            'Cedula',
            'Fecha Nacimiento',
            'Lugar de origen',
            'Ciudad Actual',
            'Pais',
            'Nacionalidad',
            'Fecha ingreso convento',
            'Fecha ingreso aspirantado',
            'Fecha ingreso noviciado',
            'Fecha retiro convento',
            'Primera profesion',
            'Profesion perpetua',
            'Convento Actual',
            'Actividad que realiza',
            'Equipo hermana perteneciente',
            'observaciones',
            'Estudios realizados'
        ];
    }
    public function collection()
    {
         $hermanas = DB::table('hermanas')->select('id','nombre', 'id_hermana','cedula_ciudadania'
         ,'fecha_nacimiento','lugar_origen','ciudad_actual','pais','nacionalidad','fecha_ingreso_convento'
         ,'fecha_ingreso_aspirantado','fecha_ingreso_noviciado','fecha_retiro_convento','primera_profesion'
         ,'profesion_perpetua','convento_actual','actividad_que_realiza','equipo_hermanas_perteneciente'
         ,'observaciones','estudios_realizados')->get();
         return $hermanas;
        
    }
}