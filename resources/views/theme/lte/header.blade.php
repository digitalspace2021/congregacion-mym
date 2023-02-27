<header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>CMM</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg">Congregación M & M</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
    
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="{{asset('img/logo.jpeg')}}" class="user-image" alt="User Image">
                  <span class="hidden-xs">Hola, {{Auth::user()->nombre}}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="{{asset('img/logo.jpeg')}}" class="img-circle" alt="User Image">
    
                    <p>
                      Congregacion M & M
                      <small>2019</small>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-right">
                      <a class="btn btn-default btn-flat" href="{{asset('usuario/cambiarcontraseña') }}">
                          Cambiar Contraseña
                      </a>
                      <a class="btn btn-default btn-flat" href="{{ route('logout') }}">
                       Cierra sesion
                      </a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
    
      <!-- =============================================== -->