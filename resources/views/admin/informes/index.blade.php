@extends('theme.lte.layout')
@section('content')
<h1>Informe del Personal</h1>
<div class="table-responsive">
    <table class="table table-striped">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Casas</th>
        <th scope="col">Hermanas</th>
        <th scope="col">Empleados</th>
        <th scope="col">Acogidos</th>
        <th scope="col">Sacerdotes</th>
        <th scope="col">Religiosos</th>
        <th scope="col">Laicos Consagrados</th>
        <th scope="col">Consagradas Martitas</th>
        <th scope="col">Oblatos de Betania</th>
        <th scope="col">Maria de Betania</th>
        <th scope="col">Otros</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <th scope="row">Total</th>
        <td>{{$casas}}</td>
        <td>{{$hermanas}}</td>
        <td>{{$empleados}}</td>
        <td>{{$acogidos}}</td>
        <td>{{$sacerdotes}}</td>
        <td>{{$religiosos}}</td>
        <td>{{$laicos}}</td>
        <td>{{$martitas}}</td>
        <td>{{$oblatos}}</td>
        <td>{{$marias}}</td>
        <td>{{$otros}}</td>
        </tr>
        @foreach($regiones as $region)
        <tr>
            <th>Total Region {{$region->region}}</th>
            <td>{{$region->casas($region->id)}}</td>
            <td>{{$region->hermanas($region->id)}}</td>
            <td>{{$region->empleados($region->id)}}</td>
            <td>{{$region->acogidos($region->id)}}</td>
            <td>{{$region->sacerdotes($region->id)}}</td>
            <td>{{$region->religiosos($region->id)}}</td>
            <td>{{$region->laicos($region->id)}}</td>
            <td>{{$region->martitas($region->id)}}</td>
            <td>{{$region->oblatos($region->id)}}</td>
            <td>{{$region->marias($region->id)}}</td>
            <td>{{$region->otros($region->id)}}</td>
        </tr>
        @foreach($region->paises as $pais)
        <tr>
            <td>{{$pais->name}}</td>
            <td>{{$pais->casas->count()}}</td>
            <td>{{$pais->hermanas($pais->id)}}</td>
            <td>{{$pais->empleados($pais->id)}}</td>
            <td>{{$pais->acogidos($pais->id)}}</td>
            <td>{{$pais->sacerdotes($pais->id)}}</td>
            <td>{{$pais->religiosos($pais->id)}}</td>
            <td>{{$pais->laicos($pais->id)}}</td>
            <td>{{$pais->martitas($pais->id)}}</td>
            <td>{{$pais->oblatos($pais->id)}}</td>
            <td>{{$pais->marias($pais->id)}}</td>
            <td>{{$pais->otros($pais->id)}}</td>
        </tr>
        @endforeach
        @endforeach 
    </tbody>
    </table>
</div>

<h1>Informe de la Biblioteca</h1>
<div class="table-responsive">
    <table class="table table-striped">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Libros</th>
        <th scope="col">Prestamos</th>
        <th scope="col">Devueltos</th>
        <th scope="col">Diferencia</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <th scope="row">Total</th>
        <td>{{$libros}}</td>
        <td>{{$prestamos}}</td>
        <td>{{$devueltos}}</td>
        <td>{{$prestamos - $devueltos}}</td>
        </tr>
        @foreach($regiones as $region)
        <tr>
            <th>Total Region {{$region->region}}</th>
            <td>{{$region->libros($region->id)}}</td>
            <td>{{$region->prestamos($region->id)}}</td>
            <td>{{$region->devueltos($region->id)}}</td>
            <td>{{$region->prestamos($region->id) - $region->devueltos($region->id) }}</td>
        </tr>
        @foreach($region->paises as $pais)
        <tr>
            <td>{{$pais->name}}</td>
            <td>{{$pais->libros($pais->id)}}</td>
            <td>{{$pais->prestamos($pais->id)}}</td>
            <td>{{$pais->devueltos($pais->id)}}</td>
            <td>{{$pais->prestamos($pais->id) - $pais->devueltos($pais->id) }}</td>
        </tr>
        @endforeach
        @endforeach
    </tbody>
    </table>
</div>
@endsection
