<?php

namespace App\Exports;

use App\Models\Acogido;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class AcogidosExport implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Id',
            'Nombre',
            'Genero',
            'Edad',
            'Fecha ingreso',
            'Fecha retiro',
            'Pais',
            'Casa',
            'Motivo',
            'Observaciones'
        ];
    }
    public function collection()
    {
         $acogidos = DB::table('acogidos')->select('id','nombre', 'genero','edad',
         'fecha_ingreso','fecha_retiro','pais','casa','motivo','observaciones')->get();
         return $acogidos;
        
    }
}