@extends('theme.lte.layout')
@section('title','Editar Prestamo')
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
                <h3 class="box-title">Editar Prestamo</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/libro/prestamo/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/libro/prestamo/editar') }}">
                @csrf             
                <input type="hidden" name="id" value="{{$prestamo->id}}">   
                <div class="form-group row">
                    <label for="" class="col-md-4 col-form-label text-md-right">{{ __('Libro') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('libro_id') is-invalid @enderror" name="libro_id" required autocomplete="libro_id" autofocus>
                            @foreach($libros as $libro)
                                <option value="{{$libro->id}}"  @if($libro->id == $prestamo->libro_id) selected @endif >{{$libro->titulo}}</option>
                            @endforeach
                        </select>
                        @error('libro_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha_prestamo" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Prestamo') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_prestamo') is-invalid @enderror" value="{{$prestamo->fecha_prestamo}}" name="fecha_prestamo" required autocomplete="fecha_prestamo" autofocus>

                        @error('fecha_prestamo')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="prestado_a" class="col-md-4 col-form-label text-md-right">{{ __('Prestado a') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('prestado_a') is-invalid @enderror" value="{{$prestamo->prestado_a}}" name="prestado_a" required autocomplete="prestado_a" autofocus>

                        @error('prestado_a')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row mb-0">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            Editar
                        </button>
                    </div>
                </div>
            </form>    
        </div>
    </div>
</div>
@endsection