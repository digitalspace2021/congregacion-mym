@extends("theme.lte.layout")
@section('title','Libros')

@section("scripts")
<script src="{{asset("assets/pages/scripts/libro/index.js")}}" 
type="text/javascript"></script>
<script>
    $(document).ready(function() {
    $('#tabla-data').DataTable();
} );
</script>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
            @csrf
        @include('includes.mensaje')
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Libros</h3>
                <div class="box-tools pull-right">
                    <a href="{{route('crear_libro')}}" 
                    class="btn btn-block btn-success btn-sm">
                        <i class="fa fa-fw fa-plus-circle"></i> Nuevo registro
                    </a>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped table-bordered table-hover"
                 id="tabla-data">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Título</th>
                            <th>Cantidad</th>
                            <th>Autor</th>
                            <th class="width70">Accion</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($datas as $row)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td><a href="{{route('ver_libro',$row)}}" 
                                class="ver-libro">{{$row->titulo}}</a></td>
                            <td>{{$row->cantidad}}</td>
                            <td>{{$row->autor}}</td>
                            <td>
                                <a href="{{route('editar_libro',$row->id)}}"
                                     class="btn-accion-tabla tooltipsC"
                                      title="Editar este registro">
                                    <i class="fa fa-fw fa-pencil"></i>
                                </a>

                                <form action="{{route('eliminar_libro',$row->id)}}" 
                                    class="d-inline form-eliminar" method="POST">
                                    @csrf @method("DELETE")
                                    <button type="submit" 
                                    class="btn-accion-tabla eliminar tooltipsC"
                                     title="Eliminar este registro">
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

<div class="modal fade" id="modal-ver-libro" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" 
                aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">Libro</h4>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" 
                data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

@endsection
