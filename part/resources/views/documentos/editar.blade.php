@extends('theme.lte.layout')
@section('title','Editar Documento')
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
                <h3 class="box-title">Editar Documento</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/documento/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <h3>{{$usuarioNombre}}</h3>
            <form method="POST" action="{{ asset('admin/documento/editar') }}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id" value="{{$documento->id}}">
                <div class="form-group row">
                    <label for="documento" class="col-md-4 col-form-label text-md-right">{{ __('Documento') }}</label>

                    <div class="col-md-6">
                        <input type="file" class="form-control @error('documento') is-invalid @enderror" value="{{$documento->documento}}" name="documento"  autocomplete="documento" autofocus>

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
                        <input type="text" class="form-control @error('tipo_documento') is-invalid @enderror"  value="{{$documento->tipo_documento}}" name="tipo_documento" required autocomplete="tipo_documento" autofocus>
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
                            Actualizar
                        </button>
                    </div>
                </div>
            </form>    
        </div>
    </div>
</div>
@endsection