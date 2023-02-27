@extends('theme.lte.layout')
@section('content')
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Hermanas', {{$hermanas}}],
          ['Empleados', {{$empleados}}],
          ['Acogidos', {{$acogidos}}],
        ]);

        // Set chart options
        var options = {'title':'Informe General por Ciudad',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <h2>Filtre por pais y por ciudad</h2>
    <form method="post" action="{{ url('/admin/informes')}}">
        @csrf
    <div class="form-group row col-md-4">
        <label for="pais" class="col-md-4 col-form-label text-md-right">{{ __('Pais') }}</label>

        <div class="col-md-6">
            <select class="form-control @error('pais') is-invalid @enderror" onchange="ciudades(this.value)" name="pais"  autocomplete="pais" autofocus>
                <option>
                </option>
                @foreach($paises as $pais)
                    <option value="{{$pais->id}}">{{$pais->name}}</option>
                @endforeach
            </select>
            @error('pais')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
    <div class="form-group row col-md-4">
        <label for="ciudad_actual" class="col-md-4 col-form-label text-md-right">{{ __('Ciudad Actual') }}</label>

        <div class="col-md-6">
            <select class="form-control @error('ciudad_actual') is-invalid @enderror" id="ciudad" name="ciudad_actual"  autocomplete="ciudad_actual" autofocus>
                <option value="">
                    Seleccione la ciudad
                </option>
                @foreach($ciudades as $ciudad)
                    <option value="{{$ciudad->id}}">{{$ciudad->name}}</option>
                @endforeach
            </select>
            @error('ciudad_actual')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
    <div class="form-group row col-md-4">
        <button class="btn btn-info">Graficar</button>
    </div>

    </form>
    <br><br>
    <div class="form-group row col-md-12">
     <input type="button" class="btn btn-info" onclick="printDiv('chart_div')" value="Exportar" />
    </div>
    <br><br><br>
    <div id="chart_div"></div>
  </body>
</html>
@endsection
<script>
function ciudades(code){
       $.ajax({
            type: "get",
            url: "{{ url('/admin/ciudadpais')}}"+'/'+code,
            success: function (data) {
                $('#ciudad').empty();
                $("#ciudad").append("<option value=''>seleccione la ciudad</option>");
                $.each(data,function(key, ciudad) {
                
                $("#ciudad").append("<option value='{{asset('/admin/informes')}}/"+ciudad.id+"'>"+ciudad.name+"</option>");
                }); 

            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
 }
 </script>
 <script>
  function printDiv(nombreDiv) {
      var contenido= document.getElementById(nombreDiv).innerHTML;
      var contenidoOriginal= document.body.innerHTML;

      document.body.innerHTML = contenido;

      window.print();

      document.body.innerHTML = contenidoOriginal;
  }
</script>