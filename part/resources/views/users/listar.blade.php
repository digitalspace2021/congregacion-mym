@extends('theme.lte.layout')
@section('title','Crear Rol')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/crear.js")}}" type="text/javascript"></script>
    <script>
    $(document).ready(function() {
    $('#tabla-data').DataTable();
} );
</script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Listar Usuarios</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('register')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    </div>  
            </div>
            
                <table class="table" id="tabla-data">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Usuario
                        </th>
                        <th>
                            Rol
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                           <td>{{$user->id}}</td>
                           <td>{{$user->usuario}}</td>
                            <td>{{$user->roles->nombre}}</td>
                           <td>
                               <a href="{{asset('/editarusuario')}}/{{$user->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/eliminarusuario')}}/{{$user->id}}"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection