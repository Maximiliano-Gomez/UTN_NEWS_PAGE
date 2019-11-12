<?php

include "configuracion.php";

$id = $_POST["id"];
$nombre = $_POST["nombre"];

$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);

$sql = "update autor set nombre='$nombre' where id=$id ";

$respuesta = mysqli_query($conexion, $sql);
//var_dump($respuesta);

if ($respuesta==true) {
    header("Location: listado_autores.php");

} else {
    echo "No se pudo realizar la consulta";
}


?>
