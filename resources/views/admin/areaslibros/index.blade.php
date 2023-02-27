@extends('theme.lte.layout')
@section('title','Descripciones')
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
                <h3 class="box-title">Descripciones</h3>
                    <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                        <a href="{{asset('/admin/areaslibros/create')}}" class="btn btn-block btn-success btn-sm">
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
                                <th>Descripcion</th>
                                <th class="width70">Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $row)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$row->area}}</td>
                                    <td>
                                        <a href="{{asset('admin/areaslibros/edit')}}/{{$row->id}}" class="btn-accion-tabla" title="Editar este registro"><i class="fa fa-fw fa-pencil"></i></a>
                                        <form action="{{asset('admin/areaslibros/delete')}}/{{$row->id}}" class="d-inline form-eliminar" method="POST">
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