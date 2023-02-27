@extends('theme.lte.layout')
@section('title','Listar oblatos de Betania')
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
                <h3 class="box-title">Listar Oblatos de Betania</h3>
                <a href="{{asset('/admin/oblato/exportar')}}">Exportar</a>

                <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                            <a href="{{asset('admin/oblato/crear')}}" class="btn btn-block btn-success btn-sm">
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
                        @foreach($oblatos as $oblato)
                        <tr>
                           <td>{{$oblato->cedula}}</td>
                           <td>{{$oblato->nombre}}</td>
                            <td>{{$oblato->casas->paises->regiones->region}}</td>
                           <td>{{$oblato->casas->paises->name}}</td>
                            <td><a href="{{asset('admin/documento/crear/')}}/{{$oblato->id}}/oblato"><i class="fa fa-fw fa-upload"></i></a></td>
                           <td>
                                <a href="{{asset('/admin/oblato/editar')}}/{{$oblato->id}}" title="editar"><i class="fa fa-fw fa-pencil"></i></a>
                               
                               <a href="{{asset('/admin/oblato/eliminar')}}/{{$oblato->id}}" onclick="return confirm('Desea borrar este laico?')" title="borrar"><i class="fa fa-fw fa-trash text-danger"></i></a>

                               <a href="{{asset('admin/documento/listar')}}/{{$oblato->id}}/8" title="Ver documentos"><i class="fa fa-eye"></i></a>
 
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection