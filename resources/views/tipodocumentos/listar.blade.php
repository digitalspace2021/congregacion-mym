@extends('theme.lte.layout')
@section('title','Listar Tipo de Documentos')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/crear.js")}}" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
    $('#tabla-data').DataTable();
} );</script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Listar Tipo Documentos</h3>
                <div class="box-tools pull-right">
                    @if(Auth::User()->rol == 1)
                        <a href="{{asset('/admin/tipodocumento/crear')}}" class="btn btn-block btn-success btn-sm">
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
                            Tipo documento
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($tipodocumentos as $tipodocumento)
                        <tr>
                            <td>{{$tipodocumento->id}}</td>
                           <td>{{$tipodocumento->nombre}}</td>
                           <td>
                               <a href="{{asset('/admin/tipodocumento/editar/')}}/{{$tipodocumento->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/tipodocumento/eliminar')}}/{{$tipodocumento->id}}" onclick="return confirm('Desea borrar este documento?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection