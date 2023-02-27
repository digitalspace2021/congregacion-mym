<?php

namespace App\Exports;

use App\Models\Sacerdote;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SacerdotesExport implements FromCollection,WithHeadings
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
            'Nacionalidad',
            'Fecha Nacimiento',
            'Fecha Ingreso Convento',
            'Estudios Realizados',
            'Actividad Que Realiza',
            'Fecha Retiro Convento',
            'Observaciones'
        ];
    }
    public function collection()
    {
         $sacerdotes = DB::table('sacerdotes')->select('id','nombre', 'cedula','nacionalidad',
         'fecha_nacimiento','fecha_ingreso_convento','estudios_realizados','actividad_que_realiza',
         'fecha_retiro_convento','observaciones')->get();
         return $sacerdotes;
        
    }
}