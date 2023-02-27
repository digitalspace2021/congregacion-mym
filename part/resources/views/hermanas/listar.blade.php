@extends('theme.lte.layout')
@section('title','Listador Hermanas')
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
                <a href="{{asset('/admin/hermana/exportar')}}">Exportar</a>
                     
                    <div class="box-tools pull-right">
                        <a href="{{asset('admin/hermana/crear')}}" class="btn btn-block btn-success btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                        </a>
                    </div>  
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
                            ID Hermana
                        </th>
                        <th>
                            Cedula
                        </th>
                        <th>
                            Documentos
                        </th>
                        <th>Accion</th>
                    </thead>
                    <tbody>
                        @foreach($hermanas as $hermana)
                        <tr>
                           <td>{{$hermana->id}}</td>
                           <td>{{$hermana->nombre}}</td>
                           <td>{{$hermana->id_hermana}}</td>
                            <td>{{$hermana->cedula_ciudadania}}</td>
                           <td>
                              
                               <select class="btn bnt-info" name="accion" onchange="window.location.href=this.value;">
                                    <option>Cargar Documentos</option>
                                    <option value="{{asset('admin/hermana/envio/crear/')}}/{{$hermana->id}}">Registrar Envio</option>
                                    <option value="{{asset('admin/documento/crear/')}}/{{$hermana->id}}/hermana">Registrar Documentos</option>
                                    <option value="{{asset('admin/hermana/renovacion/crear/')}}/{{$hermana->id}}">Registrar Renovacion</option>

                                </select>
                               
                           </td>
                           <td>
                                <a href="{{asset('/admin/hermana/editar')}}/{{$hermana->id}}" title="editar"><i class="fa fa-fw fa-pencil"></i></a>
                               
                                <a href="{{asset('/admin/hermana/eliminar')}}/{{$hermana->id}}" onclick="return confirm('Desea borrar esta hermana?')"title="borrar"><i class="fa fa-fw fa-trash text-danger"></i></a>
                               
                                 <a href="{{asset('admin/documento/listar')}}/{{$hermana->id}}/1" title="Ver documentos"><i class="fa fa-eye"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection 