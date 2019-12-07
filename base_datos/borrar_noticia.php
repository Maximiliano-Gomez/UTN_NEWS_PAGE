<?php

$id = $_GET["id"];

include "configuracion.php";
$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
$sql = "delete from noticia where id=$id";
$rta = mysqli_query($conexion, $sql);
header("Location: listado_noticias.php");

?>