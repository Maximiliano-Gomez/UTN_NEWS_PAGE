<?php
include "configuracion.php";
$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
$nombre =$_POST['nombre'];









$sql = "insert into autor (nombre) values('$nombre')";
$respuesta = mysqli_query($conexion, $sql);

if ($respuesta==true) {
    header("Location: listado_autores.php");

} else {
    echo "No se pudo realizar la consulta";
}


?>