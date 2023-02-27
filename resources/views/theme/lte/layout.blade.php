<!DOCTYPE html>
<html>
    <head><meta charset="gb18030">
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Congregación M & M - @yield('title')</title>

        <!-- Inicio Css -->

        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="{{asset('assets/lte/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('assets/lte/bower_components/font-awesome/css/font-awesome.min.css')}}">
        <!-- Ionicons -->
        <link rel="stylesheet" href="{{asset('assets/lte/bower_components/Ionicons/css/ionicons.min.css')}}">
        <!-- DataTables -->
        <link rel="stylesheet" href="{{asset('assets/lte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')}}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{asset('assets/lte/dist/css/AdminLTE.min.css')}}">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
            folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="{{asset('assets/lte/dist/css/skins/_all-skins.min.css')}}">
        <!-- Ventanas Mensajes -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
      
        @yield('styles')

        <link rel="stylesheet" href="{{asset('assets/css/custom.css')}}">


        <!-- Fin Css -->

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue fixed sidebar-mini">
        <div class="wraper">
            <!-- Inicio Header -->
            @include('theme/lte/header')
            <!-- Fin Header -->
            <!-- Inicio Aside -->
            @include('theme/lte/aside')
            <!-- Fin Aside -->
            <div class="content-wrapper">
                <section class="content">
                    @yield('content')
                </section>
            </div>
            <!-- Inicio Footer -->
            @include('theme/lte/footer')
            <!-- Fin Footer -->
        </div>

        <!-- Inicio Script -->

        <!-- jQuery 3 -->
        <script src="{{asset('assets/lte/bower_components/jquery/dist/jquery.min.js')}}"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="{{asset('assets/lte/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
        <!-- DataTables -->
        <script src="{{asset('assets/lte/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
        <script src="{{asset('assets/lte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
        <!-- SlimScroll -->
        <script src="{{asset('assets/lte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
        <!-- FastClick -->
        <script src="{{asset('assets/lte/bower_components/fastclick/lib/fastclick.js')}}"></script>
        <!-- AdminLTE App -->
        <script src="{{asset('assets/lte/dist/js/adminlte.min.js')}}"></script>
        <!-- JQuery Validation -->
        @yield('scriptsPlugins')
        <script src="{{asset('assets/js/jquery-validation/jquery.validate.min.js')}}"></script>
        <script src="{{asset('assets/js/jquery-validation/localization/messages_es.min.js')}}"></script>
        <!-- Ventanas Mensajes -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <!-- Fin Ventanas Mensajes -->
        <script src="{{asset('assets/js/funciones.js')}}"></script>
        <script src="{{asset('assets/js/scripts.js')}}"></script>
 
        @yield('scripts')

        <!-- Fin Script -->

    </body>
</html>