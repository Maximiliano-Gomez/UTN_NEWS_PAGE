<?php
include "configuracion.php";
$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
$nombre =$_POST['nombre'];
$titulo =$_POST['titulo'];
$subtitulo =$_POST['subtitulo'];
$contenido =$_POST['contenido'];
$autor =$_POST['autor'];
$genero =$_POST['genero'];









$sql = "insert into autor (nombre) values('$nombre')";
mysqli_query($conexion, $sql);


?>