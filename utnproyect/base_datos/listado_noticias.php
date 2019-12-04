<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nbc News</title>
</head>
<body>
    <?php
        include "configuracion.php";
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
        $sql = "select noticia.id, noticia.titulo, autor.nombre autor, genero.nombre genero from noticia
                inner join autor on autor_id=autor.id
                inner join genero on genero_id=genero.id";
        $respuesta = mysqli_query($conexion, $sql);
    ?>
    <table>
        <tr>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Genero</th>
            <th></th>
        </tr>
    <?php
        while($fila = mysqli_fetch_array($respuesta)) {
            $titulo = $fila["titulo"];
            $autor = $fila["autor"];
            $genero = $fila["genero"];
            echo "<tr>
                    <td>$titulo</td>
                    <td>$autor</td>
                    <td>$genero</td>
                  </tr>";
        }

    ?>
    </table>
</body>
</html>