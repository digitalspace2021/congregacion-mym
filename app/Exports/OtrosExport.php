<?php

namespace App\Exports;

use App\Models\Laico;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OtrosExport implements FromCollection,WithHeadings
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
            'Estado civil',
            'Fecha Nacimiento',
            'Fecha Ingreso',
            'Estudios Realizados',
            'Actividad Que Realiza',
            'Fecha Ingreso',
            'Fecha Retiro',
            'Observaciones'
        ];
    }
    public function collection()
    {
         $otros = DB::table('otros')->select('id','nombre','cedula','nacionalidad','genero','direccion','telefono',
         'estado_civil','fecha_nacimiento','fecha_ingreso','estudios_realizados','actividad',
         'fecha_ingreso','fecha_retiro','observaciones')->get();
         return $otros;
        
    }
}