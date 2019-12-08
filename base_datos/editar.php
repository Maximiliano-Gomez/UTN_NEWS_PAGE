<?php
$id = $_GET["id"];

include "configuracion.php";
$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);


$sql = "select * from autor where id=$id";
//echo $sql;
$rta = mysqli_query($conexion, $sql);
$fila = mysqli_fetch_array($rta);

$nombre = $fila["nombre"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nbc News</title>
   
    <style>
        body{
            display:flex;
            justify-content:center;
            margin-top:125px;
            color: black;
            font-size: 15pt; 
        }
     </style>   
</head>
<body>
<form method="post" action="editar_guardar.php">
  <?php
    echo " <input type='hidden' name='id' value='$id' />";
    echo " <input type='text' name='nombre' value='$nombre'>";
  ?>
  <button type="submit">Guardar</button>
  <button type="button" onclick="history.back()" value="volver atrás">Volver Atrás</button>
</form>
</body>
</html>