@extends('theme.lte.layout')
@section('title','Crear Menus')

@section('styles')
    <link href="{{asset('assets/js/jquery-nestable/jquery.nestable.css')}}" rel="stylesheet" type="text/css">
@endsection

@section('scriptsPlugins')
    <script src="{{asset("assets/js/jquery-nestable/jquery.nestable.js")}}" type="text/javascript"></script>
@endsection

@section('scripts')
    <script src="{{asset("assets/pages/scripts/admin/menu/index.js")}}" type="text/javascript"></script>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        @include('includes.mensaje')
        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title">Menùs</h3>
                <div class="box-tools pull-right">
                    <a href="{{Route('crear_menu')}}" class="btn btn-block btn-success btn-sm">
                        <i class="fa fa-fw fa-reply-all"></i> Nuevo Registro
                    </a>
                </div> 
            </div>        
                <div class="box-body">
                    @csrf
                    <div class="dd" id="nestable">
                        <ol class="dd-list">
                            @foreach($menus as $key => $item)
                                @if($item['menu_id'] != 0)
                                  @break
                                @endif
                                    @include('admin.menu.menu-item',["item" => $item])
                            @endforeach            
                        </ol>
                    </div>
                </div>
        </div>
    </div>
</div>

@endsection