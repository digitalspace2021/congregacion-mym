@extends('theme.lte.layout')
@section('title','Editar Envio')
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
                <h3 class="box-title">Editar Envio</h3>
                    <div class="box-tools pull-right">
                        <a href="{{asset('/admin/hermana/envio/listar')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
            <h3>Hermana: {{$hermana->nombre}}</h3>
            <form method="POST" action="{{ asset('admin/hermana/envio/editar') }}">
                @csrf
                <input type="hidden" name="hermana_id" value="{{$envio->id}}">
                <div class="form-group row">
                    <label for="ciudad" class="col-md-4 col-form-label text-md-right">{{ __('Ciudad') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('ciudad') is-invalid @enderror" id="ciudad" name="ciudad" required autocomplete="ciudad_actual" autofocus>
                            <option value="{{$envio->ciudades->id}}">
                            {{$envio->ciudades->name}}  
                            </option>
                        </select>
                        @error('ciudad_actual')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="pais" class="col-md-4 col-form-label text-md-right">{{ __('Pais') }}</label>

                    <div class="col-md-6">
                        <select class="form-control @error('pais') is-invalid @enderror" onchange="ciudades(this.value)" name="pais" required autocomplete="pais" autofocus>
                            <option>
                            </option>
                            @foreach($paises as $pais)
                               <option value="{{$pais->id}}" @if($envio->pais == $pais->id) selected @endif>{{$pais->name}}</option>
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
                    <label for="fecha" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Envio') }}</label>

                    <div class="col-md-6">
                        <input type="date" class="form-control @error('fecha') is-invalid @enderror" value="{{$envio->fecha}}" name="fecha" required autocomplete="fecha" autofocus>

                        @error('fecha')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cargo" class="col-md-4 col-form-label text-md-right">{{ __('Cargo') }}</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control @error('cargo') is-invalid @enderror"  value="{{$envio->cargo}}" name="cargo" required autocomplete="cargo" autofocus>

                        @error('cargo')
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