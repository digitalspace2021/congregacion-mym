@extends('theme.lte.layout')
@section('title','Crear Renovacion')
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
                <h3 class="box-title">Crear Renovacion</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/hermana/renovacion/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <h3>Hermana: {{$hermana->nombre}}</h3>
            <form method="POST" action="{{ asset('admin/hermana/renovacion/crear') }}">
                @csrf
                <input type="hidden" name="id_hermana" value="{{$id_hermana}}">
                <div class="form-group row">
                    <label for="renovacion" class="col-md-4 col-form-label text-md-right">{{ __('Renovacion') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('renovacion') is-invalid @enderror" name="num_renovacion" required autocomplete="renovacion" autofocus>
                            <option value="1">Primera Renovacion</option>
                            <option value="2">Segunda Renovacion</option>
                            <option value="3">Tercera Renovacion</option>
                            <option value="4">Cuarta Renovacion</option>
                        </select>
                        @error('renovacion')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha" class="col-md-4 col-form-label text-md-right">{{ __('Fecha') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha') is-invalid @enderror" name="fecha" required autocomplete="fecha" autofocus>

                        @error('fecha')
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