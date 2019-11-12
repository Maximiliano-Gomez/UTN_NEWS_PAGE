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

<form method="post" action="editar_guardar.php">
  <?php
    echo " <input type='hidden' name='id' value='$id' />";
    echo " <input type='text' name='nombre' value='$nombre'>";
  ?>
  <button type="submit">Guardar</button>
</form>