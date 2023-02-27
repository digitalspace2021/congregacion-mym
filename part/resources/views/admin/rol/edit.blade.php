@extends('theme.lte.layout')
@section('title','Editar Rol')
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
                <h3 class="box-title">Editar Rol</h3>
                    <div class="box-tools pull-right">
                        <a href="{{Route('rol')}}" class="btn btn-block btn-info btn-sm">
                            <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                        </a>
                    </div>  
            </div>
                <form class="form-horizontal" action="{{Route('actualizar_rol',$data->id)}}" id="form-general" method="POST" autocomplete="off">
                    @csrf
                    @method('put')
                    <div class="box-body">
                        @include('admin.rol.form')
                    </div>

                    <div class="box-footer">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            @include('includes.boton-form-editar')
                        </div>
                    </div>
                </form>      
        </div>
    </div>
</div>

@endsection