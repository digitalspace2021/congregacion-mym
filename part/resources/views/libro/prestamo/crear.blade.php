@extends('theme.lte.layout')
@section('title','Crear Prestamo')
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
                <h3 class="box-title">Crear Prestamo</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/libro/prestamo/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <form method="POST" action="{{ asset('admin/libro/prestamo/crear') }}">
                @csrf                
                <div class="form-group row">
                    <label for="" class="col-md-4 col-form-label text-md-right">{{ __('Libro') }}</label>
                    <input type="hidden" name="usuario_id" value="{{Auth::user()->id}}"> 
                    <div class="col-md-6">
                        <select class="form-control @error('libro_id') is-invalid @enderror" name="libro_id" required autocomplete="libro_id" autofocus>
                            @foreach($libros as $libro)
                                <option value="{{$libro->id}}">{{$libro->titulo}}</option>
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
                        <input type="date" class="form-control @error('fecha_prestamo') is-invalid @enderror" name="fecha_prestamo" required autocomplete="fecha_prestamo" autofocus>

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
                        <select  class="form-control" name="tipo_usuario" onchange="usuarios(this.value)" required  autofocus>
                            <option>tipo de usuario</option>
                            <option value="1">Hermana</option>
                            <option value="2">Empleado</option>
                            <option value="3">Acogido</option>
                            <option value="4">Usuario Externo</option>
                        </select>
                        <select  class="form-control @error('prestado_a') is-invalid @enderror" id="usuario" name="prestado_a" required autocomplete="prestado_a" autofocus>
                            <option>selecciona un tipo de usuario primero</option>
                        </select>
                        <div id="usuarioExterno">
                        </div>
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
function usuarios(code){
    if(code == 4){
        document.getElementById('usuarioExterno').innerHTML = "<input type='text' name='nombre' class='form-control' placeholder='Nombre usuario externo' required><input type='text' name='cedula'' placeholder='cedula usuario externo' class='form-control' required>";
        document.getElementById('usuario').remove();
   }
       $.ajax({
            type: "get",
            url: "{{ url('usuarios')}}"+'/'+code,
            success: function (data) {
                $('#usuario').empty();
                $.each(data,function(key, usuario) {
                $("#usuario").append('<option value='+usuario.nombre+'>'+usuario.nombre+'</option>');
                }); 

            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
 }
 </script>