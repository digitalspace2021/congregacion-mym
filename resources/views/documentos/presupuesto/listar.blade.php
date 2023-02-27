@extends('theme.lte.layout')
@section('title','Listar Documentos')
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
                <h3 class="box-title">Listar Documentos</h3>
                     
            </div>
                <table class="table" id="tabla-data">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Casa
                        </th>
                        <th>
                            Documento
                        </th>
                        <th>
                            año
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($presupuestos as $presupuesto)
                        <tr>
                           <td>{{$presupuesto->id}}</td>
                           <td>{{$presupuesto->casas->nombre_casa}}</td>
                           <td><a href="{{asset('/admin/documento')}}/{{$presupuesto->documento}}" target="_blank">{{$presupuesto->documento}}</a></td>
                           <td>{{$presupuesto->ano }}</td>
                           <td>
                               <a href="{{asset('/admin/documento/presupuesto/editar/')}}/{{$presupuesto->id}}" class="btn btn-info">Editar</a>
                               <a href="{{asset('/admin/documento/presupuesto/eliminar')}}/{{$presupuesto->id}}" onclick="return confirm('Desea borrar este presupuesto?')" class="btn btn-danger">Eliminar</a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection