@extends('theme.lte.layout')
@section('title','Listador Paises')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/crear.js")}}" type="text/javascript"></script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Listar Paises</h3>
                     
            </div>
                <table class="table">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Code
                        </th>
                        <th>
                            Pais
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($paises as $pais)
                        <tr>
                           <td>{{$pais->id}}</td>
                           <td>{{$pais->code}}</td>
                           <td>{{$pais->name}}</td>
                           <td>
                               <a href="{{asset('/admin/pais/editar')}}/{{$pais->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/pais/eliminar')}}/{{$pais->id}}" onclick="return confirm('Desea borrar este pais?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                               <select class="btn bnt-info" name="accion" onchange="window.location.href=this.value;">
                                    <option>Mas</option>
                                    <option value="{{asset('admin/ciudad/crear/')}}/{{$pais->code}}">Registrar Ciudad</option>
                                    <option value="{{asset('admin/ciudades')}}/{{$pais->code}}">Ver Ciudades</option>
                                </select>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection