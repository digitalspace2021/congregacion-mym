<?php

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'InicioController@index');
Route::get('seguridad/login', 'Seguridad\LoginController@index')->name('login');
Route::post('seguridad/login', 'Seguridad\LoginController@login')->name('login_post');
Route::get('seguridad/logout', 'Seguridad\LoginController@logout')->name('logout');
      Route::get('', 'Admin\AdminController@index');
Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'auth'], 
  function (){

  /* RUTAS PERMISO  */ 

    Route::get('permiso', 'PermisoController@index')->name('permiso');
    Route::get('permiso/create', 'PermisoController@create')->name('crear_permiso');
    Route::post('permiso', 'PermisoController@store')->name('guardar_permiso');
    Route::get('permiso/{id}/edit', 'PermisoController@edit')->name('editar_permiso');
    Route::put('permiso/{id}', 'PermisoController@update')->name('actualizar_permiso');
    Route::delete('permiso/{id}/destroy', 'PermisoController@destroy')->name('eliminar_permiso');

  /* RUTAS MENU  */

    Route::get('menu', 'MenuController@index')->name('menu');
    Route::get('menu/create', 'MenuController@create')->name('crear_menu');
    Route::post('menu', 'MenuController@store')->name('guardar_menu');
    Route::get('menu/{id}/edit', 'MenuController@edit')->name('editar_menu');
    Route::put('menu/{id}', 'MenuController@update')->name('actualizar_menu');
    Route::get('menu/{id}/destroy', 'MenuController@destroy')->name('eliminar_menu');
    Route::post('menu/guardar-orden', 'MenuController@guardarOrden')->name('guardar_orden');

  /* RUTAS ROL  */

    Route::get('rol', 'RolController@index')->name('rol')->middleware('role:2');
    Route::get('rol/create', 'RolController@create')->name('crear_rol')->middleware('role:1');
    Route::post('rol', 'RolController@store')->name('guardar_rol')->middleware('role:1');
    Route::get('rol/{id}/edit', 'RolController@edit')->name('editar_rol')->middleware('role:1');
    Route::put('rol/{id}', 'RolController@update')->name('actualizar_rol')->middleware('role:1');
    Route::delete('rol/{id}', 'RolController@destroy')->name('eliminar_rol')->middleware('role:1');

  /* RUTAS AREA */

    Route::get('areas', 'AreasController@index')->name('areas')->middleware('role:2');
    Route::get('areas/create', 'AreasController@create')->name('crear_areas')->middleware('role:1');
    Route::post('areas', 'AreasController@store')->name('guardar_areas')->middleware('role:1');
    Route::get('areas/{id}/edit', 'AreasController@edit')->name('editar_areas')->middleware('role:1');
    Route::put('areas/{id}', 'AreasController@update')->name('actualizar_areas')->middleware('role:1');
    Route::delete('areas/{id}', 'AreasController@destroy')->name('eliminar_areas')->middleware('role:1');
    
    Route::get('areaslibros', 'AreaLibroController@index')->middleware('role:2');
    Route::get('areaslibros/create', 'AreaLibroController@create')->middleware('role:1');
    Route::post('areaslibros/create', 'AreaLibroController@store')->middleware('role:1');
    Route::get('areaslibros/edit/{id}', 'AreaLibroController@edit')->middleware('role:1');
    Route::put('areaslibros/{id}', 'AreaLibroController@update')->name('update_a_libros')->middleware('role:1');
    Route::delete('areaslibros/delete/{id}', 'AreaLibroController@destroy')->middleware('role:1');

  /* RUTAS CONTENIDO AREAS */

    Route::get('contenido', 'ContenidoController@index')->name('contenido')->middleware('role:2');
   // Route::get('contenido/{id}', 'ContenidoController@contenidoarea');
    Route::get('contenido/create', 'ContenidoController@create')->name('crear_contenido')->middleware('role:1');
    Route::post('contenido', 'ContenidoController@store')->name('guardar_contenido')->middleware('role:1');
    Route::get('contenido/{id}/edit', 'ContenidoController@edit')->name('editar_contenido')->middleware('role:1');
    Route::put('contenido/{id}', 'ContenidoController@update')->name('actualizar_contenido')->middleware('role:1');
    Route::delete('contenido/{id}', 'ContenidoController@destroy')->name('eliminar_contenido')->middleware('role:1');

  /* RUTAS CONTENIDO INVENTARIO */

    Route::get('inventario', 'InventarioController@index')->name('inventario')->middleware('role:2');
    Route::get('inventario/create', 'InventarioController@create')->name('crear_inventario')->middleware('role:1');
    Route::post('inventario', 'InventarioController@store')->name('guardar_inventario')->middleware('role:1');
    Route::get('inventario/{id}/edit', 'InventarioController@edit')->name('editar_inventario')->middleware('role:1');
    Route::put('inventario/{id}', 'InventarioController@update')->name('actualizar_inventario')->middleware('role:1');
    Route::delete('inventario/{id}', 'InventarioController@destroy')->name('eliminar_inventario')->middleware('role:1');

  /* RUTAS CONTENIDO INFORMES */

    Route::get('informes/{ciudad?}', 'InformesController@index')->name('informes')->middleware('role:2');
    Route::post('informes', 'InformesController@graficar');
  /*RUTAS LIBRO*/

    Route::get('libro', 'LibroController@index')->name('libro');
    Route::get('libro/create', 'LibroController@create')->name('crear_libro')->middleware('role:3');
    Route::post('libro', 'LibroController@store')->name('guardar_libro')->middleware('role:3');
    Route::post('libro/{libro}', 'LibroController@show')->name('ver_libro');
    Route::get('libro/{id}/edit', 'LibroController@edit')->name('editar_libro')->middleware('role:3');
    Route::put('libro/{id}', 'LibroController@update')->name('actualizar_libro')->middleware('role:3');
    Route::delete('libro/{id}', 'LibroController@destroy')->name('eliminar_libro')->middleware('role:3');

  /*RUTAS CASA*/

    Route::get('casa', 'CasaController@index')->name('casa')->middleware('role:2');
    Route::get('casa/create', 'CasaController@create')->name('crear_casa')->middleware('role:1');
    Route::post('casa', 'CasaController@store')->name('guardar_casa')->middleware('role:1');
    Route::get('casa/{id}/edit', 'CasaController@edit')->name('editar_casa')->middleware('role:1');
    Route::put('casa/{id}', 'CasaController@update')->name('actualizar_casa')->middleware('role:1');
    Route::delete('casa/{id}', 'CasaController@destroy')->name('eliminar_casa')->middleware('role:1');
    /*Rutas Menu Rol  */ 
      Route::get('menu-rol', 'MenuRolController@index')->name('menu_rol');
      Route::post('menu-rol', 'MenuRolController@store')->name('guardar_menu_rol');
    /*Rutas Permiso Rol  */ 
      Route::get('permiso-rol', 'PermisoRolController@index')->name('permiso_rol');
      Route::post('permiso-rol', 'PermisoRolController@store')->name('guardar_permiso_rol');
      //Hermanas rutas
    route::get('hermana/crear','HermanaController@crear')->name('crear_hermana')->middleware('role:1');
    route::post('hermana/crear','HermanaController@guardar')->middleware('role:1');
    route::get('hermana/listar','HermanaController@listar')->name('listar_hermana')->middleware('role:2');
    route::get('hermana/editar/{id}','HermanaController@editar')->middleware('role:1');
    route::post('hermana/editar','HermanaController@actualizar')->middleware('role:1');
    route::get('hermana/eliminar/{id}','HermanaController@eliminar')->middleware('role:1');
    route::get('hermana/exportar','HermanaController@export');


    //Envios
    route::get('hermana/envio/crear/{id}','EnvioController@crear')->middleware('role:1');
    route::get('hermana/envio','EnvioController@index')->middleware('role:2');
    route::post('hermana/envio/crear','EnvioController@guardar')->middleware('role:1');
    route::get('hermana/envio/listar','EnvioController@listar')->middleware('role:2');
    route::get('hermana/envio/editar/{id}','EnvioController@editar')->middleware('role:1');
    route::post('hermana/envio/editar','EnvioController@actualizar')->middleware('role:1');
    route::get('hermana/envio/eliminar/{id}','EnvioController@eliminar')->middleware('role:1');

    //Documentos
    route::get('documento/crear/{id}/{usuario}','DocumentoController@crear')->middleware('role:1');
    route::post('documento/crear','DocumentoController@guardar')->middleware('role:1');
    route::get('documento/listar/{id?}/{tipo?}','DocumentoController@listar')->middleware('role:2');
    route::get('documento/editar/{id}','DocumentoController@editar')->middleware('role:1');
    route::post('documento/editar','DocumentoController@actualizar')->middleware('role:1');
    route::get('documento/eliminar/{id}','DocumentoController@eliminar')->middleware('role:1');
    
    //Paises y ciudades
    route::get('pais/crear','PaisController@create');
    route::post('pais/crear','PaisController@store');
    route::get('paises','PaisController@index');
    route::get('pais/editar/{id}','PaisController@edit');
    route::post('pais/editar','PaisController@update');
    route::get('pais/eliminar/{id}','PaisController@delete');
    
    route::get('ciudad/crear/{id}','CiudadPaisController@create');
    route::post('ciudad/crear','CiudadPaisController@store');
    route::get('ciudades/{id}','CiudadPaisController@index');
    route::get('ciudad/editar/{id}','CiudadPaisController@edit');
    route::post('ciudad/editar','CiudadPaisController@update');
    route::get('ciudad/eliminar/{id}','CiudadPaisController@delete');
    
    //equipos
    route::get('equipo/crear','EquipoHermanaController@crear')->middleware('role:1');
    route::post('equipo/crear','EquipoHermanaController@guardar')->middleware('role:1');
    route::get('equipo/listar','EquipoHermanaController@listar')->middleware('role:2');
    route::get('equipo/editar/{id}','EquipoHermanaController@editar')->middleware('role:1');
    route::post('equipo/editar','EquipoHermanaController@actualizar')->middleware('role:1');
    route::get('equipo/eliminar/{id}','EquipoHermanaController@eliminar')->middleware('role:1');
    
    //presupuesto
    route::get('documento/presupuesto/crear/{id}','PresupuestoController@crear')->middleware('role:1');
    route::post('documento/presupuesto/crear','PresupuestoController@guardar')->middleware('role:1');
    route::get('documento/presupuesto/listar','PresupuestoController@listar')->middleware('role:2');
    route::get('documento/presupuesto/editar/{id}','PresupuestoController@editar')->middleware('role:1');
    route::post('documento/presupuesto/editar','PresupuestoController@actualizar')->middleware('role:1');
    route::get('documento/presupuesto/eliminar/{id}','PresupuestoController@eliminar')->middleware('role:1');

    Route::get('/documento/{file}', function ($file) {
      return Storage::response("documentos/$file");
    });

  //PrestamoLibro
  route::get('libro/prestamo/crear','PrestamoLibroController@crear')->middleware('role:3');
  route::post('libro/prestamo/crear','PrestamoLibroController@guardar')->middleware('role:3');
  route::get('libro/prestamo/listar','PrestamoLibroController@listar');
  route::get('libro/prestamo/editar/{id}/{devolver?}','PrestamoLibroController@editar')->middleware('role:3');
  route::post('libro/prestamo/editar','PrestamoLibroController@actualizar')->middleware('role:3');
  route::get('libro/prestamo/eliminar/{id}','PrestamoLibroController@eliminar')->middleware('role:3');

    //Acogidos
    route::get('acogido/crear','AcogidoController@crear')->name('crear_acogido')->middleware('role:1');
    route::post('acogido/crear','AcogidoController@guardar')->middleware('role:1');
    route::get('acogido/listar','AcogidoController@listar')->name('listar_acogido')->middleware('role:2');
    route::get('acogido/editar/{id}','AcogidoController@editar')->middleware('role:1');
    route::post('acogido/editar','AcogidoController@actualizar')->middleware('role:1');
    route::get('acogido/eliminar/{id}','AcogidoController@eliminar')->middleware('role:1');
    route::get('acogido/exportar','AcogidoController@export');

    //Empleados
    route::get('empleado/crear','EmpleadoController@crear')->name('crear_empleado')->middleware('role:1');
    route::post('empleado/crear','EmpleadoController@guardar')->middleware('role:1');
    route::get('empleado/listar','EmpleadoController@listar')->name('listar_empleado')->middleware('role:2');
    route::get('empleado/editar/{id}','EmpleadoController@editar')->middleware('role:1');
    route::post('empleado/editar','EmpleadoController@actualizar')->middleware('role:1');
    route::get('empleado/eliminar/{id}','EmpleadoController@eliminar')->middleware('role:1');
    route::get('empleado/exportar','EmpleadoController@export');

    //Sacedotes
    route::get('sacerdote/crear','SacerdoteController@crear')->name('crear_sacerdote')->middleware('role:1');
    route::post('sacerdote/crear','SacerdoteController@guardar')->middleware('role:1');
    route::get('sacerdote/listar','SacerdoteController@listar')->name('listar_sacerdotes')->middleware('role:2');
    route::get('sacerdote/editar/{id}','SacerdoteController@editar')->middleware('role:1');
    route::post('sacerdote/editar','SacerdoteController@actualizar')->middleware('role:1');
    route::get('sacerdote/eliminar/{id}','SacerdoteController@eliminar')->middleware('role:1');
    route::get('sacerdote/exportar','SacerdoteController@export');

    //Religiosos
    route::get('religioso/crear','ReligiosoController@crear')->name('crear_religioso')->middleware('role:1');
    route::post('religioso/crear','ReligiosoController@guardar')->middleware('role:1');
    route::get('religioso/listar','ReligiosoController@listar')->name('listar_religiosos')->middleware('role:2');
    route::get('religioso/editar/{id}','ReligiosoController@editar')->middleware('role:1');
    route::post('religioso/editar','ReligiosoController@actualizar')->middleware('role:1');
    route::get('religioso/eliminar/{id}','ReligiosoController@eliminar')->middleware('role:1');
    route::get('religioso/exportar','ReligiosoController@export');

    //laicos
    route::get('laico/crear','LaicoController@crear')->name('crear_laico')->middleware('role:1');
    route::post('laico/crear','LaicoController@guardar')->middleware('role:1');
    route::get('laico/listar','LaicoController@listar')->name('listar_laicos')->middleware('role:2');
    route::get('laico/editar/{id}','LaicoController@editar')->middleware('role:1');
    route::post('laico/editar','LaicoController@actualizar')->middleware('role:1');
    route::get('laico/eliminar/{id}','LaicoController@eliminar')->middleware('role:1');
    route::get('laico/exportar','LaicoController@export');

     //martitas
     route::get('martita/crear','MartitaController@crear')->name('crear_martita')->middleware('role:1');
     route::post('martita/crear','MartitaController@guardar')->middleware('role:1');
     route::get('martita/listar','MartitaController@listar')->name('listar_martitas')->middleware('role:2');
     route::get('martita/editar/{id}','MartitaController@editar')->middleware('role:1');
     route::post('martita/editar','MartitaController@actualizar')->middleware('role:1');
     route::get('martita/eliminar/{id}','MartitaController@eliminar')->middleware('role:1');
     route::get('martita/exportar','MartitaController@export');

    //oblatos
    route::get('oblato/crear','OblatoController@crear')->name('crear_oblato')->middleware('role:1');
    route::post('oblato/crear','OblatoController@guardar')->middleware('role:1');
    route::get('oblato/listar','OblatoController@listar')->name('listar_oblatos')->middleware('role:2');
    route::get('oblato/editar/{id}','OblatoController@editar')->middleware('role:1');
    route::post('oblato/editar','OblatoController@actualizar')->middleware('role:1');
    route::get('oblato/eliminar/{id}','OblatoController@eliminar')->middleware('role:1');
    route::get('oblato/exportar','OblatoController@export');

    //marias
    route::get('maria/crear','MariaController@crear')->name('crear_maria')->middleware('role:1');
    route::post('maria/crear','MariaController@guardar')->middleware('role:1');
    route::get('maria/listar','MariaController@listar')->name('listar_marias')->middleware('role:2');
    route::get('maria/editar/{id}','MariaController@editar')->middleware('role:1');
    route::post('maria/editar','MariaController@actualizar')->middleware('role:1');
    route::get('maria/eliminar/{id}','MariaController@eliminar')->middleware('role:1');
    route::get('maria/exportar','MariaController@export');

    //otros
    route::get('otro/crear','OtroController@crear')->name('crear_otro')->middleware('role:1');
    route::post('otro/crear','OtroController@guardar')->middleware('role:1');
    route::get('otro/listar','OtroController@listar')->name('listar_otros')->middleware('role:2');
    route::get('otro/editar/{id}','OtroController@editar')->middleware('role:1');
    route::post('otro/editar','OtroController@actualizar')->middleware('role:1');
    route::get('otro/eliminar/{id}','OtroController@eliminar')->middleware('role:1');
    route::get('otro/exportar','OtroController@export');

    //tipo documentos
    route::get('tipodocumento/crear','TipoDocumentoController@crear')->name('crear_tipo')->middleware('role:1');
    route::post('tipodocumento/crear','TipoDocumentoController@guardar')->middleware('role:1');
    route::get('tipodocumento/listar','TipoDocumentoController@listar')->name('listar_tipos')->middleware('role:2');
    route::get('tipodocumento/editar/{id}','TipoDocumentoController@editar')->middleware('role:1');
    route::post('tipodocumento/editar','TipoDocumentoController@actualizar')->middleware('role:1');
    route::get('tipodocumento/eliminar/{id}','TipoDocumentoController@eliminar')->middleware('role:1');
    route::get('tipodocumento/exportar','TipoDocumentoController@export');

    //Renovaciones
    route::get('hermana/renovacion','RenovacionController@index')->middleware('role:2');
    route::get('hermana/renovacion/crear/{id}','RenovacionController@crear')->name('crear_renovacion')->middleware('role:1');
    route::post('hermana/renovacion/crear','RenovacionController@guardar')->middleware('role:1');
    route::get('hermana/renovacion/listar','RenovacionController@listar')->name('listar_renovacion')->middleware('role:2');
    route::get('hermana/renovacion/editar/{id}','RenovacionController@editar')->middleware('role:1');
    route::post('hermana/renovacion/editar','RenovacionController@actualizar')->middleware('role:1');
    route::get('hermana/renovacion/eliminar/{id}','RenovacionController@eliminar')->middleware('role:1');
    
    //ciudadpais 
    route::get('ciudadpais/{pais}','CiudadPaisController@ciudadPais');


  /*Rutas Menu Rol  */ 

    Route::get('menu-rol', 'MenuRolController@index')->name('menu_rol');
    Route::post('menu-rol', 'MenuRolController@store')->name('guardar_menu_rol');

  /*Rutas Permiso Rol  */ 
  
    Route::get('permiso-rol', 'PermisoRolController@index')->name('permiso_rol');
    Route::post('permiso-rol', 'PermisoRolController@store')->name('guardar_permiso_rol');
  
});
Route::group([ 'middleware' => 'auth'], 
  function (){
       Route::get('/listarusuarios','UserController@index')->middleware('role:2');
    Route::get('/editarusuario/{id}','UserController@editar')->middleware('role:1');
    Route::post('/editarusuario','UserController@update')->middleware('role:1');
    Route::get('/eliminarusuario/{id}','UserController@delete')->middleware('role:1');
    Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register')->middleware('role:1');
    Route::post('/usuario/crear', 'UserController@crear')->middleware('role:1');
    route::get('usuarios/{id}','UserController@usuarioByType');
    route::get('usuario/cambiarcontrase«Ða','UserController@cambiarContrase«Ða');
    route::post('usuario/cambiarcontrase«Ða','UserController@updatePassword');


});

Route::group(['prefix' => 'package'],
  function(){
    Route::get('/','PackageController@index');
    Route::get('create','PackageController@create');
    Route::post('create','PackageController@store');
    Route::get('update/{id}','PackageController@edit');
    Route::post('update','PackageController@update');
    Route::get('delete/{id}','PackageController@delete');
  });
