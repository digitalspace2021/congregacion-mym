@extends('theme.lte.layout')
@section('title','Editar Consagrada Martita')
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
                <h3 class="box-title">Editar Consagrada Martita</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/martita/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/martita/editar') }}">
                @csrf
                <input type="hidden" name="id" value="{{$martita->id}}">
                <div class="form-group row">
                    <label for="casa" class="col-md-4 col-form-label text-md-right">{{ __('Convento Actual') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('casa') is-invalid @enderror" name="casa" required autocomplete="casa" autofocus>
                            <option></option>
                            @foreach($casas as $casa)
                                <option value="{{$casa->id}}"  @if($casa->id == $martita->casa) selected @endif>{{$casa->nombre_casa}}</option>
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
                    <label for="nombre" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nombre') is-invalid @enderror" name="nombre" required autocomplete="nombre" value="{{$martita->nombre}}" autofocus>

                        @error('nombre')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cedula" class="col-md-4 col-form-label text-md-right">{{ __('Cedula') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('cedula') is-invalid @enderror" name="cedula" required value="{{$martita->cedula}}" autofocus>
                        @error('cedula')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nacionalidad" class="col-md-4 col-form-label text-md-right">{{ __('Nacionalidad') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nacionalidad') is-invalid @enderror" name="nacionalidad" required value="{{$martita->nacionalidad}}" autofocus>

                        @error('nacionalidad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="lugar_origen" class="col-md-4 col-form-label text-md-right">{{ __('Lugar de origen') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('lugar_origen') is-invalid @enderror" name="lugar_origen" value="{{$martita->lugar_origen}}"required  autofocus>

                        @error('lugar_origen')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha_nacimiento" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Nacimiento') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_nacimiento') is-invalid @enderror" name="fecha_nacimiento" value="{{$martita->fecha_nacimiento}}" required  autofocus>

                        @error('fecha_nacimiento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="estudios_realizados" class="col-md-4 col-form-label text-md-right">{{ __('Estudios realizados') }}</label>

                    <div class="col-md-6">
                        <textarea class="form-control @error('estudios_realizados') is-invalid @enderror" name="estudios_realizados" autofocus>{{$martita->estudios_realizados}}</textarea>

                        @error('estudios_realizados')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="actividad" class="col-md-4 col-form-label text-md-right">{{ __('Actividad que realiza') }}</label>

                    <div class="col-md-6">
                        <textarea class="form-control @error('actividad que realiza') is-invalid @enderror" name="actividad"   autofocus>{{$martita->actividad}}</textarea>

                        @error('actividad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="observaciones" class="col-md-4 col-form-label text-md-right">{{ __('Observaciones') }}</label>

                    <div class="col-md-6">
                        <textarea type="text" class="form-control @error('observaciones') is-invalid @enderror" name="observaciones"  value="{{$martita->observaciones}}" autofocus></textarea>

                        @error('observaciones')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="direccion" class="col-md-4 col-form-label text-md-right">{{ __('Direccion') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('direccion') is-invalid @enderror" name="direccion" value="{{$martita->direccion}}" required autofocus>

                        @error('direccion')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="telefono" class="col-md-4 col-form-label text-md-right">{{ __('Telefono') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('telefono') is-invalid @enderror" name="telefono" value="{{$martita->telefono}}" required autofocus>

                        @error('telefono')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
  
                <div class="form-group row">
                    <label for="numero_hijos" class="col-md-4 col-form-label text-md-right">{{ __('Numero de hijos') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('numero_hijos') is-invalid @enderror" name="numero_hijos" value="{{$martita->numero_hijos}}"   autofocus>

                        @error('numero_hijos')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha_ingreso" class="col-md-4 col-form-label text-md-right">{{ __('Fecha ingreso') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso') is-invalid @enderror" name="fecha_ingreso"  value="{{$martita->fecha_ingreso}}" autofocus required>

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
                        <input type="date" class="form-control @error('fecha_retiro') is-invalid @enderror" name="fecha_retiro"  value="{{$martita->fecha_retiro}}" autocomplete="fecha_retiro" autofocus>

                        @error('fecha_retiro_convento')
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