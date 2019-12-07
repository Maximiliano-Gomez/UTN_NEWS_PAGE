<?php
include "configuracion.php";
$conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
$titulo =$_POST['titulo'];
$subtitulo =$_POST['subtitulo'];
$imagen =$_POST['imagen_1'];
$contenido =$_POST['contenido'];
$genero =$_POST['genero_id'];
$nombre =$_POST['autor_id'];

$sql = "insert into noticia (titulo, subtitulo, imagen_1, contenido, fecha, genero_id, autor_id, activo, destacadas) values('$titulo', '$subtitulo', '$imagen', '$contenido', 'NOW()', '$genero', '$nombre', '1', '0')";
$respuesta = mysqli_query($conexion, $sql);

if ($respuesta==true) {
    header("Location: listado_noticias.php");

} else {
    echo "No se pudo realizar la consulta";
}


?>