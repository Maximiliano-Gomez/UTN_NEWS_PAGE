<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="estilos.css">
    <script>
        function validarBorrar() {
            return confirm("Seguro que deseas borrar...");
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Listado de autores</h1>
        
        <table class="table table-striped">
            <tr>
                <th>Nombre</th>
                <th></th>
            </tr>
    <?php
        include "configuracion.php";
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
        $sql = "select * from autor";
        $respuesta = mysqli_query($conexion, $sql);
        while($fila = mysqli_fetch_array($respuesta)) {
            $nombre = $fila["nombre"];
            $id = $fila["id"];
            echo "<tr>
                    <td>$nombre</td>
                    <td>
                        <a href='borrar.php?id=$id' onclick='return validarBorrar()'>Borrar</a>
                        <a href='editar.php?id=$id' >Editar</a>
                        <a href='agregar.php?id=$id' >agregar</a>

                    </td>
                </tr>";
        }

    ?>
        </table>
    </div>
</body>
</html>