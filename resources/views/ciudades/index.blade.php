@extends('theme.lte.layout')
@section('title','Listador Ciudades')
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
                <h3 class="box-title">Listar Ciudades</h3>
                     
            </div>
                <table class="table">
                    <thead>
                        <th>
                            Id
                        </th>
                        <th>
                            Ciudad
                        </th>
                        <th>
                            Accion
                        </th>
                    </thead>
                    <tbody>
                        @foreach($ciudades as $ciudad)
                        <tr>
                           <td>{{$ciudad->id}}</td>
                           <td>{{$ciudad->name}}</td>
                           <td>
                               <a href="{{asset('/admin/ciudad/editar')}}/{{$ciudad->id}}"><i class="fa fa-fw fa-pencil"></i></a>
                               <a href="{{asset('/admin/ciudad/eliminar')}}/{{$ciudad->id}}" onclick="return confirm('Desea borrar esta ciudad?')"><i class="fa fa-fw fa-trash text-danger"></i></a>
                           </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
</div>

@endsection