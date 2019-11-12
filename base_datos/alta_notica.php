<?php
        include "configuracion.php";
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
        $sql = "select * from autor";
        $respuesta = mysqli_query($conexion, $sql);


?>
<h1>Bienvenido al editor de noticias</h1>

<form action="agregar_guardar.php" method="post">

    <label>titulo:
    <input type="text" name="titulo" id="titulo">
    </label><br>
    <label>subtitulo:
    <input type="text" name="subtitulo" id="subtitulo">
    </label><br>
    <label>contenido:
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

    <label>genero:
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
    
    </label>
    <button type="submit">AGREGAR</button>
    <button type="reset">RESET</button>

</form>