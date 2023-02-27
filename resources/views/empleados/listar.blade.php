@extends('theme.lte.layout')
@section('title','Listador Empleados')
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
                <h3 class="box-title">Listar Empleados</h3>
                <a href="{{asset('/admin/empleado/exportar')}}">Exportar</a>

                <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                            <a href="{{asset('admin/empleado/crear')}}" class="btn btn-block btn-success btn-sm">
                                <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                            </a>
                    @endif
                </div> 
            </div>
                <table class="table" id="tabla-data">
                    <thead>
                        <th>
                            Cedula
                        </th>
                        <th>
                            Nombre
                        </th>
                        <th>
                            Genero
                        </th>
                        <th>
                            Region
                        </th>
                        <th>
                            Pais
                        </th>
                        <th>
                            Documentos
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($empleados as $empleado)
                        <tr>
                            <td>{{$empleado->cedula_ciudadania}}</td>
                            <td>{{$empleado->nombre}}</td>
                            <td>@if($empleado->genero == 1)
                                    M
                                @else
                                    F
                                @endif
                            </td>
                            <td>{{$empleado->casas->paises->regiones->region}}</td>
                            <td>{{$empleado->casas->paises->name}}</td>
                            <td>
                                <a href="{{asset('admin/documento/crear/')}}/{{$empleado->id}}/empleado"><i class="fa fa-fw fa-upload"></i></a>
                           </td>
                           <td>
                                <a href="{{asset('/admin/empleado/editar')}}/{{$empleado->id}}" title="editar"><i class="fa fa-fw fa-pencil"></i></a>
                                
                               <a href="{{asset('/admin/empleado/eliminar')}}/{{$empleado->id}}" onclick="return confirm('Desea borrar este empleado?')" title="borrar"><i class="fa fa-fw fa-trash text-danger"></i></a>
                               
                                <a href="{{asset('admin/documento/listar')}}/{{$empleado->id}}/2" title="Ver documentos"><i class="fa fa-eye"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection