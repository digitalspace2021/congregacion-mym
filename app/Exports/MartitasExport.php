<?php

namespace App\Exports;

use App\Models\Martita;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class MartitasExport implements FromCollection,WithHeadings
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
            'Direccion',
            'Telefono',
            'Numero de hijos',
            'Fecha Nacimiento',
            'Fecha Ingreso',
            'Estudios Realizados',
            'Actividad Que Realiza',
            'Fecha Retiro',
            'Observaciones'
        ];
    }
    public function collection()
    {
         $martitas = DB::table('martitas')->select('id','nombre','cedula','nacionalidad','direccion','telefono',
         'numero_hijos','fecha_nacimiento','fecha_ingreso','estudios_realizados','actividad',
         'fecha_retiro','observaciones')->get();
         return $martitas;
        
    }
}