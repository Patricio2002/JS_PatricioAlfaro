-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2021 a las 02:14:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enp6`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Ncuenta` int(9) NOT NULL,
  `Promedio_cuarto` float DEFAULT NULL,
  `Promedio_quinto` float DEFAULT NULL,
  `Promedio_sexto` float DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `ApellidoP` varchar(50) DEFAULT NULL,
  `ApellidoM` varchar(50) DEFAULT NULL,
  `Area` int(1) DEFAULT NULL,
  `id_pase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `Clave` int(4) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Anio` int(1) NOT NULL,
  `Area` int(1) DEFAULT NULL,
  `Optativa` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`Clave`, `Nombre`, `Anio`, `Area`, `Optativa`) VALUES
(1400, 'Matematicas IV', 4, 0, '\r'),
(1401, 'Física III', 4, 0, '\r'),
(1402, 'Lengua Española', 4, 0, '\r'),
(1403, 'Historia Universal', 4, 0, '\r'),
(1404, 'Lógica', 4, 0, '\r'),
(1405, 'Geografía', 4, 0, '\r'),
(1406, 'Dibujo II', 4, 0, '\r'),
(1407, 'Lengua Extranjera IV', 4, 0, '\r'),
(1409, 'Estetica IV', 4, 0, '\r'),
(1410, 'Educación Física IV', 4, 0, '\r'),
(1411, 'Orientación Educativa IV', 4, 0, '\r'),
(1412, 'Informática', 4, 0, '\r'),
(1500, 'Matemáticas V', 5, 0, '\r'),
(1501, 'Química III', 5, 0, '\r'),
(1502, 'Biología IV', 5, 0, '\r'),
(1503, 'Educación para la Salud', 5, 0, '\r'),
(1504, 'Historia de México II', 5, 0, '\r'),
(1505, 'Etimologías Grecolatinas', 5, 0, '\r'),
(1506, 'Lengua extranjera V', 5, 0, '\r'),
(1512, 'Ética', 5, 0, '\r'),
(1513, 'Educación Física V', 5, 0, '\r'),
(1514, 'Estetica V', 5, 0, '\r'),
(1515, 'Orientación Educativa V', 5, 0, '\r'),
(1516, 'Literatura Universal', 5, 0, '\r'),
(1610, 'Dibujo Constructivo II', 6, 1, 'N'),
(1611, 'Física IV', 6, 1, 'N'),
(1612, 'Química IV', 6, 1, 'N'),
(1706, 'Geología y Mineralogía', 6, 1, 'S'),
(1709, 'Físico-Química', 6, 1, 'S'),
(1710, 'Temas Selec. Matemáticas', 6, 1, 'S'),
(1719, 'Informática Aplicada a la Ciencia y la Industria', 6, 1, 'S'),
(1722, 'Biología V', 6, 1, 'S'),
(1723, 'Astronomía', 6, 1, 'S'),
(1712, 'Estadística y Prob.', 6, 1, 'S'),
(1613, 'Biología V', 6, 2, 'N'),
(1621, 'Física IV', 6, 2, 'N'),
(1622, 'Química IV', 6, 2, 'N'),
(1706, 'Geología y Mineralogía', 6, 2, 'S'),
(1709, 'Físico-Química', 6, 2, 'S'),
(1711, 'Temas Selec. Biología', 6, 2, 'S'),
(1716, 'Temas Selec. de Morfología y Fisiología', 6, 2, 'S'),
(1700, 'Higiene Mental', 6, 2, 'S'),
(1614, 'Geografía Económica', 6, 3, 'N'),
(1615, 'Introducc. Al Estudio de las Ciencias Sociales y Ec.', 6, 3, 'N'),
(1616, 'Problemas Soc. Polit. y Económicos de México', 6, 3, 'N'),
(1704, 'Contabilidad y Gestión Administrativa', 6, 3, 'S'),
(1707, 'Geografía Política', 6, 3, 'S'),
(1719, 'Informática Aplicada a la Ciencia y la Industria', 6, 3, 'S'),
(1720, 'Sociología', 6, 3, 'S'),
(1615, 'Introducc. Al Estudio de las Ciencias Sociales y Ec.', 6, 4, 'N'),
(1617, 'Historia de la Cultura', 6, 4, 'N'),
(1618, 'Historia de las Doctrinas Filosóficas', 6, 4, 'N'),
(1703, 'Revolución Mexicana', 6, 4, 'S'),
(1705, 'Pensamiento Filosófico de México', 6, 4, 'S'),
(1708, 'Modelado II', 6, 4, 'S'),
(1713, 'Latín', 6, 4, 'S'),
(1714, 'Griego', 6, 4, 'S'),
(1715, 'Comunicación Visual', 6, 4, 'S'),
(1717, 'Estética', 6, 4, 'S'),
(1718, 'Historia del Arte', 6, 4, 'S'),
(1601, 'Derecho', 6, 0, 'N'),
(1602, 'Literatura Mex. e Iberoam.', 6, 0, 'N'),
(1603, 'Lengua extranjera VI', 6, 0, 'N'),
(1600, 'Matemáticas VI', 6, 0, 'N'),
(1609, 'Psicologia', 6, 0, 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `clave_carrera` int(3) NOT NULL,
  `Nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`clave_carrera`, `Nombre`) VALUES
(101, 'Actuaría'),
(102, 'Arquitectura\r'),
(103, 'Arquitectura de Paisaje\r'),
(104, 'Ciencias de la Computación\r'),
(105, 'Diseño Industrial\r'),
(106, 'Física\r'),
(107, 'Ing. Civil\r'),
(108, 'Ing. de Minas y Metalurgia\r'),
(109, 'Ing. Eléctrica y Electrónica\r'),
(110, 'Ing. en Computación\r'),
(111, 'Ing. en Telecomunicaciones\r'),
(112, 'Ing. Geofísica\r'),
(113, 'Ing. Geológica\r'),
(114, 'Ing. Industrial\r'),
(115, 'Ing. Mecánica\r'),
(116, 'Ing. Mecánica Eléctrica\r'),
(117, 'Ing. Petrolera\r'),
(118, 'Ing. Química\r'),
(119, 'Ing. Química Metalúrgica\r'),
(120, 'Ing. Geomática\r'),
(121, 'Matemáticas Aplicadas y Computación\r'),
(122, 'Matemáticas\r'),
(123, 'Urbanismo\r'),
(124, 'Ing. Mecatrónica\r'),
(126, 'Tecnología\r'),
(127, 'Ciencias de la Tierra\r'),
(128, 'Ing. en Energías Renovables\r'),
(129, 'Nanotecnología\r'),
(130, '\"Ing. en Telecomunicaciones'),
(131, 'Geociencias\r'),
(132, 'Tecnologías para la Información en Ciencias\r'),
(133, 'Ciencia de Materiales Sustentables\r'),
(134, 'Física Biomédica\r'),
(135, 'Ing. en Sistemas Biomédicos\r'),
(136, 'Matemáticas Aplicadas\r'),
(137, 'Ing. Ambiental\r'),
(138, 'Ciencias de Datos\r'),
(201, 'Biología\r'),
(202, 'Cirujano Dentista\r'),
(203, 'Enfermería y Obstetricia\r'),
(204, 'Ing. Agrícola\r'),
(205, 'Ing. en Alimentos\r'),
(206, 'Investigación Biomédica Básica\r'),
(207, 'Medicina Veterinaria y Zootecnia\r'),
(208, 'Médico Cirujano\r'),
(209, 'Optometría\r'),
(210, 'Psicología\r'),
(211, 'Química\r'),
(212, 'Química de Alimentos\r'),
(213, 'Química Farmacéutico Biológica\r'),
(214, 'Química Industrial\r'),
(215, 'Ciencias Genómicas\r'),
(216, 'Ciencias Ambientales\r'),
(217, 'Manejo Sustentable de Zonas Costeras\r'),
(218, 'Bioquímica Diagnóstica\r'),
(219, 'Farmacia\r'),
(220, 'Enfermería\r'),
(221, 'Fisioterapia\r'),
(222, 'Odontología\r'),
(223, 'Ciencias Agrogenómicas\r'),
(224, 'Ciencia Forense\r'),
(225, 'Ecología\r'),
(226, 'Neurociencias\r'),
(227, 'Nutriología\r'),
(228, 'Órtesis y Prótesis\r'),
(229, 'Química e Ingeniería en Materiales\r'),
(230, 'Ciencias Agroforestales\r'),
(301, 'Administración\r'),
(302, 'Ciencias de la Comunicación\r'),
(303, 'Ciencias Políticas y Administración Pública\r'),
(304, 'Contaduría\r'),
(305, 'Derecho\r'),
(306, 'Economía\r'),
(307, 'Geografía\r'),
(308, 'Informática\r'),
(309, 'Planificación para el Desarrollo Agropecuario\r'),
(310, 'Relaciones Internacionales\r'),
(311, 'Sociología\r'),
(312, 'Trabajo Social\r'),
(313, 'Economía Industrial\r'),
(314, 'Administración Agropecuaria\r'),
(315, 'Comunicación\r'),
(316, 'Comunicación y Periodismo\r'),
(317, 'Estudios Sociales y Gestión Local\r'),
(318, 'Desarrollo Comunitario para el Envejecimiento\r'),
(319, 'Antropología\r'),
(320, 'Desarrollo Territorial\r'),
(321, 'Negocios Internacionales\r'),
(322, 'Geografía Aplicada\r'),
(401, 'Artes Visuales\r'),
(402, 'Bibliotecología y Estudios de la información\r'),
(403, 'Canto\r'),
(404, 'Composición\r'),
(405, 'Diseño y Comunicación Visual\r'),
(406, 'Diseño Gráfico\r'),
(407, 'Educación Musical\r'),
(408, 'Enseñanza de Inglés\r'),
(409, 'Estudios Latinoamericanos\r'),
(410, 'Etnomusicología\r'),
(411, 'Filosofía\r'),
(412, 'Historia\r'),
(413, 'Instrumentista\r'),
(414, 'Lengua y Literaturas Hispánicas\r'),
(415, 'Lengua y Literaturas Modernas Alemanas\r'),
(416, 'Lengua y Literaturas Modernas Francesas\r'),
(417, 'Lengua y Literaturas Modernas Inglesas\r'),
(418, 'Lengua y Literaturas Modernas Italianas\r'),
(419, 'Letras Clásicas\r'),
(420, 'Literatura Dramática y Teatro\r'),
(421, 'Pedagogía\r'),
(422, 'Piano\r'),
(424, 'Enseñanza de Alemán como Lengua Extranjera\r'),
(425, 'Enseñanza de Español como Lengua Extranjera\r'),
(426, 'Enseñanza de Francés como Lengua Extranjera\r'),
(427, 'Enseñanza de Ingléscomo Lengua Extranjera\r'),
(428, 'Enseñanza de Italiano como Lengua Extranjera\r'),
(429, 'Desarrollo y Gestión Interculturales\r'),
(430, 'Lengua y Literaturas Modernas Portuguesas\r'),
(431, 'Geohistoria\r'),
(432, 'Literatura Intercultural\r'),
(433, 'Historia del Arte\r'),
(434, 'Arte y Diseño\r'),
(435, 'Cinematografía\r'),
(436, 'Teatro y Actuación\r'),
(437, 'Administración de Archivos y Gestión Documental\r'),
(438, 'Música y Tecnología Artistica\r'),
(439, 'Lingüística Aplicada\r'),
(440, 'Traducción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `id_modalidad` int(1) NOT NULL,
  `Modalidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`id_modalidad`, `Modalidad`) VALUES
(1, 'A Distancia\r'),
(2, 'Abierto\r'),
(3, 'Escolarizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pase_regla`
--

CREATE TABLE `pase_regla` (
  `id_pase` int(3) NOT NULL,
  `clave_carrera` int(3) NOT NULL,
  `id_ubicacion` int(2) NOT NULL,
  `id_modalidad` int(1) NOT NULL,
  `promedio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pase_regla`
--

INSERT INTO `pase_regla` (`id_pase`, `clave_carrera`, `id_ubicacion`, `id_modalidad`, `promedio`) VALUES
(1, 101, 14, 3, 9),
(2, 101, 27, 3, 8.65),
(3, 102, 11, 3, 9),
(4, 102, 27, 3, 7.38),
(5, 102, 28, 3, 7.48),
(6, 103, 11, 3, 8.83),
(7, 104, 14, 3, 8.4),
(8, 105, 11, 3, 0),
(9, 105, 28, 3, 8.21),
(10, 106, 14, 3, 8.32),
(11, 107, 20, 3, 7.9),
(12, 107, 27, 3, 7.41),
(13, 107, 28, 3, 7.17),
(14, 108, 20, 3, 8.2),
(15, 109, 20, 3, 8.21),
(16, 109, 28, 3, 7.26),
(17, 110, 20, 3, 8.43),
(18, 110, 28, 3, 7.62),
(19, 111, 20, 3, 7.35),
(20, 112, 20, 3, 7.65),
(21, 113, 20, 3, 8.34),
(22, 114, 20, 3, 8.24),
(23, 114, 28, 3, 7.81),
(24, 114, 29, 3, 7.16),
(25, 115, 20, 3, 8.76),
(26, 115, 28, 3, 7.95),
(27, 116, 29, 3, 7),
(28, 117, 20, 3, 7),
(29, 118, 26, 3, 8.38),
(30, 118, 29, 3, 7.78),
(31, 118, 31, 3, 7.66),
(32, 119, 26, 3, 7.33),
(33, 120, 20, 3, 7.95),
(34, 121, 27, 3, 7.41),
(35, 122, 14, 3, 7.95),
(36, 123, 11, 3, 0),
(37, 124, 20, 3, 0),
(38, 126, 2, 3, 0),
(39, 126, 29, 3, 0),
(40, 127, 6, 3, 0),
(41, 127, 14, 3, 8.62),
(42, 127, 2, 3, 7.89),
(43, 127, 4, 3, 8.24),
(44, 128, 2, 3, 0),
(45, 128, 34, 3, 0),
(46, 129, 1, 3, 0),
(47, 130, 29, 3, 7.35),
(48, 131, 5, 3, 8.03),
(49, 132, 5, 3, 0),
(50, 133, 5, 3, 8.62),
(51, 134, 14, 3, 9),
(52, 135, 20, 3, 0),
(53, 136, 14, 3, 8.46),
(54, 137, 20, 3, 0),
(55, 138, 35, 3, 0),
(56, 201, 14, 3, 8.3),
(57, 201, 30, 3, 7.78),
(58, 201, 31, 3, 7.86),
(59, 201, 32, 3, 0),
(60, 202, 24, 3, 8.27),
(61, 202, 30, 3, 8.41),
(62, 202, 31, 3, 7.72),
(63, 203, 8, 2, 8.51),
(64, 203, 8, 3, 0),
(65, 204, 29, 3, 7.84),
(66, 205, 29, 3, 7),
(67, 206, 21, 3, 0),
(68, 207, 22, 3, 8.03),
(69, 207, 29, 3, 7.59),
(70, 208, 21, 3, 9),
(71, 208, 30, 3, 8.77),
(72, 208, 31, 3, 8.93),
(73, 209, 3, 3, 0),
(74, 209, 30, 3, 7.47),
(75, 210, 25, 2, 8.33),
(76, 210, 30, 1, 7.68),
(77, 210, 25, 3, 7.27),
(78, 210, 30, 3, 8),
(79, 210, 31, 3, 8.7),
(80, 210, 32, 3, 7.53),
(81, 211, 26, 3, 8.38),
(82, 211, 29, 3, 7.81),
(83, 212, 26, 3, 8.41),
(84, 213, 26, 3, 9),
(85, 213, 31, 3, 8.3),
(86, 214, 29, 3, 7),
(87, 215, 33, 3, 0),
(88, 215, 2, 3, 0),
(89, 216, 5, 3, 7.9),
(90, 216, 4, 3, 8.24),
(91, 217, 4, 3, 8.81),
(92, 218, 29, 3, 7.72),
(93, 219, 29, 3, 7.76),
(94, 220, 8, 2, 7),
(95, 220, 8, 3, 0),
(96, 220, 30, 3, 7.81),
(97, 220, 31, 3, 7),
(98, 220, 32, 3, 0),
(99, 221, 3, 3, 0),
(100, 221, 21, 3, 7.86),
(101, 222, 3, 3, 7),
(102, 223, 3, 3, 0),
(103, 224, 21, 3, 0),
(104, 225, 5, 3, 0),
(105, 226, 2, 3, 0),
(106, 226, 21, 3, 0),
(107, 227, 31, 3, 9),
(108, 228, 2, 3, 0),
(109, 229, 26, 3, 0),
(110, 230, 5, 3, 0),
(111, 301, 16, 2, 7.78),
(112, 301, 16, 1, 7),
(113, 301, 16, 3, 7.75),
(114, 301, 29, 3, 7.53),
(115, 302, 15, 2, 7.83),
(116, 302, 15, 1, 7.68),
(117, 302, 15, 3, 9),
(118, 303, 15, 2, 7.79),
(119, 303, 15, 1, 7.16),
(120, 303, 15, 3, 8.24),
(121, 303, 27, 3, 7.15),
(122, 304, 16, 2, 7.23),
(123, 304, 16, 1, 7.65),
(124, 304, 16, 3, 8.24),
(125, 304, 29, 3, 7),
(126, 305, 17, 2, 7.78),
(127, 305, 27, 2, 7.16),
(128, 305, 28, 2, 8.22),
(129, 305, 17, 1, 7.15),
(130, 305, 17, 3, 8.8),
(131, 305, 27, 3, 7.18),
(132, 305, 28, 3, 7.45),
(133, 306, 18, 2, 7.86),
(134, 306, 28, 2, 7),
(135, 306, 18, 1, 7.1),
(136, 306, 18, 3, 7.32),
(137, 306, 27, 3, 7),
(138, 306, 28, 3, 7.49),
(139, 307, 19, 2, 7.27),
(140, 307, 19, 3, 7.32),
(141, 308, 16, 2, 0),
(142, 308, 16, 1, 0),
(143, 308, 16, 3, 0),
(144, 308, 29, 3, 7.81),
(145, 309, 28, 3, 7.32),
(146, 310, 15, 2, 8.59),
(147, 310, 27, 2, 7.11),
(148, 310, 28, 2, 8),
(149, 310, 15, 1, 7),
(150, 310, 15, 3, 7),
(151, 310, 27, 3, 7.4),
(152, 310, 28, 3, 7.38),
(153, 311, 15, 2, 7.1),
(154, 311, 15, 1, 7.68),
(155, 311, 15, 3, 7.81),
(156, 311, 27, 3, 7.8),
(157, 311, 28, 3, 7.27),
(158, 312, 10, 2, 7.52),
(159, 312, 10, 1, 8.44),
(160, 312, 10, 3, 7.15),
(161, 313, 3, 3, 7.93),
(162, 314, 3, 3, 0),
(163, 315, 27, 3, 7),
(164, 316, 28, 3, 7.7),
(165, 317, 5, 3, 0),
(166, 318, 32, 3, 0),
(167, 319, 15, 3, 8.54),
(168, 320, 3, 3, 0),
(169, 321, 2, 3, 0),
(170, 321, 16, 3, 0),
(171, 322, 6, 3, 0),
(172, 322, 4, 3, 0),
(173, 401, 12, 3, 7.81),
(174, 401, 13, 3, 7.97),
(175, 402, 19, 1, 7.46),
(176, 402, 19, 3, 7.57),
(177, 403, 23, 3, 7.9),
(178, 404, 23, 3, 8.37),
(179, 405, 12, 3, 7.89),
(180, 405, 29, 1, 7.59),
(181, 405, 29, 3, 7.3),
(182, 406, 27, 3, 7.54),
(183, 407, 23, 3, 8.11),
(184, 408, 27, 3, 7.22),
(185, 409, 19, 3, 7),
(186, 410, 23, 3, 7.53),
(187, 411, 19, 2, 7.68),
(188, 411, 19, 3, 7.47),
(189, 411, 27, 3, 7.68),
(190, 412, 19, 2, 7.35),
(191, 412, 19, 3, 7.22),
(192, 412, 27, 3, 7.27),
(193, 413, 23, 3, 9),
(194, 414, 19, 2, 8.1),
(195, 414, 19, 3, 7),
(196, 414, 27, 3, 7.14),
(197, 415, 19, 3, 8.37),
(198, 416, 19, 3, 7.86),
(199, 417, 19, 2, 7.19),
(200, 417, 19, 3, 8.51),
(201, 418, 19, 3, 7.13),
(202, 419, 19, 3, 7),
(203, 420, 19, 3, 7.89),
(204, 421, 19, 2, 7.84),
(205, 421, 19, 1, 7.59),
(206, 421, 19, 3, 8.25),
(207, 421, 27, 3, 7.1),
(208, 421, 28, 3, 7.19),
(209, 422, 23, 3, 7.11),
(210, 429, 4, 3, 0),
(211, 429, 3, 3, 0),
(212, 429, 19, 3, 7.5),
(213, 430, 19, 3, 0),
(214, 431, 5, 3, 0),
(215, 432, 5, 3, 7.83),
(216, 433, 5, 3, 7),
(217, 434, 12, 3, 7.93),
(218, 434, 13, 3, 0),
(219, 434, 5, 3, 8.97),
(220, 435, 7, 3, 8.23),
(221, 436, 23, 3, 7.8),
(222, 437, 5, 1, 0),
(223, 437, 5, 3, 7.78),
(224, 437, 19, 3, 7.32),
(225, 438, 5, 3, 0),
(226, 439, 9, 3, 0),
(227, 440, 3, 3, 8),
(228, 424, 27, 2, 0),
(229, 425, 27, 2, 7.89),
(230, 426, 27, 2, 0),
(231, 427, 27, 2, 8.97),
(232, 428, 27, 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(2) NOT NULL,
  `Ubicacion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `Ubicacion`) VALUES
(1, '\"Centro de Nanociencias y Nanotecnología. Ensenada'),
(2, '\"ENES Juriquilla'),
(3, '\"ENES Unidad León'),
(4, '\"ENES Unidad Mérida'),
(5, '\"ENES Unidad Morelia'),
(6, 'Esc. Nacional de Ciencias de la Tierra\r'),
(7, 'Escuela Nacional de Artes Cinematográficas\r'),
(8, 'Escuela Nacional de Enfermería y Obstetricia\r'),
(9, '\"Escuela Nacional de Lenguas'),
(10, 'Escuela Nacional de Trabajo Social\r'),
(11, 'Fac. de Arquitectura\r'),
(12, 'Fac. de Artes y Diseño\r'),
(13, '\"Fac. de Artes y Diseño'),
(14, 'Fac. de Ciencias\r'),
(15, 'Fac. de Ciencias Políticas y Sociales\r'),
(16, 'Fac. de Contaduria y Administración\r'),
(17, 'Fac. de Derecho\r'),
(18, 'Fac. de Economía\r'),
(19, 'Fac. de Filosofía y Letras\r'),
(20, 'Fac. de Ingeniería\r'),
(21, 'Fac. de Medicina\r'),
(22, 'Fac. de Medicina Veterinaria y Zootecnia\r'),
(23, 'Fac. de Música\r'),
(24, 'Fac. de Odontología\r'),
(25, 'Fac. de Psicología\r'),
(26, 'Fac. de Química\r'),
(27, 'FES Acatlán\r'),
(28, 'FES Aragón\r'),
(29, 'FES Cuautitlán\r'),
(30, 'FES Iztacala\r'),
(31, 'FES Zaragoza\r'),
(32, 'FES Zaragoza Campus 3 Tlaxcala\r'),
(33, 'Instituto de Biotecnología\r'),
(34, 'Instituto de Energías Renovables\r'),
(35, 'Instituto de Investigaciones en Matemáticas Aplicadas y en S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Ncuenta`),
  ADD KEY `id_pase` (`id_pase`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`clave_carrera`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id_modalidad`);

--
-- Indices de la tabla `pase_regla`
--
ALTER TABLE `pase_regla`
  ADD PRIMARY KEY (`id_pase`),
  ADD KEY `clave_carrera` (`clave_carrera`),
  ADD KEY `id_ubicacion` (`id_ubicacion`),
  ADD KEY `id_modalidad` (`id_modalidad`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`id_pase`) REFERENCES `pase_regla` (`id_pase`);

--
-- Filtros para la tabla `pase_regla`
--
ALTER TABLE `pase_regla`
  ADD CONSTRAINT `pase_regla_ibfk_1` FOREIGN KEY (`clave_carrera`) REFERENCES `carrera` (`clave_carrera`),
  ADD CONSTRAINT `pase_regla_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`),
  ADD CONSTRAINT `pase_regla_ibfk_3` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id_modalidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
