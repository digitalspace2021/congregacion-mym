@extends('theme.lte.layout')
@section('title','Crear Pais')
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
                <h3 class="box-title">Crear Pais</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/paises')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/pais/crear') }}">
                @csrf
                <div class="form-group row">
                    <label for="fecha" class="col-md-4 col-form-label text-md-right">{{ __('Codigo Pais') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('code') is-invalid @enderror" name="code" required autocomplete="code" autofocus>

                        @error('code')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cargo" class="col-md-4 col-form-label text-md-right">{{ __('Nombre Pais') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" required autocomplete="name" autofocus>

                        @error('name')
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
