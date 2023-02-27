@extends('theme.lte.layout')
@section('title','Editar Maria de Betania')
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
                <h3 class="box-title">Editar Maria de Betania</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/maria/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/maria/editar') }}">
                @csrf
                <input type="hidden" name="id" value="{{$maria->id}}" >
                <div class="form-group row col-md-6">
                    <label for="convento_actual" class="col-md-4 col-form-label text-md-right">{{ __('Convento Actual') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('convento_actual') is-invalid @enderror" value="{{$maria->convento_actual}}" name="convento_actual" required autocomplete="casa" autofocus>
                            <option></option>
                            @foreach($casas as $casa)
                               <option value="{{$casa->id}}" @if($maria->convento_actual == $casa->id) selected @endif>{{$casa->nombre_casa}}</option>
                            @endforeach
                        </select>

                        @error('convento_actual')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row col-md-6">
                    <label for="nombre" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nombre') is-invalid @enderror" name="nombre" value="{{$maria->nombre}}" required autocomplete="nombre" autofocus>

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
                        <input type="number" class="form-control @error('cedula_ciudadania') is-invalid @enderror" value="{{$maria->cedula_ciudadania}}" name="cedula_ciudadania" required autocomplete="cedula_ciudadania" autofocus>

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
                        <input type="text" class="form-control @error('nacionalidad') is-invalid @enderror" value="{{$maria->nacionalidad}}" name="nacionalidad" required autocomplete="nacionalidad" autofocus>
                        @error('nacionalidad')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="lugar_origen" class="col-md-4 col-form-label text-md-right">{{ __('Lugar Origen') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('lugar_origen') is-invalid @enderror" value="{{$maria->lugar_origen}}" name="lugar_origen" required autocomplete="lugar_origen" autofocus>

                        @error('lugar_origen')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_nacimiento" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Nacimiento') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_nacimiento') is-invalid @enderror" value="{{$maria->fecha_nacimiento}}" name="fecha_nacimiento" required autocomplete="fecha_nacimiento" autofocus>

                        @error('fecha_nacimiento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_ingreso_convento" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso Convento') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso_convento') is-invalid @enderror" value="{{$maria->fecha_ingreso_convento}}" name="fecha_ingreso_convento" required autofocus>

                        @error('fecha_ingreso_convento')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_ingreso_aspirantado" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso Aspirantado') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso_aspirantado') is-invalid @enderror" 
                        name="fecha_ingreso_aspirantado" value="{{$maria->fecha_ingreso_aspirantado}}"   autofocus>

                        @error('fecha_ingreso_aspirantado')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>                
                <div class="form-group row col-md-6">
                    <label for="fecha_ingreso_postulado" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso Postulado') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso_postulado') is-invalid @enderror" value="{{$maria->fecha_ingreso_postulado}}" name="fecha_ingreso_postulado"   autofocus>

                        @error('fecha_ingreso_postulado')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="fecha_ingreso_noviciado" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Ingreso Noviciado') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha_ingreso_noviciado') is-invalid @enderror" value="{{$maria->fecha_ingreso_noviciado}}" name="fecha_ingreso_noviciado"  autofocus>

                        @error('fecha_ingreso_noviciado')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="estudios_realizados" class="col-md-4 col-form-label text-md-right">{{ __('Estudios Realizados') }}</label>

                    <div class="col-md-6">
                        <textarea class="form-control @error('estudios_realizados') is-invalid @enderror" name="estudios_realizados"  autofocus>{{$maria->estudios_realizados}}</textarea>

                        @error('estudios_realizados')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="primera_profesion" class="col-md-4 col-form-label text-md-right">{{ __('Primera Profesion') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('primera_profesion') is-invalid @enderror" value="{{$maria->primera_profesion}}" name="primera_profesion" required autofocus>

                        @error('primera_profesion')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row col-md-6">
                    <label for="renovacion" class="col-md-4 col-form-label text-md-right">{{ __('Renovacion de votos, fecha y lugar') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('renovacion') is-invalid @enderror" 
                        name="renovacion" value="{{$maria->renovacion}}" autofocus>

                        @error('renovacion')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>  
                <div class="form-group row col-md-6">
                    <label for="profesion_perpetua" class="col-md-4 col-form-label text-md-right">{{ __('Profesion Perpetua     .') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('profesion_perpetua') is-invalid @enderror" value="{{$maria->profesion_perpetua}}" name="profesion_perpetua"  autofocus>

                        @error('profesion_perpetua')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row col-md-6">
                    <label for="actividad_que_realiza" class="col-md-4 col-form-label text-md-right">{{ __('Actividad Que Realiza') }}</label>

                    <div class="col-md-6">
                        <textarea type="text" class="form-control @error('actividad_que_realiza') is-invalid @enderror" name="actividad_que_realiza"  autofocus>{{$maria->actividad_que_realiza}}</textarea>

                        @error('actividad_que_realiza')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row col-md-6">
                    <label for="equipo_hermanas_perteneciente" class="col-md-4 col-form-label text-md-right">{{ __('Equipo Hermanas Perteneciente') }}</label>

                    <div class="col-md-6">
                    <select class="form-control @error('equipo_hermanas_perteneciente') is-invalid @enderror" name="equipo_hermanas_perteneciente" required autofocus>
                            <option>
                            </option>
                            @foreach($equipos as $equipo)
                            <option value="{{$equipo->id}}" @if($equipo->id == $maria->equipo_hermanas_perteneciente) selected @endif>
                                {{$equipo->nombre}}
                            </option>
                            @endforeach
                        </select>
                        @error('equipo_hermanas_perteneciente')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                 <div class="form-group row col-md-6">
                    <label for="observaciones" class="col-md-4 col-form-label text-md-right">{{ __('Observaciones') }}</label>

                    <div class="col-md-6">
                        <textarea class="form-control @error('observaciones') is-invalid @enderror" name="observaciones"  autofocus>{{$maria->observaciones}}</textarea>

                        @error('observaciones')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
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
<script>
function ciudades(code){
       $.ajax({
            type: "get",
            url: "{{ url('/admin/ciudadpais')}}"+'/'+code,
            success: function (data) {
                $('#ciudad').empty();
                $.each(data,function(key, ciudad) {
                $("#ciudad").append('<option value='+ciudad.id+'>'+ciudad.name+'</option>');
                }); 

            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
 }
 </script>
</script>