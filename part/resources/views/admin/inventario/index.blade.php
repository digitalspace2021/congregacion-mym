@extends('theme.lte.layout')
@section('title','Listar Casas')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/index.js")}}" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
    $('#tabla-data').DataTable();
} );
    </script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Listar Inventario</h3>
                    <div class="box-tools pull-right">
                        <a href="{{route('crear_inventario')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    </div>  
            </div>
                <div class="box-body">
                    <table class="table table-striped table-bordered table-hover" id="tabla-data">
                        <thead>
                            <tr>
                                <th class="width20">ID</th>
                                <th>Casa</th>
                                <th>Tipo Inventario</th>
                                <th>Area</th>
                                <th>Contenido</th>
                                <th>Cantidad</th>
                                <th>Valor</th>
                                <th>Factura</th>
                                <th>Doc. Soporte</th>
                                <th>Fecha</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($invent as $row)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$row->casa}}</td>
                                    @if($row->tipo_inventario == 1)
                                    <td>Propio</td>
                                    @else
                                    <td>No pertenece a la comunidad</td>
                                    @endif
                                    <td>{{$row->descripcionArea}}</td>
                                    <td>{{$row->descripcionContenido}}</td>
                                    <td>{{$row->cantidad}}</td>
                                    <td>{{$row->valor}}</td>
                                    <td>{{$row->tiene_factura}}</td>
                                    <td><a href="{{asset('/admin/documento')}}/{{$row->documento_soporte}}" target="_blank">{{$row->documento_soporte}}</a></td>
                                    <td>{{$row->fecha}}</td>
                                    <td>
                                        <a href="{{Route('editar_inventario',$row->id)}}" class="btn-accion-tabla" title="Editar este registro"><i class="fa fa-fw fa-pencil"></i></a>
                                        <form action="{{Route('eliminar_inventario',$row->id)}}" class="d-inline form-eliminar" method="POST">
                                            @csrf
                                            @method("DELETE")
                                            <button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro">
                                                <i class="fa fa-fw fa-trash text-danger"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach    
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection