<?php

namespace App\Exports;

use App\Models\Laico;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class LaicosExport implements FromCollection,WithHeadings
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
         $laicos = DB::table('laicos')->select('id','nombre','cedula','nacionalidad','genero','direccion','telefono',
         'estado_civil','numero_hijos','fecha_nacimiento','fecha_ingreso','estudios_realizados','actividad',
         'fecha_retiro','observaciones')->get();
         return $laicos;
        
    }
}