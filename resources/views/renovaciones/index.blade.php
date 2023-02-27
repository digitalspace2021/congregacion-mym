@extends('theme.lte.layout')
@section('title','Envios')
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
                <h3 class="box-title">Listar Hermanas</h3>
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
                           Renovaciones
                        </th>
                    </thead>
                    <tbody>
                        @foreach($hermanas as $hermana)
                        <tr>
                            <td>{{$hermana->cedula_ciudadania}}</td>
                            <td>{{$hermana->nombre}}</td>
                            <td>{{$hermana->casas->paises->regiones->region}}</td>
                            <td>{{$hermana->casas->paises->name}}</td>
                            <td>
                                <a href="{{asset('admin/hermana/renovacion/crear/')}}/{{$hermana->id}}">Registrar Renovacion</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection 