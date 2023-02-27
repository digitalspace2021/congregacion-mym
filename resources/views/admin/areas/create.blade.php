@extends('theme.lte.layout')
@section('title','Crear Area')
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
                <h3 class="box-title">Crear Descripcion Area</h3>
                    <div class="box-tools pull-right">
                        <a href="{{Route('areas')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
                <form class="form-horizontal" action="{{Route('guardar_areas')}}" id="form-general" method="POST" autocomplete="off">
                    @csrf
                    <div class="box-body">
                        <div class="form-group">
                            <label for="descripcion" class="col-lg-3 control-label requerido">descripcion</label>
                                <div class="col-lg-8">
                                    <input type="text" name="descripcion" id="descripcion" class="form-control" value="{{old('descripcion')}}" required>    
                                </div>
                        </div>
                    </div>

                    <div class="box-footer">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            @include('includes.boton-form-crear')
                        </div>
                    </div>
                </form>      
        </div>
    </div>
</div>

@endsection