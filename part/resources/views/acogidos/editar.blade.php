@extends('theme.lte.layout')
@section('title','Editar Acogidos')
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
                <h3 class="box-title">Editar Acogidos</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/acogido/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/acogido/editar') }}">
                @csrf
                <input type="hidden" name="id" value="{{$acogido->id}}">
                <div class="form-group row">
                    <label for="nombre" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nombre') is-invalid @enderror" name="nombre" value="{{$acogido->nombre}}" required autocomplete="nombre" autofocus>

                        @error('nombre')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="genero" class="col-md-4 col-form-label text-md-right">{{ __('Genero') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('genero') is-invalid @enderror" name="genero" required autocomplete="genero" autofocus>
                            <option value="1"  @if($acogido->genero == 1) selected @endif>M</option>
                            <option value="2"  @if($acogido->genero == 2) selected @endif>F</option>

                        </select>
                        @error('genero')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="edad" class="col-md-4 col-form-label text-md-right">{{ __('Edad') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('edad') is-invalid @enderror" name="edad" required autocomplete="edad" value="{{$acogido->edad}}" autofocus>

                        @error('edad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha_ingreso" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso') is-invalid @enderror" name="fecha_ingreso" value="{{$acogido->fecha_ingreso}}" required autocomplete="fecha_ingreso" autofocus>

                        @error('fecha_ingreso')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha_retiro" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Retiro') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_retiro') is-invalid @enderror" name="fecha_retiro" value="{{$acogido->fecha_retiro}}"  autocomplete="fecha_retiro" autofocus>

                        @error('fecha_retiro')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="pais" class="col-md-4 col-form-label text-md-right">{{ __('Pais') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('pais') is-invalid @enderror" name="pais" required autocomplete="pais" autofocus>
                            <option>
                            </option>
                            @foreach($paises as $pais)
                               <option value="{{$pais->id}}"  @if($pais->id == $acogido->pais) selected @endif>{{$pais->name}}</option>
                            @endforeach
                        </select>
                        @error('pais')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="casa" class="col-md-4 col-form-label text-md-right">{{ __('casa') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('casa') is-invalid @enderror" name="casa" required autocomplete="casa" autofocus>
                            <option></option>
                            @foreach($casas as $casa)
                               <option value="{{$casa->id}}"  @if($casa->id == $acogido->casa) selected @endif>{{$casa->nombre_casa}}</option>
                            @endforeach
                        </select>
                        @error('edad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="motivo" class="col-md-4 col-form-label text-md-right">{{ __('Motivo') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('motivo') is-invalid @enderror" name="motivo"  autocomplete="motivo" value="{{$acogido->motivo}}" autofocus>

                        @error('motivo')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="observaciones" class="col-md-4 col-form-label text-md-right">{{ __('Observaciones') }}</label>

                    <div class="col-md-6">
                        <textarea type="text" class="form-control @error('observaciones') is-invalid @enderror" name="observaciones"  autocomplete="observaciones" autofocus>{{$acogido->observaciones}}</textarea>

                        @error('observaciones')
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