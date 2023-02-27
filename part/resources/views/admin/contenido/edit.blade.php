@extends('theme.lte.layout')
@section('title','Editar Contenido Area')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/crear.js")}}" type="text/javascript"></script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Editar Contenido Area</h3>
                    <div class="box-tools pull-right">
                        <a href="{{Route('contenido')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
                <form class="form-horizontal" action="{{Route('actualizar_contenido',$data->id)}}" id="form-general" method="POST" autocomplete="off">
                    @csrf
                    @method('PUT')
                    <div class="box-body">
                        <div class="box-body">
                            <div class="form-group col-lg-6">
                                <label for="area" class="col-lg-4 control-label requerido">Area</label>
                                <div class="col-lg-8">
                                    <select name="area" id="area" class="form-control" required>
                                        <option value="">Seleccione..</option>
                                            @foreach($areas as $row)
                                            <option {{$row->id == $data->area ? 'selected' : ''}} value="{{$row->id}}">{{$row->descripcion}}</option>
                                            @endforeach
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group col-lg-6">
                                <label for="descripcion" class="col-lg-4 control-label requerido">Descripcion</label>
                                <div class="col-lg-8">
                                    <input type="text" name="descripcion" id="descripcion" class="form-control" value="{{ old('descripcion', $data->descripcion ?? '' ) }}"  required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="box-footer">
                        <div class="col-lg-5"></div>
                        <div class="col-lg-6">
                            @include('includes.boton-form-editar')
                        </div>
                    </div>
                </form>      
        </div>
    </div>
</div>

@endsection