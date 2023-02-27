<div>Titulo = {{$libro->titulo}}</div>
<div>Isbn =  {{$libro->isbn}}</div>
<div>Autor = {{$libro->autor}}</div><br>
<div><img src="{{Storage::url("imagenes/caratulas/$libro->foto")}}" alt="Caratula del libro"></div>
