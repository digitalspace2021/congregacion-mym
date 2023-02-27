@extends('theme.lte.layout')
@section('title','Crear Inventario')
@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/menu/crear.js")}}" type="text/javascript"></script>
@endsection
@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.form-error')
        @include('includes.mensaje')
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Crear Inventario</h3>
                <div class="box-tools pull-right">
                    <a href="{{Route('inventario')}}" class="btn btn-block btn-info btn-sm">
                        <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                    </a>
                </div> 
                    <form class="form-horizontal" action="{{Route('guardar_inventario')}}" method="POST" enctype="multipart/form-data" autocomplete="off">
                      @csrf
                        <div class="box-body">
                            @include('admin.inventario.form')
                        </div>

                        <div class="box-footer">
                            <div class="col-lg-5"></div>
                            <div class="col-lg-4">
                                @include('includes.boton-form-crear')
                            </div>
                        </div>
                    </form>      
            </div>
        </div>
    </div>
</div>

@endsection