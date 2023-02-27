@extends('theme.lte.layout')
@section('title','Listador Acogidos')
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
                <h3 class="box-title">Listar Acogidos</h3>
                <a href="{{asset('/admin/acogido/exportar')}}">Exportar</a>
                <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                            <a href="{{asset('admin/acogido/crear')}}" class="btn btn-block btn-success btn-sm">
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
                        @foreach($acogidos as $acogido)
                        <tr>
                           <td>{{$acogido->id}}</td>
                           <td>{{$acogido->nombre}}</td>
                           @if($acogido->genero == 1)
                            <td>M</td>
                           @elseif($acogido->genero == 2)
                           <td>F</td>
                           @endif
                           <td>{{$acogido->casas->paises->regiones->region}}</td>
                            <td>{{$acogido->casas->paises->name}}</td>
                           <td>
                                <a href="{{asset('admin/documento/crear/')}}/{{$acogido->id}}/acogido"><i class="fa fa-fw fa-upload"></i></a>
                           </td>
                           <td>
                                <a href="{{asset('/admin/acogido/editar')}}/{{$acogido->id}}" title="editar"><i class="fa fa-fw fa-pencil"></i></a>
                               
                               <a href="{{asset('/admin/acogido/eliminar')}}/{{$acogido->id}}" onclick="return confirm('Desea borrar este acogido?')" title="borrar"><i class="fa fa-fw fa-trash text-danger"></i></a>
                               
                               <a href="{{asset('admin/documento/listar')}}/{{$acogido->id}}/3" title="ver documentos"><i class="fa fa-eye"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection