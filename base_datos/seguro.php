<?php
session_start();



if (!isset($_SESSION["login_ok"])) {
	header("Location: login.html");
	die();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <title>Bienvenido</title>
   <style>
   body {
           text-align:center;
            background: black;
            color: whitesmoke;
            margin: 400px;
           font-size: 10pt;
   }
   h1 {
       display: flex;
       background-color: none;
       justify-content: center;
   }
   .menu ul {
        display: flex;
        padding: 0;
       margin: 0;
        list-style: none;
    }
   .menu a {
        display: block;
        padding: 0.5em;
        background-color: aquamarine;
        text-decoration: none;
        color: #191C26;
   }
  .menu a:hover {
        background-color: whitesmoke;
    }
    .menu ul li ul {
        display: none;
    }
    .menu ul li a:hover + ul, .menu ul li ul:hover {
        display: block;
    }
   </style>
</head>
<body>
    <h1>Panel De Control<h1><br>
       <nav class="menu">
           <ul>
               <li><a href="#">Usuario</a>
                   <ul>
                       <li><a href="listado_autores.php">Ver</a></li>
                       <li><a href="#">Agregar</a></li>
                       <li><a href="#">Editar</a></li>
                       <li><a href="#">Borrar</a></li>
                   </ul>
               </li>
               <li><a href="#">Noticia</a>
                   <ul>
                       <li><a href="#">Ver</a></li>
                       <li><a href="alta_notica.php">Agregar</a></li>
                       <li><a href="#">Editar</a></li>
                       <li><a href="#">Borrar</a></li>
                   </ul>
               </li>
           </ul>
       </nav>
</body>
</html>