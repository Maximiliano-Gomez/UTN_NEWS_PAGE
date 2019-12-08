<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nbc News</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script>
        function validarBorrar() {
            return confirm("Seguro que deseas borrar...");
        }
    </script>
    <style>
        body{
            display:flex;
            justify-content:center;
            margin-top:125px;
            font-size: 15pt; 
        }
        h1{
            text-align:center;
        }
        tbody, tr{
            text-align:center;
        }
    </style>    

</head>
<body>
    <div class="container">
        <h1>Listado de autores</h1></br>
        
        <table class="table table-striped">
            <tr>
                <th>Nombre</th>
                <th>Acción</th>
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
                        <a href='agregar.php?id=$id' >Agregar</a>

                    </td>
                </tr>";
        }

    ?>
        </table>
    </div>
    <button type="button" onclick="history.back()" value="volver atrás">Volver Atrás</button>
</body>
</html>