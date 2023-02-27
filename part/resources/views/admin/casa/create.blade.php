@extends('theme.lte.layout')
@section('title','Crear Menus')
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
                <h3 class="box-title">Crear Casa</h3>
                <div class="box-tools pull-right">
                    <a href="{{Route('casa')}}" class="btn btn-block btn-info btn-sm">
                        <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                    </a>
                </div> 
                    <form class="form-horizontal" action="{{Route('guardar_casa')}}"  method="POST" autocomplete="off">
                      @csrf
                        <div class="box-body">
                            @include('admin.casa.form')
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