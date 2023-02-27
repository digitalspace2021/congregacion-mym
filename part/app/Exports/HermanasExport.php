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
        ];
    }
    public function collection()
    {
         $hermanas = DB::table('hermanas')->select('id','nombre', 'id_hermana','cedula_ciudadania')->get();
         return $hermanas;
        
    }
}