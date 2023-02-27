<?php

use Illuminate\Database\Seeder;

class UsuarioAdministradorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuario')->insert([
            'usuario' => 'congregacion',
            'nombre' => 'admin',
            'estado' => 1,
            'password' => bcrypt('pass123'),
            'rol' => 1
        ]);

        DB::table('usuario')->insert([
            'usuario' => 'monja',
            'nombre' => 'monja',
            'estado' => 1,
            'password' => bcrypt('pass123'),
            'rol' => 2
        ]);

    }
}
