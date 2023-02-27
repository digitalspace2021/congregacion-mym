@extends('theme.lte.layout')
@section('content')
    <div class="row">
        <h3>Editar Paquete</h3>
        <form method="post" action="{{asset('/package/update')}}" class="form-horizontal">
            @csrf
            <input type="hidden" value="{{$package->id}}" name="id">
            <div class="form-group row col-md-6">
                <label for="nombre" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                <div class="col-md-6">
                    <input type="text" class="form-control @error('nombre') is-invalid @enderror" name="nombre" value="{{$package->nombre}}" required autofocus>

                    @error('nombre')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <div class="form-group row col-md-6">
                <label for="duracion" class="col-md-4 col-form-label text-md-right">{{ __('Duracion') }}</label>

                <div class="col-md-6">
                    <input type="number" class="form-control @error('duracion') is-invalid @enderror" name="duracion" value="{{$package->duracion}}" required autofocus>

                    @error('duracion')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <div class="form-group row col-md-6">
                <label for="precio" class="col-md-4 col-form-label text-md-right">{{ __('Precio') }}</label>

                <div class="col-md-6">
                    <input type="number" class="form-control @error('precio') is-invalid @enderror" name="precio" value="{{$package->precio}}" required autofocus>

                    @error('precio')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <div class="form-group row col-md-6">
                <label for="descripcion" class="col-md-4 col-form-label text-md-right">{{ __('Descripcion') }}</label>

                <div class="col-md-6">
                    <input type="text" class="form-control @error('descripcion') is-invalid @enderror" name="descripcion" value="{{$package->descripcion}}" required autofocus>

                    @error('descripcion')
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
@endsection