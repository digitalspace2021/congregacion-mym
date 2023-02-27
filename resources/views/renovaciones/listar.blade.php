@extends('theme.lte.layout')
@section('title','Listador Renovaciones')
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
                <h3 class="box-title">Listar Renovaciones</h3>
                     
            </div>
                <table class="table" id="tabla-data">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Renovacion
                        </th>
                        <th>
                            Region
                        </th>
                        <th>
                            Hermana
                        </th>
                        <th>
                            Fecha
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($renovaciones as $renovacion)
                        <tr>
                           <td>{{$renovacion->id}}</td>
                           @if($renovacion->num_renovacion == 1)
                           <td>Primera Renovacion</td>
                           @elseif($renovacion->num_renovacion == 2)
                           <td>Segunda Renovacion</td>
                           @elseif($renovacion->num_renovacion == 3)
                           <td>Tercera Renovacion</td>
                           @elseif($renovacion->num_renovacion == 1)
                           <td>Cuarta Renovacion</td>
                           @endif
                           <td>{{$renovacion->hermana->casas->paises->regiones->region}}</td>
                           <td>{{$renovacion->hermana->nombre}}</td>
                           <td>{{$renovacion->fecha}}</td>
                           

                           <td>
                               <a href="{{asset('/admin/hermana/renovacion/editar/')}}/{{$renovacion->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/hermana/renovacion/eliminar')}}/{{$renovacion->id}}" onclick="return confirm('Desea borrar este renovacion?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection