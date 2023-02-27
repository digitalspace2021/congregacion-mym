@extends('theme.lte.layout')
@section('content')
    <div class="row">
        <h3>Listado Paquetes</h3>
        <table class="table table-bordered">
            <thead>
                <th>Id</th>
                <th>Nombre</th>
                <th>Duracion</th>
                <th>Precio</th>
                <th>Descripcion</th>
                <th>Accion</th>
            </thead>
            <tbody>
                @foreach($packages as $package)
                    <td>{{$package->id}}</td>
                    <td>{{$package->nombre}}</td>
                    <td>{{$package->duracion}}</td>
                    <td>{{$package->precio}}</td>
                    <td>{{$package->descripcion}}</td>
                    <td><a href="{{asset('package/update')}}/{{$package->id}}">Editar</a><a href="{{asset('package/eliminar')}}/{{$package->id}}">Eliminar</a></td>
                @endforeach
            </tbody>
        <table>
    </div>
@endsection