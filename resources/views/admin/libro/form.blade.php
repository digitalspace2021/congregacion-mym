<div class="form-group col-lg-6">
    <label for="casa" class="col-lg-3 control-label requerido">Convento</label>
    <div class="col-lg-8">
        <select name="id_casa" id="id_casa" class="form-control" required>
            <option value="">Seleccione..</option>
            @foreach($casa as $row)
            @isset($data)
             <option value="{{$row->id}}" {{ ($data->id_casa == $row->id) ? 'selected' : '' }}>{{$row->nombre_casa}}</option>
            @else
             <option value="{{$row->id}}">{{$row->nombre_casa}}</option>
            @endif
            @endforeach
        </select>
    </div>
</div>  

<div class="form-group col-lg-6">
    <label for="titulo" class="col-lg-3 control-label requerido">Título</label>
        <div class="col-lg-8">
            <input type="text" name="titulo" id="titulo" class="form-control" 
            value="{{old('titulo', $data->titulo ?? '')}}" required/>
        </div>
</div>

<div class="form-group col-lg-6">
    <label for="autor" class="col-lg-3 control-label requerido">Autor</label>
        <div class="col-lg-8">
            <input type="text" name="autor" id="autor" class="form-control" 
            value="{{old('autor', $data->autor ?? '')}}" required/>
        </div>
</div>
<div class="form-group col-lg-6">
    <label for="area" class="col-lg-3 control-label requerido">Area</label>
        <div class="col-lg-8">
            <select name="area" id="area" class="form-control" 
            value="{{old('area', $data->area ?? '')}}" required/>
                <option></option>
                @foreach($areas as $area)
                    <option  @if(isset( $data->area) and $data->area == $area->id) selected @endif value="{{$area->id}}">{{$area->area}}</option>
                @endforeach
                
            </select>
        </div>
</div>

<div class="form-group col-lg-6">
    <label for="cantidad" class="col-lg-3 control-label requerido">Cantidad</label>
        <div class="col-lg-8">
            <input type="number" name="cantidad" id="cantidad" class="form-control"
             value="{{old('cantidad', $data->cantidad ?? '')}}" required/>
        </div>
</div>

<div class="form-group col-lg-6">
    <label for="editorial" class="col-lg-3 control-label requerido">Editorial</label>
        <div class="col-lg-8">
            <input type="text" name="editorial" id="editorial" class="form-control" 
            value="{{old('editorial', $data->editorial ?? '')}}" required/>
        </div>
</div>
    
<div class="form-group col-lg-6">
    <label for="foto" class="col-lg-3 control-label requerido">Foto</label>
    <div class="col-lg-7">
        <input type="file" name="foto_up" id="foto" 
        data-initial-preview="{{isset($data->foto)? 
        Storage::url("imagenes/caratulas/$data->foto") : 
        "http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=Caratula+Libro" }}" 
        accept="image/*"/>
    </div>
</div>