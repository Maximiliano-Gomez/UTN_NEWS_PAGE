-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2019 a las 01:26:23
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nbc_news`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`) VALUES
(1, 'adrian'),
(2, 'maxi'),
(3, 'periodista'),
(4, 'jose manuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'politica'),
(2, 'policiales'),
(3, 'deportes'),
(4, 'espectaculos'),
(5, 'economia'),
(6, 'mundo'),
(7, 'sociedad'),
(8, 'tecnologia'),
(9, 'cultura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `subtitulo` varchar(150) NOT NULL,
  `imagen_1` varchar(150) DEFAULT NULL,
  `contenido` text NOT NULL,
  `fecha` datetime NOT NULL,
  `genero_id` int(10) UNSIGNED NOT NULL,
  `autor_id` int(10) UNSIGNED NOT NULL,
  `activo` bit(1) NOT NULL,
  `destacadas` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `subtitulo`, `imagen_1`, `contenido`, `fecha`, `genero_id`, `autor_id`, `activo`, `destacadas`) VALUES
(1, 'Cómo la CIA usó palomas mensajeras durante la Guerra Fría para operaciones de espionaje contra la Unión Soviética\r\n', 'Gordon Corera BBC, Corresponsal de Seguridad', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/11A9E/production/_108805327_gettyimages-938576954.jpg', 'La Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.', '2019-11-08 00:00:00', 6, 1, b'1', b'1'),
(2, 'Los deportistas profesionales se cuelan en los torneos de videojuegos', 'Javier Cortes Especialista de Tecnologia\r\n', 'https://bucket1.glanacion.com/anexos/fotos/70/3112570w1033.jpg', 'La última vez que el Mónaco alcanzó una final en un torneo europeo fue en 2004 y fue amarga: el Oporto le arrebató la que pudo haber sido su primera Champions League.\r\n\r\n\r\nEste año, el equipo monegasco disputó otra final en la que se impuso al Celtic, aunque la competición no tuvo lugar en los estadios a los que nos tiene acostumbrados la Liga de Campeones: esta vez, el partido se jugaba dentro de una computadora.\r\n\r\n\r\nLos organizadores de la liga eFootball.Pro, un torneo de eSports de fútbol pensado para clubes de fútbol, pueden estar contentos con los resultados de su primera edición. Trabajan mano a mano con Konami -la compañía que desarrolla el videojuego Pro Evolution Soccer-, han organizado eventos en España, Italia y Alemania y han alcanzado una audiencia nada desdeñable: los videos en directo de los partidos de la competición tuvieron más de un millón y medio de visualizaciones. Lo más curioso de todo esto es que el impulsor de esta iniciativa y creador de Esports Media Rights, la compañía que gestiona este torneo, no es un empresario al uso, sino el futbolista profesional Gerard Piqué.\r\n\r\n\r\n\"Piqué ha aportado al proyecto su conocimiento del sector deportivo, clave para conseguir que jugadores y clubes estén a gusto y que la competición tenga interés para los espectadores y aficionados\", señala el director ejecutivo de la empresa, Jordi Orteu. En su opinión, todavía estamos empezando a ver lo que los deportistas tradicionales pueden aportar a los eSports. \"Con la evolución y el crecimiento del sector, es probable que esta tendencia vaya en aumento y la implicación de los deportistas sea mayor\".', '2019-12-03 00:00:00', 8, 1, b'1', b'0'),
(13, 'Por qué Microsoft quiere que Estados Unidos levante el veto a Huawei', 'El presidente de Microsoft, Brad Smith, pidió que Estados Unidos retire la prohibición de suministrarle el software de Windows a Huawei para sus compu', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/5E0C/production/_108867042_85145e49-b824-4948-888e-81d1990c005f.jpg', 'El veto sobre Huawei, que impide que las empresas estadounidenses le suministren sus avances tecnológicos, fue impuesto por el gobierno de Donald Trump el pasado mayo ante acusaciones de que la firma china supone una amenaza para la seguridad de EE.UU.\r\n\r\nSmith dijo que no cree que la seguridad de EE.UU. se pueda ver amenazada por dejar que los clientes de Huawei usen el sistema operativo de Microsoft o las aplicaciones del paquete Office.\r\n\r\n\"Los gobiernos de todo el mundo abordan sus necesidades de seguridad nacional\", le dijo Smith a la BBC.\r\n\r\n\"Pero al mismo tiempo creemos que sería un error intentar levantar una cortina digital de acero en el océano Pacífico. Creo que eso sería un lastre para Estados Unidos, un lastre para las democracias del mundo\".\r\n\"Somos una de las empresas que le han solicitado al Departamento de Comercio de EE.UU. el permiso para poder seguir ofreciendo nuestro sistema operativo a Huawei para dispositivos como computadoras portátiles\".\r\n\r\n\"Puede que haya algunos temas que requieran ciertas estrategias en torno al 5G, pero uno debe preguntarse si esa es la estrategia correcta para todo el equipamiento que una empresa en particular puede producir\".', '0000-00-00 00:00:00', 7, 1, b'1', b'1'),
(14, 'Disolución del Congreso en Perú: 4 claves para entender el enfrentamiento entre Vizcarra y el Parlamento', 'El presidente de Perú, Martín Vizcarra, decretó el lunes la disolución \"constitucional\" del Congreso y llamó a elecciones parlamentarias.', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/166C3/production/_109034819_c765dedd-3772-45f0-b0c0-ff0e293e03f8.jpg', 'Horas después, sin embargo, el Congreso respondió aprobando la suspensión de Vizcarra de sus funciones presidenciales durante 12 meses por \"incapacidad temporal\". Y juramentó a la vicepresidenta Mercedes Aráoz como \"presidenta en funciones\" del país.\r\n\r\nEl país sudamericano, que ya atravesaba una larga crisis política por la corrupción, quedó así sumido en una crisis institucional por el enfrentamiento entre el gobierno y el Congreso.\r\n\r\nQuién es Mercedes Aráoz, nombrada \"presidenta en funciones\" por el congreso peruano para sustituir a Vizcarra\r\nEl Congreso de Perú disuelto por Vizcarra lo suspende de su cargo y nombra nueva \"presidenta en funciones\" del país\r\nTe explicamos a continuación qué es lo que está pasando en Perú.\r\n1. ¿Por qué decidió Vizcarra disolver el Congreso?\r\nVizcarra hizo pública su decisión de disolver el Congreso y convocar elecciones legislativas para el próximo 26 de enero aplicando una norma constitucional que le habilita a ello si la cámara le niega una cuestión de confianza a dos gabinetes presidenciales.\r\nEl gobierno había planteado esta cuestión de confianza —la tercera en menos de un año— sobre el proceso de selección de candidatos del Tribunal Constitucional (TC).\r\n\r\nEl argumento gubernamental era que el proceso de selección no era transparente y no garantizaba la división de poderes en la nación.\r\n\r\nEl lunes, sin embargo, el Congreso —dominado por la oposición fujimorista y sus aliados— decidió seguir con la agenda preestablecida de la sesión; es decir, elegir primero a los miembros del TC y analizar después la cuestión de confianza planteada por el Ejecutivo.\r\n\r\nTras el nombramiento de un nuevo magistrado para el TC —uno de los seis que deben ser reemplazados por el fin de su periodo—, Vizcarra anunció la disolución de la cámara y la consecuente convocatoria de elecciones legislativas.\r\n\r\nEl presidente daba por hecho que, con la votación del magistrado, la cuestión de confianza le había sido denegada. Pero cuando ya el presidente había iniciado su intervención pública, el Congreso votó otorgándole la confianza.\r\n\r\nEs por esto que los opositores argumentan que el presidente no tenía derecho a disolver la cámara y algunos hablan de \"autogolpe\".\r\nEl actual Congreso fue elegido en 2016 para un periodo que terminaba en 2021.\r\n\r\nEn un mensaje televisado, Vizcarra declaró que con la disolución del Congreso buscaba \"dar un fin a esta etapa de entrampamiento político que ha impedido que Perú crezca al ritmo de sus posibilidades\".', '0000-00-00 00:00:00', 5, 1, b'1', b'1'),
(15, 'Especial BBC | Jamal Khashoggi: qué dicen las grabaciones secretas del asesinato del periodista disidente en el consulado de Arabia Saudita', 'Caminé por una calle arbolada en una zona tranquila de Estambul (Turquía) y me acerqué a una mansión de color crema, adornada con cámaras de videovigi', 'https://ichef.bbci.co.uk/news/976/cpsprodpb/991B/production/_108959193_1920-top-image-a2.jpg', 'Hace un año, un periodista saudita exiliado hizo el mismo recorrido: Jamal Khashoggi fue grabado por las cámaras de circuito cerrado (CCTV). Serían las últimas imágenes que se captaron de él.\r\n\r\nEntró en el consulado de Arabia Saudita en la ciudad turca y fue asesinado por un escuadrón de la muerte.\r\nPero el consulado estaba intervenido con micrófonos del servicio de inteligencia turco, por lo que todo fue grabado: la planificación para matarlo y la ejecución.\r\n\r\nSolo unas pocas personas han escuchado esas cintas. Dos de ellas hablaron en exclusiva con el programa Panorama de la BBC.\r\n\r\nLa baronesa británica Helena Kennedy, abogada y experta en derechos humanos, escuchó la agonía de Jamal Khashoggi.\r\n\r\n\"El horror de escuchar la voz de alguien, de oír el miedo en su voz, y [saber] que estás escuchando algo [que ocurrió] en vivo hace que sientas escalofríos por todo tu cuerpo\".\r\nKennedy tomó detalladas notas de las conversaciones que escuchó entre los miembros del escuadrón de la muerte saudita.\r\n\r\n\"Puedes oír cómo se ríen. Es un asunto escalofriante. Están ahí esperando, sabiendo que ese hombre va a llegar y va a ser asesinado y descuartizado\".\r\n\r\n\"Murió estrangulado en cuanto entró al consulado\"\r\nKennedy fue invitada a unirse a un equipo liderado por Agnès Callamard, la relatora especial de Naciones Unidas sobre ejecuciones extrajudiciales, sumarias o arbitrarias.\r\n\r\nCallamard me habló de su empeño en usar su propio mandato para investigar el asesinato de Khashoggi cuando la ONU se mostró reacia a lanzar una investigación penal internacional.\r\nLe costó una semana persuadir a la inteligencia turca de permitirles a ella y a Kennedy, junto con su traductor de árabe, escuchar las cintas.\r\n\r\n\"Claramente, la intención de Turquía era darme acceso, ayudarme a investigar la planificación y la premeditación\", cuenta Callamard.\r\n\r\nPudieron escuchar 45 minutos de audios extraídos de grabaciones hechas en dos días cruciales.\r\n\r\nJamal Khashoggi había estado en Estambul -una ciudad en la que opositores de regímenes de todo Medio Oriente han buscado refugio durante mucho tiempo- semanas antes de ser asesinado.\r\n\r\nEl periodista de 59 años, padre de cuatro hijos y divorciado, se había prometido poco antes de su muerte con Hatice Cengiz, una investigadora académica turca.\r\n\r\nTenían la esperanza de construir su vida juntos en esta ciudad cosmopolita, pero para volver a casarse, Khashoggi necesitaba sus papeles del divorcio.\r\n\r\nEl 28 de septiembre de 2018, él y Cengiz visitaron una oficinal municipal turca, pero les dijeron que necesitaban obtener los papeles en el consulado saudita.\r\n\r\n\"Ese fue el recurso final. Tenía que ir a buscar esos documentos al consulado para que pudiéramos casarnos oficialmente porque no podía regresar a su país\"; me contó Cengiz cuando me reuní con ella en una cafetería.', '0000-00-00 00:00:00', 4, 2, b'1', b'1'),
(16, 'El secretismo de Rusia sobre el agujero en la Estación Espacial Internacional que puso en alerta a los astronautas', '\"¿Podemos tener secretos, verdad?\"', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/A8C2/production/_108920234_gettyimages-1146397.jpg', 'De esa forma se excusó Dmitry Rogozin, jefe de la agencia espacial rusa Roscosmos, tras negarse a revelar las causas que originaron un agujero en una nave de la Estación Espacial Internacional (EEI) en agosto de 2018.\r\n\r\n\"Ocurrió en los habitáculos de la estación (...) Hemos tomado todas las muestras. Está completamente claro lo que sucedió, pero no les diremos nada\", afirmó Rogozin durante una conferencia anual de ciencias aplicadas en San Petersburgo, Rusia, a mediados de la semana pasada, según recogieron los medios rusos.\r\n\r\nLa fuga de aire que puso en alerta a la Estación Espacial Internacional (y el sorprendente método con el que la repararon)\r\nTras esta declaración y un año después del incidente que encendió las señales de alarma en la tripulación del transbordador Soyuz MS-09, la incertidumbre continúa a pesar de que Roscosmos ya sabe lo acontecido.\r\n\r\nLa NASA, por sPero, ¿qué sucedió exactamente el año pasado?\r\nUn par de meses después de que la nave Soyuz MS-09 transportara a tres astronautas hasta la EEI, los tripulantes encontraron un pequeño orificio por el cual se estaba originando una despresurización en el interior.\r\n\r\nEstación Espacial Internacional: por qué Rusia asegura que el agujero en una de sus naves \"fue deliberado\"\r\nLa abertura de apenas 2 milímetros de diámetro fue sellada con cinta y el incidente se quedó en un susto.\r\nu parte, aseguró estar buscando respuestas.\r\nEn un principio, se barajó que el agujero pudo haber sido causado por el impacto de un micrometeorito u otro desecho orbital, pero esta teoría se descartó poco después.\r\n\r\nFue entonces cuando el propio Rogozin sugirió que el agujero podría haber sido causado \"deliberadamente con un taladro en manos inestables\", aunque existían dudas sobre la intencionalidad y si había ocurrido antes del lanzamiento de la nave o una vez puesta en órbita.\r\n\r\nDespués del incidente y en medio de la oleada de especulaciones, la NASA y Roscosmos ofrecieron un comunicado conjunto en el que \"acordaron aplazar cualquier conclusión preliminar y proporcionar explicaciones cuando la investigación terminara\".\r\n\r\nPero, por ahora, Roscosmos es la única que conoce la causa y los responsables, según las declaraciones de Rogozin.\r\n\r\n¿Y qué dice la NASA?\r\nJim Bridenstine, administrador de la NASA, aseguró al periódico estadounidense The Houston Chronicle no saber nada y mencionó que contactaría a Roscosmos en busca de detalles.\r\n', '0000-00-00 00:00:00', 1, 4, b'1', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor_id` (`autor_id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
