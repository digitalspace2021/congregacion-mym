@extends('theme.lte.layout')
@section('title','Administrador')
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
        var options = {'title':'Informe General',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>

  <body>
  <input type="button" class="btn btn-info" onclick="printDiv('chart_div')" value="Exportar" /><br><br>

    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>
@endsection

<script>
  function printDiv(nombreDiv) {
      var contenido= document.getElementById(nombreDiv).innerHTML;
      var contenidoOriginal= document.body.innerHTML;

      document.body.innerHTML = contenido;

      window.print();

      document.body.innerHTML = contenidoOriginal;
  }
</script>