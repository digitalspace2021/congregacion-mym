<?php

namespace App\Exports;

use App\Models\Empleado;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmpleadosExport implements FromCollection,WithHeadings
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
            'Direccion',
            'Telefono',
            'Estado civil',
            'Num hijos',
            'Actividad que realiza',
            'Salario',
            'Pais',
            'Casa',
            'Fecha ingreso',
            'Fecha retiro',
            'Motivo'
        ];
    }
    public function collection()
    {
         $empleados = DB::table('empleados')->select('id','nombre', 'genero','cedula_ciudadania','direccion',
         'telefono','estado_civil','num_hijos','actividad_que_realiza','salario','pais','casa','fecha_ingreso',
         'fecha_retiro','motivo')->get();
         return $empleados;
        
    }

    }