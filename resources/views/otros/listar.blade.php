@extends('theme.lte.layout')
@section('title','Listador Otros')
@section('scripts')
    <script src="{{asset('assets/pages/scripts/admin/crear.js')}}" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
            $('#tabla-data').DataTable();
        });
    </script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Listar Otros</h3>
                <a href="{{asset('/admin/otro/exportar')}}">Exportar</a>

                <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                            <a href="{{asset('admin/otro/crear')}}" class="btn btn-block btn-success btn-sm">
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
                            Region
                        </th>
                        <th>
                            Pais
                        </th>
                        <th>
                            Cargar Documentos
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($otros as $otro)
                        <tr>
                           <td>{{$otro->cedula}}</td>
                           <td>{{$otro->nombre}}</td>
                           <td>{{$otro->casas->paises->regiones->region}}</td>
                           <td>{{$otro->casas->paises->name}}</td>
                            <td><a href="{{asset('admin/documento/crear/')}}/{{$otro->id}}/otro"><i class="fa fa-fw fa-upload"></i></a></td>

                           <td>
                                <a href="{{asset('/admin/otro/editar')}}/{{$otro->id}}" title="editar"><i class="fa fa-fw fa-pencil"></i></a>
                               
                               <a href="{{asset('/admin/otro/eliminar')}}/{{$otro->id}}" onclick="return confirm('Desea borrar este laico?')" title="borrar"><i class="fa fa-fw fa-trash text-danger"></i></a>

                               <a href="{{asset('admin/documento/listar')}}/{{$otro->id}}/10" title="Ver documentos"><i class="fa fa-eye"></i></a>
 
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection