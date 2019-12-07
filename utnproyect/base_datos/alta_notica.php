<?php
        include "configuracion.php";
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
        $sql = "select * from autor";
        $respuesta = mysqli_query($conexion, $sql);
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
            background:whitesmoke;
        }
        h1{
            display:flex;
            justify-content:center;
            margin-top:50px;
            }
        form {
            margin-top:50px;
            margin-left:550px;
        }
        button{
            margin-top:50px;
            margin-left:550px;
        }

    </style>

<body>

<h1>Bienvenido Al Editor De Noticias</h1>

<form action="agregar_guardar.php" method="post">

    <label>Titulo:
    <input type="text" name="titulo" id="titulo">
    </label><br>
    <label>Subtitulo:
    <input type="text" name="subtitulo" id="subtitulo">
    </label><br>
    <label>Contenido:
    <input type="text" name="contenido" id="contenido">
    </label><br>

    <label>Autor:
        <select name="autor_id">
            <option value="" id="autor">[Selecciona una opcion]</option>
        <?php
            while($fila = mysqli_fetch_array($respuesta)) {
                $id = $fila["id"];
                $nombre = $fila["nombre"];
                echo "<option value='$id'>$nombre</option>";
            }

        ?>
        </select>
    
    </label><br>

    <label>Genero:
        <select name="genero_id">
            <option value="" id="genero">[Selecciona una opcion]</option>
        <?php
            while($fila = mysqli_fetch_array($respuesta)) {
                $id = $fila["id"];
                $nombre = $fila["nombre"];
                echo "<option value='$id'>$nombre</option>";
            }
        ?>
        </select>
    </label><br>


    <form enctype="multipart/form-data" action="__URL__" method="POST">
    <!-- El nombre del elemento de entrada determina el nombre en el array $_FILES -->
     Seleccionar Imagen: <input name="fichero_usuario" type="file" />
    <input type="submit" value="Enviar fichero" />
    </form>

    <button type="submit">Enviar Noticia</button>
    <button type="reset">Borrar Noticia</button>
</body>
</form>
</html>