<?php

namespace App\Exports;

use App\Models\Empleadp;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmpleadosExport
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
            'Cedula',
        ];
    }
    public function collection()
    {
         $empleados = DB::table('empleados')->select('id','nombre', 'genero','cedula')->get();
         return $empleados;
        
    }

    }