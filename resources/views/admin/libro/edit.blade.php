@extends('theme.lte.layout')
@section('title','Editar Libro')

@section("styles")
<link href="{{asset("assets/js/bootstrap-fileinput/css/fileinput.min.css")}}" 
rel="stylesheet" type="text/css"/>
@endsection

@section("scriptsPlugins")
<script src="{{asset("assets/js/bootstrap-fileinput/js/fileinput.min.js")}}" 
type="text/javascript"></script>
<script src="{{asset("assets/js/bootstrap-fileinput/js/locales/es.js")}}" 
type="text/javascript"></script>
<script src="{{asset("assets/js/bootstrap-fileinput/themes/fas/theme.min.js")}}"
 type="text/javascript"></script>
@endsection

@section("scripts")
<script src="{{asset("assets/pages/scripts/libro/crear.js")}}" 
type="text/javascript"></script>
@endsection

@section('content')

<div class="row">
        <div class="col-lg-12">
            @include('includes.mensaje')
            @include('includes.form-error')
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Editar Libro</h3>
                    <a href="{{route('libro')}}" class="btn btn-info btn-sm pull-right">
                        <i class="fa fa-fw fa-reply-all"></i>Volver al listado</a>
                </div>
                <form action="{{route('actualizar_libro', $data->id)}}"
                     class="form-horizontal" method="POST" autocomplete="off"
                     enctype="multipart/form-data">
                    @csrf @method("PUT")
                    <div class="box-body">
                        @include('admin.libro.form')
                    </div>
                    <div class="box-footer">
                        <div class="col-lg-5"></div>
                        <div class="col-lg-6">
                            @include('includes.boton-form-editar')
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection