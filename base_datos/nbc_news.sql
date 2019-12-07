-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2019 a las 18:06:12
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
(1, 'Cómo la CIA usó palomas mensajeras durante la Guerra Fría para operaciones de espionaje contra la Unión Soviética\r\n', 'Gordon Corera BBC, Corresponsal de Seguridad', 'mainimage.jpg', 'La Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.\r\nLa Agencia Central de Inteligencia (CIA) de EE.UU. ha desclasificado detalles de sus misiones secretas con palomas espías durante la Guerra Fría.\r\n\r\n\r\nEstos archivos revelan cómo las palomas fueron entrenadas para misiones clandestinas que consistían en fotografiar sitios de interés dentro de la Unión Soviética.\r\n\r\n\r\nAsimismo, revelan cómo también usaron cuervos para colocar micrófonos en los alféizares de las ventanas y los delfines fueron entrenados para misiones submarinas similares.\r\n\r\n\r\nLa CIA creía que los animales podían cumplir tareas \"únicas\" en algunas de sus operaciones clandestinas.Dentro de la sede de la agencia en Langley, Virginia, hay un museo, al que tristemente no tiene acceso el público general.', '2019-11-08 00:00:00', 6, 1, b'1', b'1'),
(2, 'Los deportistas profesionales se cuelan en los torneos de videojuegos', 'Javier Cortes Especialista de Tecnologia\r\n', '../tecnologia.ima.jpg', 'La última vez que el Mónaco alcanzó una final en un torneo europeo fue en 2004 y fue amarga: el Oporto le arrebató la que pudo haber sido su primera Champions League.\r\n\r\n\r\nEste año, el equipo monegasco disputó otra final en la que se impuso al Celtic, aunque la competición no tuvo lugar en los estadios a los que nos tiene acostumbrados la Liga de Campeones: esta vez, el partido se jugaba dentro de una computadora.\r\n\r\n\r\nLos organizadores de la liga eFootball.Pro, un torneo de eSports de fútbol pensado para clubes de fútbol, pueden estar contentos con los resultados de su primera edición. Trabajan mano a mano con Konami -la compañía que desarrolla el videojuego Pro Evolution Soccer-, han organizado eventos en España, Italia y Alemania y han alcanzado una audiencia nada desdeñable: los videos en directo de los partidos de la competición tuvieron más de un millón y medio de visualizaciones. Lo más curioso de todo esto es que el impulsor de esta iniciativa y creador de Esports Media Rights, la compañía que gestiona este torneo, no es un empresario al uso, sino el futbolista profesional Gerard Piqué.\r\n\r\n\r\n\"Piqué ha aportado al proyecto su conocimiento del sector deportivo, clave para conseguir que jugadores y clubes estén a gusto y que la competición tenga interés para los espectadores y aficionados\", señala el director ejecutivo de la empresa, Jordi Orteu. En su opinión, todavía estamos empezando a ver lo que los deportistas tradicionales pueden aportar a los eSports. \"Con la evolución y el crecimiento del sector, es probable que esta tendencia vaya en aumento y la implicación de los deportistas sea mayor\".', '2019-12-03 00:00:00', 8, 1, b'1', b'0');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
