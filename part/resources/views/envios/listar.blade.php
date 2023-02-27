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
                <h3 class="box-title">Listar Envios</h3>
                     
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
                            Pais
                        </th>
                        <th>
                            Ciudad
                        </th>
                        <th>
                            Fecha
                        </th>
                        <th>
                            Cargo
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($envios as $envio)
                        <tr>
                           <td>{{$envio->id}}</td>
                           <td>{{$envio->hermana->nombre}}</td>
                           <td>{{$envio->paises->name}}</td>
                           <td>{{$envio->ciudades->name}}</td>
                           <td>{{$envio->fecha}}</td>
                           <td>{{$envio->cargo}}</td>
                           <td>
                               <a href="{{asset('/admin/hermana/envio/editar/')}}/{{$envio->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/hermana/envio/eliminar')}}/{{$envio->id}}" onclick="return confirm('Desea borrar este envio?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection