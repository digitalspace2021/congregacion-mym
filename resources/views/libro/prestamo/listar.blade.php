@extends('theme.lte.layout')
@section('title','Listador Prestamos')
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
                <h3 class="box-title">Listar Prestamos</h3>

                    <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1 or Auth::User()->rol == 3)
                        <a href="{{asset('admin/libro/prestamo/crear')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    @endif
                    </div>  
            </div>
                <table class="table" id="tabla-data">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Usuario Presto
                        </th>
                        <th>
                            Libro
                        </th>
                        <th>
                            Fecha
                        </th>
                        <th>
                            Prestado A
                        </th>
                        <th>
                            Estado
                        </th>
                        <th>
                            Fecha Devolucion
                        </th>
                        <th>
                            Accion
                        </th>
                        <th>
                            Devolver
                        </th>
                    </thead>
                    <tbody>
                        @foreach($prestamos as $prestramo)
                        <tr>
                           <td>{{$prestramo->id}}</td>
                           <td>{{$prestramo->usuarios->nombre}}</td>
                           <td>{{$prestramo->libro->titulo}}</td>
                           <td>{{$prestramo->fecha_prestamo}}</td>
                           <td>{{$prestramo->prestado_a}}</td>
                           @if($prestramo->estado == 0)
                           <td>No devuelto</td>
                           @else
                           <td>Devuelto</td>
                           @endif
                           <td>{{$prestramo->fecha_devolucion}}</td>

                           <td>
                               <a href="{{asset('/admin/libro/prestamo/editar/')}}/{{$prestramo->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/libro/prestamo/eliminar')}}/{{$prestramo->id}}" onclick="return confirm('Desea borrar este prestamo?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                            @if($prestramo->estado == 0)
                           <td>
                           <a href="{{asset('/admin/libro/prestamo/editar')}}/{{$prestramo->id}}/1" onclick="return confirm('Desea Entregar Este Libro?')"><i class="fa fa-fw fa-check"></i></a>
                            </td>
                            @else
                            <td></td>
                            @endif
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection