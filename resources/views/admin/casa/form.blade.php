<div class="form-group col-lg-6">
    <label for="fecha_fundacion" class="col-lg-4 control-label requerido">Fecha Fundacion</label>
    <div class="col-lg-8">
        <input type="date" name="fecha_fundacion" id="fecha_fundacion" class="form-control" value="{{ old('fecha_fundacion', $data->fecha_fundacion ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="nombre_casa" class="col-lg-4 control-label requerido">Nombre de la Casa</label>
    <div class="col-lg-8">
        <input type="text" name="nombre_casa" id="nombre_casa" class="form-control" value="{{ old('nombre_casa', $data->nombre_casa ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="direccion_casa" class="col-lg-4 control-label requerido">Direccion de la Casa</label>
    <div class="col-lg-8">
        <input type="text" name="direccion_casa" id="direccion_casa" class="form-control" value="{{ old('direccion_casa', $data->direccion_casa ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="telefono_casa" class="col-lg-4 control-label requerido">Telefono de la Casa</label>
    <div class="col-lg-8">
        <input type="text" name="telefono_casa" id="telefono_casa" class="form-control" value="{{ old('telefono_casa', $data->telefono_casa ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="pais" class="col-lg-4 control-label requerido">Pais</label>
    <div class="col-lg-8">
        <select name="pais" id="pais" onchange="ciudades(this.value)" class="form-control" required>
            <option value="">Seleccione..</option>
                @foreach($pais as $row)
                <option value="{{$row->id}}" @if(isset($data->pais) and $data->pais  == $row->id ) selected @endif>{{$row->name}}</option>
                @endforeach
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="ciudad" class="col-lg-4 control-label requerido">Ciudad</label>
    <div class="col-lg-8">
        <select name="ciudad" id="ciudad" class="form-control" required>
            <option @if(isset($data->ciudad)) value="{{$data->ciudades->id}}" @endif>@if(isset($data->ciudad)) {{$data->ciudades->name}} @endif</option>
        </select>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="nombre_encargado" class="col-lg-4 control-label requerido">Nombre Encargado</label>
    <div class="col-lg-8">
        <input type="text" name="nombre_encargado" id="nombre_encargado" class="form-control" value="{{ old('nombre_encargado', $data->nombre_encargado ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="obispo_pertenece" class="col-lg-4 control-label requerido">Obispo a el que pertenece</label>
    <div class="col-lg-8">
        <input type="text" name="obispo_pertenece" id="obispo_pertenece" class="form-control" value="{{ old('obispo_pertenece', $data->obispo_pertenece ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="primera_madre" class="col-lg-4 control-label requerido">Primera Madre</label>
    <div class="col-lg-8">
        <input type="text" name="primera_madre" id="primera_madre" class="form-control" value="{{ old('primera_madre', $data->primera_madre ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="primera_equipo_hermanas" class="col-lg-4 control-label requerido">Primer equipo de hermanas</label>
    <div class="col-lg-8">
        <input type="text" name="primera_equipo_hermanas" id="primera_equipo_hermanas" class="form-control" value="{{ old('primera_equipo_hermanas', $data->primera_equipo_hermanas ?? '' ) }}" required>
    </div>
</div>

<div class="form-group col-lg-6">
    <label for="nombre_madre_actual" class="col-lg-4 control-label requerido">Madre actual</label>
    <div class="col-lg-8">
        <input type="text" name="nombre_madre_actual" id="nombre_madre_actual" class="form-control" value="{{ old('nombre_madre_actual', $data->nombre_madre_actual ?? '' ) }}" required>
    </div>
</div>
<div class="form-group col-lg-6">
    <label for="equipo_actual_hermanas" class="col-lg-4 control-label requerido">Equipo actual de hermanas</label>
    <div class="col-lg-8">
        <input type="text" name="equipo_actual_hermanas" id="equipo_actual_hermanas" class="form-control" value="{{ old('equipo_actual_hermanas', $data->equipo_actual_hermanas ?? '' ) }}" required>
    </div>
</div>
<div class="form-group col-lg-6">
    <label for="mision_que_realiza" class="col-lg-4 control-label requerido">Mision que realiza la casa/convento</label>
    <div class="col-lg-8">
        <input type="text" name="mision_que_realiza" class="form-control" value="{{ old('mision_que_realiza', $data->mision_que_realiza ?? '' ) }}" required>
    </div>
</div>

