<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="{{asset("img/logo.jpeg")}}" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info"><br>
        <p>Congregacion M & M</p>
      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">Menú Principal</li>
        @foreach ($menusComposer as $key => $item)
            @if ($item["menu_id"] != 0)
                @break
            @endif
            @include("theme.$theme.menu-item", ["item" => $item])
        @endforeach
    </ul>


    <ul class="sidebar-menu" data-widget="tree">
        @if(Auth::User()->rol == 2 )
          <li class="treeview">
                <a href="#">
                  <i class="fa fa-users"></i> <span>Registro de Personal</span>
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Hermanas
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_hermana')}}"><i class="fa fa-circle-o"></i> Listar Hermana</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Empleados
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_empleado')}}"><i class="fa fa-circle-o"></i> Listar Empleados</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Acogidos
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_acogido')}}"><i class="fa fa-circle-o"></i> Listar Acogidos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Sacerdotes
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_sacerdotes')}}"><i class="fa fa-circle-o"></i> Listar Sacerdotes</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Religiosos
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_religiosos')}}"><i class="fa fa-circle-o"></i> Listar Religiosos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Laicos Consagrados
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_laicos')}}"><i class="fa fa-circle-o"></i> Listar Laicos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Consagradas Martitas
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_martitas')}}"><i class="fa fa-circle-o"></i> Listar Martitas</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Oblatos de Betania
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_oblatos')}}"><i class="fa fa-circle-o"></i> Listar Oblatos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Maria de Betania
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_marias')}}"><i class="fa fa-circle-o"></i> Listar Marias</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Otros
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('listar_otros')}}"><i class="fa fa-circle-o"></i> Listar Otros</a></li>
                        </ul>
                      </li>
                
                    </ul>
              </li>
              <li class="treeview">
            <a href="#">
              <i class="fa fa-home"></i> <span>Registro de Conventos</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Conventos
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('casa')}}"><i class="fa fa-circle-o"></i> Listar Conventos</a></li>
                  <li><a href="{{asset('admin/documento/presupuesto/listar')}}"><i class="fa fa-circle-o"></i> Listar Presupuestos</a></li>

                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Inventario
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('inventario')}}"><i class="fa fa-circle-o"></i> Listar Inventario</a></li>
                </ul>
              </li>
            </ul>
        </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-user"></i> <span>Documentos</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{asset('admin/documento/listar')}}"><i class="fa fa-circle-o"></i> Listar Documentos</a></li>
        </ul>
      </li>
    @else
      <li class="treeview">
            <a href="#">
              <i class="fa fa-gears"></i> <span>Administracion</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Roles
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_rol')}}"><i class="fa fa-circle-o"></i> Crear Roles</a></li>
                  <li><a href="{{Route('rol')}}"><i class="fa fa-circle-o"></i> Listar Roles</a></li>
                  <!--<li><a href="{{Route('menu_rol')}}"><i class="fa fa-circle-o"></i> Menu -    Rol</a></li>-->
                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Usuarios
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                
                  
                  <li><a href="{{asset('/register')}}"><i class="fa fa-circle-o"></i> Crear Usuarios</a></li>
            <li><a href="{{asset('/listarusuarios')}}"><i class="fa fa-circle-o"></i> Listar Usuarios</a></li>
                  
                  <!--<li><a href="{{Route('menu_rol')}}"><i class="fa fa-circle-o"></i> Menu -    Rol</a></li>-->
                </ul>
              </li>
              <!--<li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Permisos
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_permiso')}}"><i class="fa fa-circle-o"></i> Crear Permisos</a></li>
                  <li><a href="{{Route('permiso')}}"><i class="fa fa-circle-o"></i> Listar Permisos</a></li>
                  <li><a href="{{Route('permiso_rol')}}"><i class="fa fa-circle-o"></i> Permiso - Rol</a></li>
                </ul>
              </li>-->
              <li class="treeview">
            <a href="#">
              <i class="fa fa-home"></i> <span>Configuraciones</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Areas Casa
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_areas')}}"><i class="fa fa-circle-o"></i> Crear Area</a></li>
                  <li><a href="{{Route('areas')}}"><i class="fa fa-circle-o"></i> Listar Area</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Areas Biblioteca
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{asset('admin/areaslibros/create')}}"><i class="fa fa-circle-o"></i> Crear Area</a></li>
                  <li><a href="{{asset('admin/areaslibros')}}"><i class="fa fa-circle-o"></i> Listar Area</a></li>
                </ul>
              </li>
               <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Hermanas
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{asset('admin/equipo/crear')}}"><i class="fa fa-circle-o"></i> Crear Equipo Hermana</a></li>
                  <li><a href="{{asset('admin/equipo/listar')}}"><i class="fa fa-circle-o"></i> Listar Equipo Hermana</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Contenido Areas Casa
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_contenido')}}"><i class="fa fa-circle-o"></i> Crear Contenido Area</a></li>
                  <li><a href="{{Route('contenido')}}"><i class="fa fa-circle-o"></i> Listar Contenido Area</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i>  Tipo Documentos
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_tipo')}}"><i class="fa fa-circle-o"></i> Crear Tipo Documentos</a></li>
                  <li><a href="{{Route('listar_tipos')}}"><i class="fa fa-circle-o"></i> Listar Tipo Documentos</a></li>
                </ul>
              </li>
              
            </ul>
            
        </li>
         
            </ul>
            
          </li>
          <li class="treeview">
                <a href="#">
                  <i class="fa fa-users"></i> <span>Registro de Personal</span>
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Hermanas
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_hermana')}}"><i class="fa fa-circle-o"></i> Crear Hermanas</a></li>
                          <li><a href="{{Route('listar_hermana')}}"><i class="fa fa-circle-o"></i> Listar Hermana</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Empleados
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_empleado')}}"><i class="fa fa-circle-o"></i> Crear Empleados</a></li>
                          <li><a href="{{Route('listar_empleado')}}"><i class="fa fa-circle-o"></i> Listar Empleados</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Acogidos
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_acogido')}}"><i class="fa fa-circle-o"></i> Crear Acogidos</a></li>
                          <li><a href="{{Route('listar_acogido')}}"><i class="fa fa-circle-o"></i> Listar Acogidos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Sacerdotes
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_sacerdote')}}"><i class="fa fa-circle-o"></i> Crear Sacerdotes</a></li>
                          <li><a href="{{Route('listar_sacerdotes')}}"><i class="fa fa-circle-o"></i> Listar Sacerdotes</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Religiosos
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_religioso')}}"><i class="fa fa-circle-o"></i> Crear Religioso</a></li>
                          <li><a href="{{Route('listar_religiosos')}}"><i class="fa fa-circle-o"></i> Listar Religiosos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Laicos Consagrados
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_laico')}}"><i class="fa fa-circle-o"></i> Crear Laico</a></li>
                          <li><a href="{{Route('listar_laicos')}}"><i class="fa fa-circle-o"></i> Listar Laicos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Consagradas Martitas
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_martita')}}"><i class="fa fa-circle-o"></i> Crear Martita</a></li>
                          <li><a href="{{Route('listar_martitas')}}"><i class="fa fa-circle-o"></i> Listar Martitas</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Oblatos de Betania
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_oblato')}}"><i class="fa fa-circle-o"></i> Crear Oblato</a></li>
                          <li><a href="{{Route('listar_oblatos')}}"><i class="fa fa-circle-o"></i> Listar Oblatos</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Maria de Betania
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_maria')}}"><i class="fa fa-circle-o"></i> Crear Maria</a></li>
                          <li><a href="{{Route('listar_marias')}}"><i class="fa fa-circle-o"></i> Listar Marias</a></li>
                        </ul>
                      </li>
                      <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i>  Otros
                          <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                          </span>
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="{{Route('crear_otro')}}"><i class="fa fa-circle-o"></i> Crear Otros</a></li>
                          <li><a href="{{Route('listar_otros')}}"><i class="fa fa-circle-o"></i> Listar Otros</a></li>
                        </ul>
                      </li>
                
                    </ul>
              </li>
              <li class="treeview">
            <a href="#">
              <i class="fa fa-home"></i> <span>Registro de Conventos</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Conventos
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_casa')}}"><i class="fa fa-circle-o"></i> Crear Conventos</a></li>
                  <li><a href="{{Route('casa')}}"><i class="fa fa-circle-o"></i> Listar Conventos</a></li>
                  <li><a href="{{asset('admin/documento/presupuesto/listar')}}"><i class="fa fa-circle-o"></i> Listar Presupuestos</a></li>

                </ul>
              </li>
              <li class="treeview">
                <a href="#"><i class="fa fa-circle-o"></i> Inventario
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="{{Route('crear_inventario')}}"><i class="fa fa-circle-o"></i> Crear Inventario</a></li>
                  <li><a href="{{Route('inventario')}}"><i class="fa fa-circle-o"></i> Listar Inventario</a></li>
                </ul>
              </li>
            </ul>
        </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-user"></i> <span>Documentos</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{asset('admin/documento/listar')}}"><i class="fa fa-circle-o"></i> Listar Documentos</a></li>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-book"></i> <span>Biblioteca</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="treeview">
            <a href="#"><i class="fa fa-circle-o"></i> Inventario de Libros
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{Route('crear_libro')}}"><i class="fa fa-circle-o"></i> Crear libro</a></li>
              <li><a href="{{Route('libro')}}"><i class="fa fa-circle-o"></i> Listar libros</a></li>
            </ul>
          </li>
          <li class="treeview">
            <a href="#"><i class="fa fa-circle-o"></i> Prestamo Libros
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{asset('admin/libro/prestamo/crear')}}"><i class="fa fa-circle-o"></i> Prestamo</a></li>
              <li><a href="{{asset('admin/libro/prestamo/listar')}}"><i class="fa fa-circle-o"></i> Listar</a></li>
            </ul>
          </li>
        </ul>
    </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-truck"></i> <span>Envios</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
        <li><a href="{{asset('admin/hermana/envio')}}"><i class="fa fa-circle-o"></i> Registrar Envio</a></li>
        <li><a href="{{asset('admin/hermana/envio/listar')}}"><i class="fa fa-circle-o"></i> Lista de Envios</a></li>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-files-o"></i> <span>Renovaciones</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
        <li><a href="{{asset('admin/hermana/renovacion')}}"><i class="fa fa-circle-o"></i> Registrar Renovacion</a></li>
        <li><a href="{{asset('admin/hermana/renovacion/listar')}}"><i class="fa fa-circle-o"></i> Lista de Renovaciones</a></li>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-font"></i> <span>Informes</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{Route('informes')}}"><i class="fa fa-circle-o"></i> Informes</a></li>
        </ul>
      </li>
      @endif
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>