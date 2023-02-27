<?php

namespace App\Exports;

use App\Models\Religioso;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ReligiososExport implements FromCollection,WithHeadings
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
            'Genero',
            'Direccion',
            'Telefono',
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
         $religiosos = DB::table('religiosos')->select('id','nombre','cedula','nacionalidad','genero','direccion','telefono',
         'fecha_nacimiento','fecha_ingreso_convento','estudios_realizados','actividad_que_realiza',
         'fecha_retiro_convento','observaciones')->get();
         return $religiosos;
        
    }
}