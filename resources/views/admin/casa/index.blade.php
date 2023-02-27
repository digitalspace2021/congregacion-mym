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
                <h3 class="box-title">Listar Casas</h3>
                    <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                        <a href="{{route('crear_casa')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    @endif
                    </div>  
            </div>
                <div class="box-body">
                    <table class="table table-striped table-bordered table-hover" id="tabla-data">
                        <thead>
                            <tr>
                                <th class="width20">ID</th>
                                <th>Fecha Fundacion</th>
                                <th>Nombre Casa</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Encargado</th>
                                <th>Documentos</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($casa as $row)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$row->fecha_fundacion}}</td>
                                    <td>{{$row->nombre_casa}}</td>
                                    <td>{{$row->direccion_casa}}</td>
                                    <td>{{$row->telefono_casa}}</td>
                                    <td>{{$row->nombre_encargado}}</td>
                                    <td>
                                        
                                        <select class="btn bnt-info" name="accion" onchange="window.location.href=this.value;">
                                            <option>Cargar</option>
                                            <option value="{{asset('admin/documento/presupuesto/crear/')}}/{{$row->id}}">Registrar Documento Presupuesto</option>      
                                            <option value="{{asset('admin/documento/crear/')}}/{{$row->id}}/casa">Registrar Documentos</option>      
                                         </select>
                                         
                                    </td>
                                    <td>
                                        <a href="{{Route('editar_casa',$row->id)}}" class="btn-accion-tabla" title="Editar este registro"><i class="fa fa-fw fa-pencil"></i></a>
                                        <form action="{{Route('eliminar_casa',$row->id)}}" class="d-inline form-eliminar" method="POST">
                                            @csrf
                                            @method("DELETE")
                                            <button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro">
                                                <i class="fa fa-fw fa-trash text-danger"></i>
                                            </button>
                                        </form>
                                        
                                        <a href="{{asset('admin/documento/listar')}}/{{$row->id}}/0"><i class="fa fa-eye" title="Ver Documentos"></i></a>
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