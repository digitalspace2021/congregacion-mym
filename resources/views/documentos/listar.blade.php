@extends('theme.lte.layout')
@section('title','Listar Documentos')
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
                <h3 class="box-title">Listar Documentos</h3>
                     
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
                            Documento
                        </th>
                        <th>
                            tipo_documento
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($documentos as $documento)
                        <tr>
                           <td>{{$documento->id}}</td>
                           @if($documento->hermanas)
                           <td>Hermana: {{$documento->hermanas->nombre}}</td>
                           @elseif($documento->empleados)
                           <td>Empleado: {{$documento->empleados->nombre}}</td>
                           @elseif($documento->acogidos)
                           <td>Acogido: {{$documento->acogidos->nombre}}</td>
                           @elseif($documento->casas)
                           <td>Casa: {{$documento->casas->nombre_casa}}</td>
                           @elseif($documento->sacerdotes)
                           <td>Sacerdote: {{$documento->sacerdotes->nombre}}</td>
                           @elseif($documento->religiosos)
                           <td>Religioso: {{$documento->religiosos->nombre}}</td>
                           @elseif($documento->laicos)
                           <td>Laico: {{$documento->laicos->nombre}}</td>
                           @elseif($documento->martitas)
                           <td>Martita: {{$documento->martitas->nombre}}</td>
                           @elseif($documento->oblatos)
                           <td>Oblato: {{$documento->oblatos->nombre}}</td>
                           @elseif($documento->marias)
                           <td>Maria: {{$documento->marias->nombre}}</td>
                           @elseif($documento->otros)
                           <td>Otro: {{$documento->otros->nombre}}</td>
                           @endif
                           <td><a href="{{asset('/admin/documento')}}/{{$documento->documento}}" target="_blank">{{$documento->documento}}</a></td>
                           <td>{{$documento->tipo_doc->nombre}}</td>
                           <td>
                               <a href="{{asset('/admin/documento/editar/')}}/{{$documento->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/documento/eliminar')}}/{{$documento->id}}" onclick="return confirm('Desea borrar este documento?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection