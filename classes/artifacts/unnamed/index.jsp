<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
     <meta charset="utf-8">
     <title>Calculadora IMC</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

     <!-- Optional theme -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">


     <style>
          .panel{
               width: 35%;
               margin: 0 auto;
          }
          .panel-body{
               width: 100%;
               text-align: center;
               margin: 0 auto;
          }
     </style>
</head>
<body>
<div class="panel panel-primary">
     <div class="panel-body">

          <h2>Calculadora IMC</h2>

          <form action="/imc" method="POST" class="form">
               <div class="field">
                    <label>Peso: </label>
                    <div >
                         <input id="weight" name="weight" type="text">
                         <div >Kg</div>
                    </div>
               </div>
               <div class="field">
                    <label>Altura: </label>
                    <div >
                         <input id="height" name="height" type="text">
                         <div >m</div>
                    </div>
               </div>

               <button id="resultButton" class="btn btn-default navbar-btn" type="submit">Calcular</button>
          </form>

     </div>
     <div class="result">
          <%=request.getAttribute("result")%>
     </div>

</div>
</body>
</html>
