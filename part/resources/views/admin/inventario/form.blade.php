<div class="form-group col-lg-6">
    <label for="casa" class="col-lg-4 control-label requerido">Casa</label>
    <div class="col-lg-8">
        <select name="id_casa" id="id_casa" class="form-control" required>
            <option value="">Seleccione..</option>
                @foreach($casas as $row)
                <option @if(isset( $data->id_casa) and $row->id ==  $data->id_casa ) selected @endif value="{{$row->id}}">{{$row->nombre_casa}}</option>
                @endforeach
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="tipo_inventario" class="col-lg-4 control-label requerido">Tipo de Inventario</label>
    <div class="col-lg-8">
        <select name="tipo_inventario" id="tipo_inventario" class="form-control" value="{{ old('tipo_inventario', $row->tipo_inventario ?? '' )}}" required>
            <option value="1" @if(isset( $data->tipo_inventario) and $data->tipo_inventario == 1) selected @endif>Propio</option>
            <option value="2" @if(isset( $data->tipo_inventario) and $data->tipo_inventario == 2) selected @endif>No pertenece a la comunidad</option>
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="id_area" class="col-lg-4 control-label requerido">Area</label>
    <div class="col-lg-8">
        <select name="id_area" id="id_area" onchange="contenidos(this.value)" class="form-control" required>
            <option value="">Seleccione..</option>
                @foreach($areas as $row)
                <option @if(isset( $data->id_area) and $row->id ==  $data->id_area ) selected @endif value="{{$row->id}}">{{$row->descripcion}}</option>
                @endforeach
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="id_contenido" class="col-lg-4 control-label requerido">Contenido</label>
    <div class="col-lg-8">
        <select name="id_contenido" id="contenido" class="form-control" required>
            <option value="">Seleccione..</option>
                @foreach($contenidos as $row)
                <option @if(isset( $data->id_contenido) and $row->id ==  $data->id_contenido) selected @endif value="{{$row->id}}">{{$row->descripcion}}</option>
                @endforeach
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="cantidad" class="col-lg-4 control-label requerido">Cantidad</label>
    <div class="col-lg-8">
        <input type="number" name="cantidad" id="cantidad" class="form-control" value="{{ old('cantidad', $data->cantidad ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="valor" class="col-lg-4 control-label requerido">Valor</label>
    <div class="col-lg-8">
        <input type="text" name="valor" id="valor" class="form-control" value="{{ old('valor', $data->valor ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="tiene_factura" class="col-lg-4 control-label requerido">Factura</label>
    <div class="col-lg-8">
        <input type="text" name="tiene_factura" id="tiene_factura" class="form-control" value="{{ old('tiene_factura', $data->tiene_factura ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="documento_soporte" class="col-lg-4 control-label requerido">Documento Soporte</label>
    <div class="col-lg-8">
        <input type="file" name="documento_soport" id="documento_soporte" class="form-control" value="{{ old('documento_soport', $data->documento_soport ?? '' ) }}">
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="fecha" class="col-lg-4 control-label requerido">Fecha</label>
    <div class="col-lg-8">
        <input type="date" name="fecha" id="fecha" class="form-control" value="{{ old('fecha', $data->fecha ?? '' ) }}" required>
    </div>
</div>
<script>
function contenidos(id){
       $.ajax({
            type: "get",
            url: "{{ url('/admin/contenido')}}"+'/'+id,
            success: function (data) {
                $('#contenido').empty();
                $.each(data,function(key, contenido) {
                $("#contenido").append('<option value='+contenido.id+'>'+contenido.descripcion+'</option>');
                }); 

            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
 }
 </script>