<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Nbc News</title>
    <script>
        function validarBorrar() {
            return confirm("Seguro que deseas borrar...");
        }
    </script>
    
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
    <table class="table" >
    <thead class="thead-dark">

        <tr>
            <th scope="col">Titulo</th>
            <th scope="col">Autor</th>
            <th scope="col">Genero</th>
            <th scope="col">ID</th>
            <th scope="col">Acciones</th>
        </tr>
    <?php
        while($fila = mysqli_fetch_array($respuesta)) {
            $titulo = $fila["titulo"];
            $autor = $fila["autor"];
            $genero = $fila["genero"];
            $id = $fila["id"];
            echo "<tr>
                    <td>$titulo...</td>
                    <td>$autor</td>
                    <td>$genero</td>
                    <td>$id</td>
                    <td>
                        <button><a href='borrar_noticia.php?id=$id' onclick='return validarBorrar()'>Borrar</a></button>
                        <button><a href='tab.php?id=$id' >Ver</a></button>

                    </td>
                  </tr>";
        }

    ?>
    </table>
</body>
</html>