@extends('theme.lte.layout')
@section('title','Editar Empleados')
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
                <h3 class="box-title">Editar Empleados</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/empleado/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/empleado/editar') }}">
                @csrf
                <input type="hidden" name="id" value="{{$empleado->id}}">
                <div class="form-group row col-md-6">
                    <label for="casa" class="col-md-4 col-form-label text-md-right">{{ __('Convento') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('casa') is-invalid @enderror" name="casa" required autocomplete="casa" autofocus>
                            <option></option>
                            @foreach($casas as $casa)
                               <option value="{{$casa->id}}"  @if($casa->id == $empleado->casa) selected @endif>{{$casa->nombre_casa}}</option>
                            @endforeach
                        </select>
                        @error('casa')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="nombre" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nombre') is-invalid @enderror" name="nombre" value="{{$empleado->nombre}}" required autocomplete="nombre" autofocus>

                        @error('nombre')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="cedula_ciudadania" class="col-md-4 col-form-label text-md-right">{{ __('Cedula') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('cedula_ciudadania') is-invalid @enderror" name="cedula_ciudadania" value="{{$empleado->cedula_ciudadania}}" required autocomplete="cedula_ciudadania" autofocus>

                        @error('cedula_ciudadania')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="nacionalidad" class="col-md-4 col-form-label text-md-right">{{ __('Nacionalidad') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nacionalidad') is-invalid @enderror" name="nacionalidad"  value="{{$empleado->nacionalidad}}" autofocus>

                        @error('nacionalidad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_nacimiento" class="col-md-4 col-form-label text-md-right">{{ __('Fecha nacimiento') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_nacimiento') is-invalid @enderror" name="fecha_nacimiento"   value="{{$empleado->fecha_nacimiento}}" autofocus>

                        @error('fecha_nacimiento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="actividad_que_realiza" class="col-md-4 col-form-label text-md-right">{{ __('Actividad Que Realiza') }}</label>

                    <div class="col-md-6">
                    <textarea class="form-control @error('actividad_que_realiza') is-invalid @enderror" name="actividad_que_realiza"  autofocus>{{$empleado->actividad_que_realiza}}</textarea>

                        @error('actividad_que_realiza')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="observaciones" class="col-md-4 col-form-label text-md-right">{{ __('Observaciones') }}</label>

                    <div class="col-md-6">
                        <textarea class="form-control @error('observaciones') is-invalid @enderror" name="observaciones"  autocomplete="observaciones" autofocus>{{$empleado->observaciones}}</textarea>

                        @error('observaciones')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                 
                
                <div class="form-group row col-md-6">
                    <label for="genero" class="col-md-4 col-form-label text-md-right">{{ __('Genero') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('genero') is-invalid @enderror" name="genero" required autocomplete="genero" autofocus>
                            <option value="1">M</option>
                            <option value="2">F</option>

                        </select>
                        @error('genero')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="direccion" class="col-md-4 col-form-label text-md-right">{{ __('Direcion') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('direccion') is-invalid @enderror" name="direccion" required value="{{$empleado->direccion}}" autocomplete="direccion" autofocus>

                        @error('direccion')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="telefono" class="col-md-4 col-form-label text-md-right">{{ __('Telefono') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('telefono') is-invalid @enderror" name="telefono" value="{{$empleado->telefono}}" required autocomplete="telefono" autofocus>

                        @error('telefono')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="estado_civil" class="col-md-4 col-form-label text-md-right">{{ __('Estado Civil') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('estado_civil') is-invalid @enderror" name="estado_civil" required autocomplete="estado_civil" autofocus>
                            <option></option>
                            @foreach($estados as $estado)
                               <option value="{{$estado->id}}"  @if($estado->id == $empleado->estado_civil) selected @endif>{{$estado->estado_civil}}</option>
                            @endforeach
                        </select>

                        @error('estado_civil')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="num_hijos" class="col-md-4 col-form-label text-md-right">{{ __('Numero de Hijos') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('num_hijos') is-invalid @enderror" name="num_hijos" value="{{$empleado->num_hijos}}"  autocomplete="num_hijos" autofocus>

                        @error('num_hijos')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="salario" class="col-md-4 col-form-label text-md-right">{{ __('Salario') }}</label>

                    <div class="col-md-6">
                        <input type="number" class="form-control @error('salario') is-invalid @enderror" name="salario" value="{{$empleado->salario}}" required autofocus>

                        @error('salario')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_ingreso" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso') is-invalid @enderror" name="fecha_ingreso" value="{{$empleado->fecha_ingreso}}" required autocomplete="fecha_ingreso" autofocus>

                        @error('fecha_ingreso')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                
                <div class="form-group row col-md-6">
                    <label for="fecha_retiro" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Retiro') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_retiro') is-invalid @enderror" name="fecha_retiro" value="{{$empleado->fecha_retiro}}"  autocomplete="fecha_retiro" autofocus>

                        @error('fecha_retiro')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="profesion" class="col-md-4 col-form-label text-md-right">{{ __('Profesion') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('profesion') is-invalid @enderror" name="profesion"  value="{{$empleado->profesion}}" autofocus>

                        @error('motivo')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="profesion" class="col-md-4 col-form-label text-md-right">{{ __('Cargo') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('cargo') is-invalid @enderror" name="cargo"  value="{{$empleado->cargo}}" autofocus>

                        @error('motivo')
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
                <div class="col-md-6">
            </form>    
        </div>
    </div>
</div>
@endsection