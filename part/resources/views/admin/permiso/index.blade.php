@extends('theme.lte.layout')
@section('title','Listar')

@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/index.js")}}" type="text/javascript"></script>
@endsection

@section('content')

    <div class="row">
        <div class="col-lg-12">
            @include('includes.mensaje')
            <div class="box box-primary">
                <div class="box-header  text-center with-border">
                <h3 class="box-title">Listar Permisos</h3>
                    <div class="box-tools pull-right">
                        <a href="{{Route('crear_permiso')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    </div> 
                </div>
                <div class="box-body table-responsive no-padding">
                        <table class="table table-striped table-bordered table-hover" id="tabla-data">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Slug</th>
                                <th class="width70">Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($permiso as $row)   
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$row->nombre}}</td>
                                    <td>{{$row->slug}}</td>
                                    <td>
                                        <a href="{{route("editar_permiso",$row->id)}}" class="btn-accion-tabla tooltipsC" title="Editar este registro">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <form action="{{route("eliminar_permiso",$row->id)}}" class="d-inline form-eliminar" method="POST">
                                            @csrf @method("delete")
                                            <button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro"><i class="fa fa-times-circle text-danger"></i></button>
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

@endsection