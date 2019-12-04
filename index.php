<?php
    include "base_datos/configuracion.php";
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_DB);
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NBC NEWS</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <aside>
            <a href="https://www.disco.com.ar/Login/PreHome.aspx"><img src="publi.jpg" alt="publicidad" ></a>
        </aside>
        <div class="header">
                <div id= "logo"></div> 
                <div id= "social">
                        <ul>
                            <li><a href="https://www.instagram.com/"><img src="insta.png" alt=""></a></li>
                            <li><a href="https://www.facebook.com/"><img src="face.png" alt=""></a></li>
                            <li><a href="https://twitter.com/"><img src="twi.png" alt=""></a></li>
                            <li><a href="https://www.youtube.com/?gl=AR&tab=w1"><img src="yout.png" alt=""></a></li>
                        </ul>
                </div>
                <form action="base_datos\login.php" method="post">
                    <input type="text" name="username" placeholder="Usuario">
                    <input type="password" name="password" placeholder="Contraseña">
                    <button type="submit">Ingresar</button>
                </form> 
        </div>
    </header>

   <ul class="menuprincipal">
        <li><a class="active" href="#home">INICIO</a></li>
        <li><a href="pag_blanco.html">Politica</a></li>
        <li><a href="pag_blanco.html">Policiales</a></li>
        <li><a href="pag_blanco.html">Deportes</a></li>
        <li><a href="pag_blanco.html">Espectaculos</a></li>
        <li><a href="pag_blanco.html">Economia</a></li>
        <li><a href="pag_blanco.html">Mundo</a></li>
        <li><a href="pag_blanco.html">Sociedad</a></li>
        <li><a href="pag_tecno.html">Tecnologia</a></li>
        <li><a href="pag_blanco.html">Cultura</a></li>
      </ul>
    <main>
        <div class="columnaizquierda"> 
            
            <article>
                <h3>NOTICIAS RELACIONADAS</h3><br>
                <img src="noticia_izquierda1.jpg" alt="">
                <a href="https://www.bbc.com/mundo/noticias-49784707">Por qué Microsoft quiere que Estados Unidos levante el veto a Huawei</a>

            </article>
            <article>
                <h5>--</h5>
                <img src="noticia_izquierda2.jpg" alt="">
                <a href="https://www.bbc.com/mundo/noticias-internacional-49803594">El secretismo de Rusia sobre el agujero en la Estación Espacial Internacional que puso en alerta a los astronautas</a>

            </article>

        </div>
        <article class="artcentral">
                <?php
                    $sql = "select * from noticia where id=1";
                    $respuesta = mysqli_query($conexion, $sql);
                    $fila = mysqli_fetch_array($respuesta);
                ?>
                <h2>
                    <?php
                         echo $fila["titulo"];
                    ?>
                </h2>
                <h5><?php
                         echo $fila["subtitulo"];
                ?>
                </h5>
            <img src="<?php echo $fila['imagen_1'];?>" alt="Agente Paloma">
                <p>
                     <?php
                         echo $fila["contenido"];
                     ?>           
                </p>

        </article>
        <div class="columnaderecha">
            
            <article>
                <H4>ACTUALIDAD</H4><br>
                <img src="img_columnaderecha1.jpg" alt="">
                <a href="https://www.bbc.com/mundo/noticias-internacional-49892850">Por qué Microsoft quiere que Estados Unidos levante el veto a Huawei</a>

            </article>
            <article>
                <h5>--</h5>
                <img src="img_columnaderecha2.jpg" alt="">
                <a href="https://www.bbc.com/mundo/noticias-america-latina-49887706">El secretismo de Rusia sobre el agujero en la Estación Espacial Internacional que puso en alerta a los astronautas</a>

            </article>

        </div>
    </main>
    <footer> 
        <div>
        <ul class="listafooter">
            <li><a href="pag_blanco.html">Terms of Use</a></li>
            <li><a href="pag_blanco.html">About NBC</a></li>
            <li><a href="pag_blanco.html">Privacy policy</a></li>
            <li><a href="pag_blanco.html">Cookies</a></li>
            <li><a href="pag_blanco.html">Accesibility Help</a></li>
            <li><a href="pag_formulario.html">Contact the NBC</a></li>
        </ul>
        </div>
        <div class="copyright">
        <p>Copyright © 2019 NBC. The NBC is not responsible for the content of external sites. Read about our approach to external linking.</p>
        </div>
    </footer>  

</body>
</html>