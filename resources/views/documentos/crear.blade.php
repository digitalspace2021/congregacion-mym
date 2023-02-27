@extends('theme.lte.layout')
@section('title','Crear Documento')
@section('scripts')
    <script src="{{asset('assets/pages/scripts/admin/crear.js')}}" type="text/javascript"></script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Crear Documento</h3>
                    <div class="box-tools pull-right">
                        <a href="#" onclick="history.go(-1)" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            @if($usuario == "casa")
                <h3>{{$usuario}} : {{$usuarioNombre->nombre_casa}}</h3>
            @else
            <h3>{{$usuario}} : {{$usuarioNombre->nombre}}</h3>
            @endif
            <form method="POST" action="{{ asset('admin/documento/crear') }}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id" value="{{$id}}">
                <input type="hidden" name="usuario" value="{{$usuario}}">

                <div class="form-group row">
                    <label for="documento" class="col-md-4 col-form-label text-md-right">{{ __('Documento') }}</label>

                    <div class="col-md-6">
                        <input type="file" class="form-control @error('documento') is-invalid @enderror" name="documento" id="documento"   required autocomplete="documento" autofocus>

                        @error('documento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="tipo_documento" class="col-md-4 col-form-label text-md-right">{{ __('Tipo Documento') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('tipo_documento') is-invalid @enderror" name="tipo_documento" required autocomplete="tipo_documento" autofocus>
                            @foreach($tipo_doc as $tipo)
                                <option value="{{$tipo->id}}">{{$tipo->nombre}}</option>
                            @endforeach
                        </select>
                        @error('tipo_documento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row mb-0">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            Crear
                        </button>
                    </div>
                </div>
            </form>    
        </div>
    </div>
</div>

@endsection
<script>
    window.onload = function () {
        document.getElementById("documento").onchange = function () {
            if(this.files[0].size/1024/1024 > 2){
                alert("Este archivo es muy grande, el limite de size es 2MB");
                document.getElementById("documento").value = "";
            
            }    
        }
    };

</script>