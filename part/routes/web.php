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

    Route::get('rol', 'RolController@index')->name('rol');
    Route::get('rol/create', 'RolController@create')->name('crear_rol');
    Route::post('rol', 'RolController@store')->name('guardar_rol');
    Route::get('rol/{id}/edit', 'RolController@edit')->name('editar_rol');
    Route::put('rol/{id}', 'RolController@update')->name('actualizar_rol');
    Route::delete('rol/{id}', 'RolController@destroy')->name('eliminar_rol');

  /* RUTAS AREA */

    Route::get('areas', 'AreasController@index')->name('areas');
    Route::get('areas/create', 'AreasController@create')->name('crear_areas');
    Route::post('areas', 'AreasController@store')->name('guardar_areas');
    Route::get('areas/{id}/edit', 'AreasController@edit')->name('editar_areas');
    Route::put('areas/{id}', 'AreasController@update')->name('actualizar_areas');
    Route::delete('areas/{id}', 'AreasController@destroy')->name('eliminar_areas');
    
    Route::get('areaslibros', 'AreaLibroController@index');
    Route::get('areaslibros/create', 'AreaLibroController@create');
    Route::post('areaslibros/create', 'AreaLibroController@store');
    Route::get('areaslibros/edit/{id}', 'AreaLibroController@edit');
    Route::put('areaslibros/{id}', 'AreaLibroController@update')->name('update_a_libros');
    Route::delete('areaslibros/delete/{id}', 'AreaLibroController@destroy');

  /* RUTAS CONTENIDO AREAS */

    Route::get('contenido', 'ContenidoController@index')->name('contenido');
   // Route::get('contenido/{id}', 'ContenidoController@contenidoarea');
    Route::get('contenido/create', 'ContenidoController@create')->name('crear_contenido');
    Route::post('contenido', 'ContenidoController@store')->name('guardar_contenido');
    Route::get('contenido/{id}/edit', 'ContenidoController@edit')->name('editar_contenido');
    Route::put('contenido/{id}', 'ContenidoController@update')->name('actualizar_contenido');
    Route::delete('contenido/{id}', 'ContenidoController@destroy')->name('eliminar_contenido');

  /* RUTAS CONTENIDO INVENTARIO */

    Route::get('inventario', 'InventarioController@index')->name('inventario');
    Route::get('inventario/create', 'InventarioController@create')->name('crear_inventario');
    Route::post('inventario', 'InventarioController@store')->name('guardar_inventario');
    Route::get('inventario/{id}/edit', 'InventarioController@edit')->name('editar_inventario');
    Route::put('inventario/{id}', 'InventarioController@update')->name('actualizar_inventario');
    Route::delete('inventario/{id}', 'InventarioController@destroy')->name('eliminar_inventario');

  /* RUTAS CONTENIDO INFORMES */

    Route::get('informes/{ciudad?}', 'InformesController@index')->name('informes');
    Route::post('informes', 'InformesController@graficar');
  /*RUTAS LIBRO*/

    Route::get('libro', 'LibroController@index')->name('libro');
    Route::get('libro/create', 'LibroController@create')->name('crear_libro');
    Route::post('libro', 'LibroController@store')->name('guardar_libro');
    Route::post('libro/{libro}', 'LibroController@show')->name('ver_libro');
    Route::get('libro/{id}/edit', 'LibroController@edit')->name('editar_libro');
    Route::put('libro/{id}', 'LibroController@update')->name('actualizar_libro');
    Route::delete('libro/{id}', 'LibroController@destroy')->name('eliminar_libro');

  /*RUTAS CASA*/

    Route::get('casa', 'CasaController@index')->name('casa');
    Route::get('casa/create', 'CasaController@create')->name('crear_casa');
    Route::post('casa', 'CasaController@store')->name('guardar_casa');
    Route::get('casa/{id}/edit', 'CasaController@edit')->name('editar_casa');
    Route::put('casa/{id}', 'CasaController@update')->name('actualizar_casa');
    Route::delete('casa/{id}', 'CasaController@destroy')->name('eliminar_casa');
    /*Rutas Menu Rol  */ 
      Route::get('menu-rol', 'MenuRolController@index')->name('menu_rol');
      Route::post('menu-rol', 'MenuRolController@store')->name('guardar_menu_rol');
    /*Rutas Permiso Rol  */ 
      Route::get('permiso-rol', 'PermisoRolController@index')->name('permiso_rol');
      Route::post('permiso-rol', 'PermisoRolController@store')->name('guardar_permiso_rol');
      //Hermanas rutas
    route::get('hermana/crear','HermanaController@crear')->name('crear_hermana');
    route::post('hermana/crear','HermanaController@guardar');
    route::get('hermana/listar','HermanaController@listar')->name('listar_hermana');
    route::get('hermana/editar/{id}','HermanaController@editar');
    route::post('hermana/editar','HermanaController@actualizar');
    route::get('hermana/eliminar/{id}','HermanaController@eliminar');
    route::get('hermana/exportar','HermanaController@export');


    //Envios
    route::get('hermana/envio/crear/{id}','EnvioController@crear');
    route::post('hermana/envio/crear','EnvioController@guardar');
    route::get('hermana/envio/listar','EnvioController@listar');
    route::get('hermana/envio/editar/{id}','EnvioController@editar');
    route::post('hermana/envio/editar','EnvioController@actualizar');
    route::get('hermana/envio/eliminar/{id}','EnvioController@eliminar');

    //Documentos
    route::get('documento/crear/{id}/{usuario}','DocumentoController@crear');
    route::post('documento/crear','DocumentoController@guardar');
    route::get('documento/listar/{id?}/{tipo?}','DocumentoController@listar');
    route::get('documento/editar/{id}','DocumentoController@editar');
    route::post('documento/editar','DocumentoController@actualizar');
    route::get('documento/eliminar/{id}','DocumentoController@eliminar');
    
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
    route::get('equipo/crear','EquipoHermanaController@crear');
    route::post('equipo/crear','EquipoHermanaController@guardar');
    route::get('equipo/listar','EquipoHermanaController@listar');
    route::get('equipo/editar/{id}','EquipoHermanaController@editar');
    route::post('equipo/editar','EquipoHermanaController@actualizar');
    route::get('equipo/eliminar/{id}','EquipoHermanaController@eliminar');
    
    //presupuesto
    route::get('documento/presupuesto/crear/{id}','PresupuestoController@crear');
    route::post('documento/presupuesto/crear','PresupuestoController@guardar');
    route::get('documento/presupuesto/listar','PresupuestoController@listar');
    route::get('documento/presupuesto/editar/{id}','PresupuestoController@editar');
    route::post('documento/presupuesto/editar','PresupuestoController@actualizar');
    route::get('documento/presupuesto/eliminar/{id}','PresupuestoController@eliminar');

    Route::get('/documento/{file}', function ($file) {
      return Storage::response("documentos/$file");
    });

  //PrestamoLibro
  route::get('libro/prestamo/crear','PrestamoLibroController@crear');
  route::post('libro/prestamo/crear','PrestamoLibroController@guardar');
  route::get('libro/prestamo/listar','PrestamoLibroController@listar');
  route::get('libro/prestamo/editar/{id}/{devolver?}','PrestamoLibroController@editar');
  route::post('libro/prestamo/editar','PrestamoLibroController@actualizar');
  route::get('libro/prestamo/eliminar/{id}','PrestamoLibroController@eliminar');

    //Acogidos
    route::get('acogido/crear','AcogidoController@crear')->name('crear_acogido');
    route::post('acogido/crear','AcogidoController@guardar');
    route::get('acogido/listar','AcogidoController@listar')->name('listar_acogido');
    route::get('acogido/editar/{id}','AcogidoController@editar');
    route::post('acogido/editar','AcogidoController@actualizar');
    route::get('acogido/eliminar/{id}','AcogidoController@eliminar');
    route::get('acogido/exportar','AcogidoController@export');

    //Empleados
    route::get('empleado/crear','EmpleadoController@crear')->name('crear_empleado');
    route::post('empleado/crear','EmpleadoController@guardar');
    route::get('empleado/listar','EmpleadoController@listar')->name('listar_empleado');
    route::get('empleado/editar/{id}','EmpleadoController@editar');
    route::post('empleado/editar','EmpleadoController@actualizar');
    route::get('empleado/eliminar/{id}','EmpleadoController@eliminar');
    route::get('empleado/exportar','EmpleadoController@export');


    //Renovaciones
    route::get('hermana/renovacion/crear/{id}','RenovacionController@crear')->name('crear_renovacion');
    route::post('hermana/renovacion/crear','RenovacionController@guardar');
    route::get('hermana/renovacion/listar','RenovacionController@listar')->name('listar_renovacion');
    route::get('hermana/renovacion/editar/{id}','RenovacionController@editar');
    route::post('hermana/renovacion/editar','RenovacionController@actualizar');
    route::get('hermana/renovacion/eliminar/{id}','RenovacionController@eliminar');
    
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
       Route::get('/listarusuarios','UserController@index');
    Route::get('/editarusuario/{id}','UserController@editar');
    Route::post('/editarusuario','UserController@update');
    Route::get('/eliminarusuario/{id}','UserController@delete');
    Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
    Route::post('/usuario/crear', 'UserController@crear');
    route::get('usuarios/{id}','UserController@usuarioByType');
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
