<?php
        include "configuracion.php";
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
        ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../style.css">
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

<h1>Bienvenido A La Pagina De Carga De Noticias</h1>


<form action="agregar_noticia.php" method="post" class="noticias_alta">

    <label>Titulo:
    <input type="text" name="titulo" id="titulo">
    </label><br>
    <label>Subtitulo:
    <input type="text" name="subtitulo" id="subtitulo">
    </label><br>
    <label>Contenido:
    <textarea id="contenido" name="contenido" placeholder=""></textarea>
    </label><br>
    <label>imagen:
    <input type="text" name="imagen_1" id="imagen_1">
    </label><br>

    <?php
    $sql = "select * from autor";
    $respuesta = mysqli_query($conexion, $sql);
    ?>
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


    <?php
    $sql = "select * from genero";
    $respuesta = mysqli_query($conexion, $sql);
    ?>

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



    <button type="submit">Enviar Noticia</button>
    <button type="reset">Borrar Noticia</button>
</body>
</form>
</html>