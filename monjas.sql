-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-01-2021 a las 16:07:33
-- Versión del servidor: 5.6.49-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monjas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acogidos`
--

CREATE TABLE `acogidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `genero` int(11) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `casa` int(11) NOT NULL,
  `motivo` text,
  `observaciones` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `acogidos`
--

INSERT INTO `acogidos` (`id`, `nombre`, `genero`, `fecha_nacimiento`, `edad`, `fecha_ingreso`, `fecha_retiro`, `casa`, `motivo`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 'TFGGHJHJFJGFGJFFG', 1, '', 32, '2020-02-04', '2020-02-04', 3, 'gfdjggfjfgj', 'hgjhgjghjhjg', '2020-02-05', '2020-02-05'),
(3, 'Erick Joaquin', 1, '2020-01-01', 12, '2019-12-31', '2018-12-31', 3, NULL, NULL, '2020-02-12', '2020-11-20'),
(4, '23', 1, '', 12, '2017-12-31', NULL, 3, NULL, NULL, '2020-02-13', '2020-02-13'),
(5, 'pruebae3', 1, '2020-12-31', 1, '2018-12-31', NULL, 3, NULL, NULL, '2020-11-20', '2020-11-20'),
(6, 'Alvaro Mora', 1, '1953-05-20', 67, '2003-02-01', NULL, 3, NULL, 'obseee', '2020-12-02', '2020-12-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 'Baño', '2020-02-03', '2020-02-03'),
(3, 'Cocina', '2020-02-05', '2020-02-05'),
(4, 'cocina', '2020-12-13', '2020-12-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_libros`
--

CREATE TABLE `areas_libros` (
  `id` int(11) NOT NULL,
  `area` varchar(45) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas_libros`
--

INSERT INTO `areas_libros` (`id`, `area`, `created_at`, `updated_at`) VALUES
(1, 'ingles', '2020-02-03', '2020-02-05'),
(2, 'filosofia', '2020-02-04', '2020-02-04'),
(4, 'mandarin', '2020-02-05', '2020-02-05'),
(5, 'libros', '2020-12-13', '2020-12-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa`
--

CREATE TABLE `casa` (
  `id` int(11) NOT NULL,
  `fecha_fundacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_casa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_casa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_casa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obispo_pertenece` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primera_madre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primera_equipo_hermanas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_madre_actual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipo_actual_hermanas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision_que_realiza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `casa`
--

INSERT INTO `casa` (`id`, `fecha_fundacion`, `nombre_casa`, `direccion_casa`, `telefono_casa`, `pais`, `ciudad`, `nombre_encargado`, `obispo_pertenece`, `primera_madre`, `primera_equipo_hermanas`, `nombre_madre_actual`, `equipo_actual_hermanas`, `mision_que_realiza`, `created_at`, `updated_at`) VALUES
(3, '2020-02-04', 'Casa de sanación', 'carrera 12  barrio pruebas', '3231232133', 9, 3680656, 'diego torres', 'jsdjajsdasdjhsjad', 'djnasjdajskdkjaskjd', 'asdjbsahkdjhkashjkd', 'adsjakdjkhsajkdhkjasd', 'ajkdjsahdjkh', 'asuhdauhsdhas', '2020-02-05 09:11:42', '2020-02-05 09:11:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ISO-3166 2-letter country code, 2 characters',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'name of geographical point (utf8) varchar(200)',
  `asciiname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'name of geographical point in plain ascii characters, varchar(200)',
  `latitude` float DEFAULT NULL COMMENT 'latitude in decimal degrees (wgs84)',
  `longitude` float DEFAULT NULL COMMENT 'longitude in decimal degrees (wgs84)',
  `feature_class` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, char(1)',
  `feature_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, varchar(10)',
  `subadmin1_code` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fipscode (subject to change to iso code), see exceptions below, see file admin1Codes.txt for display names of this code; varchar(20)',
  `subadmin2_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'code for the second administrative division, a county in the US, see file admin2Codes.txt; varchar(80)',
  `population` bigint(20) DEFAULT NULL COMMENT 'bigint (4 byte int)',
  `time_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'the timezone id (see file timeZone.txt)',
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(3427213, 'AR', 'Zárate', 'Zarate', -34.0981, -59.0286, 'P', 'PPLA2', 'AR.01', 'AR.01.06882', 88781, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3427387, 'AR', 'Villa Ortúzar', 'Villa Ortuzar', -34.5797, -58.4683, 'P', 'PPLX', 'AR.07', 'AR.07.02015', 22500, 'America/Argentina/Buenos_Aires', 1, '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(3427388, 'AR', 'Villa Ocampo', 'Villa Ocampo', -28.4875, -59.3551, 'P', 'PPL', 'AR.21', 'AR.21.82049', 19101, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427399, 'AR', 'Villa María Grande', 'Villa Maria Grande', -31.6656, -59.9018, 'P', 'PPL', 'AR.08', 'AR.08.30084', 7101, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427408, 'AR', 'Villa Lugano', 'Villa Lugano', -34.6791, -58.4726, 'P', 'PPLX', 'AR.07', 'AR.07.02008', 114000, 'America/Argentina/Buenos_Aires', 1, '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(3427420, 'AR', 'Villa Hernandarias', 'Villa Hernandarias', -31.231, -59.985, 'P', 'PPL', 'AR.08', 'AR.08.30084', 5375, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427428, 'AR', 'Villaguay', 'Villaguay', -31.8653, -59.0269, 'P', 'PPLA2', 'AR.08', 'AR.08.30113', 32027, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3427431, 'AR', 'Villa Gesell', 'Villa Gesell', -37.2639, -56.973, 'P', 'PPL', 'AR.01', 'AR.01.06868', 23257, 'America/Argentina/Buenos_Aires', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427443, 'AR', 'Villa Elisa', 'Villa Elisa', -32.1632, -58.4008, 'P', 'PPL', 'AR.08', 'AR.08.30008', 9334, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427537, 'AR', 'Veinticinco de Mayo', 'Veinticinco de Mayo', -27.3768, -54.7431, 'P', 'PPL', 'AR.14', 'AR.14.54119', 11928, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3427582, 'AR', 'Urdinarrain', 'Urdinarrain', -32.6857, -58.8932, 'P', 'PPL', 'AR.08', 'AR.08.30056', 7992, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3427761, 'AR', 'Tigre', 'Tigre', -34.426, -58.5796, 'P', 'PPL', 'AR.01', 'AR.01.06805', 31106, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3427833, 'AR', 'Tandil', 'Tandil', -37.3217, -59.1332, 'P', 'PPLA2', 'AR.01', 'AR.01.06791', 104325, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3428068, 'AR', 'San Vicente', 'San Vicente', -26.6167, -54.1333, 'P', 'PPL', 'AR.14', 'AR.14.54112', 38247, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428071, 'AR', 'Santo Tomé', 'Santo Tome', -28.5494, -56.0408, 'P', 'PPLA2', 'AR.06', 'AR.06.18168', 22634, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428079, 'AR', 'Santo Pipó', 'Santo Pipo', -27.1413, -55.4087, 'P', 'PPL', 'AR.14', 'AR.14.54098', 5447, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428182, 'AR', 'Santa Rosa', 'Santa Rosa', -28.2632, -58.1189, 'P', 'PPL', 'AR.06', 'AR.06.18028', 8330, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428287, 'AR', 'Santa Lucía', 'Santa Lucia', -28.9875, -59.1029, 'P', 'PPLA2', 'AR.06', 'AR.06.18091', 14056, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428359, 'AR', 'Santa Elena', 'Santa Elena', -30.9477, -59.787, 'P', 'PPL', 'AR.08', 'AR.08.30070', 18410, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428481, 'AR', 'San Salvador', 'San Salvador', -31.6249, -58.5052, 'P', 'PPLA2', 'AR.08', 'AR.08.30088', 11626, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428576, 'AR', 'San Pedro', 'San Pedro', -33.6792, -59.6663, 'P', 'PPLA2', 'AR.01', 'AR.01.06770', 47452, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(3428577, 'AR', 'San Pedro', 'San Pedro', -26.6221, -54.1084, 'P', 'PPLA2', 'AR.14', 'AR.14.54112', 23736, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3428644, 'AR', 'San Miguel', 'San Miguel', -27.9958, -57.5896, 'P', 'PPLA2', 'AR.06', 'AR.06.18154', 7396, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3428708, 'AR', 'San Luis del Palmar', 'San Luis del Palmar', -27.5079, -58.5545, 'P', 'PPLA2', 'AR.06', 'AR.06.18140', 15347, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428759, 'AR', 'San Lorenzo', 'San Lorenzo', -28.1331, -58.7673, 'P', 'PPL', 'AR.06', 'AR.06.18126', 47626, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428858, 'AR', 'San José de Feliciano', 'San Jose de Feliciano', -30.3845, -58.7517, 'P', 'PPLA2', 'AR.08', 'AR.08.30042', 11137, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3428928, 'AR', 'San José', 'San Jose', -27.7698, -55.7826, 'P', 'PPL', 'AR.14', 'AR.14.54007', 6452, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3428975, 'AR', 'San Javier', 'San Javier', -30.5778, -59.9317, 'P', 'PPLA2', 'AR.21', 'AR.21.82098', 15606, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3428992, 'AR', 'San Isidro', 'San Isidro', -34.4721, -58.5271, 'P', 'PPLA2', 'AR.01', 'AR.01.06756', 45190, 'America/Argentina/Buenos_Aires', 1, '2016-05-06 23:00:00', '2016-05-06 23:00:00'),
(3429160, 'AR', 'San Clemente del Tuyú', 'San Clemente del Tuyu', -36.3569, -56.7235, 'P', 'PPL', 'AR.01', 'AR.01.06420', 11174, 'America/Argentina/Buenos_Aires', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429403, 'AR', 'Saladas', 'Saladas', -28.2538, -58.6259, 'P', 'PPLA2', 'AR.06', 'AR.06.18126', 18349, 'America/Argentina/Cordoba', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3429439, 'AR', 'Rosario del Tala', 'Rosario del Tala', -32.3029, -59.1455, 'P', 'PPLA2', 'AR.08', 'AR.08.30091', 13807, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429576, 'AR', 'Retiro', 'Retiro', -34.5833, -58.3833, 'P', 'PPLX', 'AR.07', 'AR.07.02001', 38635, 'America/Argentina/Buenos_Aires', 1, '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(3429577, 'AR', 'Resistencia', 'Resistencia', -27.4606, -58.9839, 'P', 'PPLA', 'AR.03', 'AR.03.22140', 387158, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429594, 'AR', 'Reconquista', 'Reconquista', -29.15, -59.65, 'P', 'PPLA2', 'AR.21', 'AR.21.82049', 90184, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3429652, 'AR', 'Quilmes', 'Quilmes', -34.729, -58.2637, 'P', 'PPLA2', 'AR.01', 'AR.01.06658', 518788, 'America/Argentina/Buenos_Aires', 1, '2016-05-06 23:00:00', '2016-05-06 23:00:00'),
(3429713, 'AR', 'Puerto Vilelas', 'Puerto Vilelas', -27.5141, -58.9391, 'P', 'PPL', 'AR.03', 'AR.03.22140', 8455, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429721, 'AR', 'Puerto Tirol', 'Puerto Tirol', -27.3722, -59.0821, 'P', 'PPLA2', 'AR.03', 'AR.03.22077', 9767, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429732, 'AR', 'Puerto Rico', 'Puerto Rico', -26.796, -55.024, 'P', 'PPLA2', 'AR.14', 'AR.14.54077', 17491, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429738, 'AR', 'Puerto Piray', 'Puerto Piray', -26.4678, -54.7148, 'P', 'PPL', 'AR.14', 'AR.14.54084', 8557, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429764, 'AR', 'Puerto Libertad', 'Puerto Libertad', -25.9164, -54.6209, 'P', 'PPL', 'AR.14', 'AR.14.54063', 6143, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429777, 'AR', 'Puerto Iguazú', 'Puerto Iguazu', -25.5991, -54.5736, 'P', 'PPLA4', 'AR.14', 'AR.14.54063', 32038, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3429786, 'AR', 'Puerto Esperanza', 'Puerto Esperanza', -26.0152, -54.6731, 'P', 'PPLA2', 'AR.14', 'AR.14.54063', 15579, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429790, 'AR', 'Puerto Eldorado', 'Puerto Eldorado', -26.4084, -54.6946, 'P', 'PPL', 'AR.14', 'AR.14.54042', 54189, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3429866, 'AR', 'Presidencia de la Plaza', 'Presidencia de la Plaza', -27.0015, -59.8424, 'P', 'PPLA2', 'AR.03', 'AR.03.22119', 12231, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3429886, 'AR', 'Posadas', 'Posadas', -27.3671, -55.8961, 'P', 'PPLA', 'AR.14', 'AR.14.54028', 323739, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3429902, 'AR', 'Pontevedra', 'Pontevedra', -34.7478, -58.7007, 'P', 'PPL', 'AR.01', 'AR.01.06539', 33515, 'America/Argentina/Buenos_Aires', 1, '2016-05-06 23:00:00', '2016-05-06 23:00:00'),
(3429949, 'AR', 'Pirané', 'Pirane', -25.7324, -59.1088, 'P', 'PPLA2', 'AR.09', 'AR.09.34056', 19124, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3429980, 'AR', 'Pilar', 'Pilar', -34.4587, -58.9142, 'P', 'PPLA2', 'AR.01', 'AR.01.06638', 226517, 'America/Argentina/Buenos_Aires', 1, '2017-12-20 23:00:00', '2017-12-20 23:00:00'),
(3430029, 'AR', 'Perugorría', 'Perugorria', -29.3413, -58.6106, 'P', 'PPL', 'AR.06', 'AR.06.18035', 5685, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430104, 'AR', 'Paso de los Libres', 'Paso de los Libres', -29.7125, -57.0877, 'P', 'PPLA2', 'AR.06', 'AR.06.18119', 43805, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430105, 'AR', 'Paso de la Patria', 'Paso de la Patria', -27.3168, -58.572, 'P', 'PPL', 'AR.06', 'AR.06.18133', 5818, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430178, 'AR', 'Panambí', 'Panambi', -27.7237, -54.9151, 'P', 'PPL', 'AR.14', 'AR.14.54091', 5970, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430180, 'AR', 'Pampa del Indio', 'Pampa del Indio', -26.0647, -59.919, 'P', 'PPL', 'AR.03', 'AR.03.22084', 11588, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430186, 'AR', 'Palo Santo', 'Palo Santo', -25.5633, -59.3378, 'P', 'PPL', 'AR.09', 'AR.09.34056', 5324, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430340, 'AR', 'Oberá', 'Obera', -27.4871, -55.1199, 'P', 'PPLA2', 'AR.14', 'AR.14.54091', 56528, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430402, 'AR', 'Nuestra Señora del Rosario de Caa Catí', 'Nuestra Senora del Rosario de Caa Cati', -27.7507, -57.6207, 'P', 'PPLA2', 'AR.06', 'AR.06.18063', 7573, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430443, 'AR', 'Necochea', 'Necochea', -38.5545, -58.7396, 'P', 'PPLA2', 'AR.01', 'AR.01.06581', 80478, 'America/Argentina/Buenos_Aires', 1, '2016-01-26 23:00:00', '2016-01-26 23:00:00'),
(3430545, 'AR', 'Morón', 'Moron', -34.6509, -58.6196, 'P', 'PPLA2', 'AR.01', 'AR.01.06568', 319934, 'America/Argentina/Buenos_Aires', 1, '2016-05-06 23:00:00', '2016-05-06 23:00:00'),
(3430598, 'AR', 'Monte Caseros', 'Monte Caseros', -30.2536, -57.6363, 'P', 'PPLA2', 'AR.06', 'AR.06.18112', 24671, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430601, 'AR', 'Montecarlo', 'Montecarlo', -26.5662, -54.757, 'P', 'PPLA2', 'AR.14', 'AR.14.54084', 22229, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430648, 'AR', 'Mocoretá', 'Mocoreta', -30.6189, -57.9634, 'P', 'PPL', 'AR.06', 'AR.06.18112', 6088, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430708, 'AR', 'Mercedes', 'Mercedes', -34.6515, -59.4307, 'P', 'PPLA2', 'AR.01', 'AR.01.06532', 52949, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430709, 'AR', 'Mercedes', 'Mercedes', -29.1842, -58.0752, 'P', 'PPLA2', 'AR.06', 'AR.06.18105', 30649, 'America/Argentina/Cordoba', 1, '2015-06-14 23:00:00', '2015-06-14 23:00:00'),
(3430760, 'AR', 'Mburucuyá', 'Mburucuya', -28.0453, -58.2284, 'P', 'PPLA2', 'AR.06', 'AR.06.18098', 9012, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3430857, 'AR', 'Margarita Belén', 'Margarita Belen', -27.2616, -58.9722, 'P', 'PPLA2', 'AR.03', 'AR.03.22126', 5547, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430863, 'AR', 'Mar del Plata', 'Mar del Plata', -38.0023, -57.5575, 'P', 'PPLA2', 'AR.01', 'AR.01.06357', 553935, 'America/Argentina/Buenos_Aires', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430940, 'AR', 'Malabrigo', 'Malabrigo', -29.3464, -59.9696, 'P', 'PPL', 'AR.21', 'AR.21.82049', 7026, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430968, 'AR', 'Maciá', 'Macia', -32.1722, -59.3995, 'P', 'PPL', 'AR.08', 'AR.08.30091', 5806, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3430988, 'AR', 'Luján', 'Lujan', -34.5703, -59.105, 'P', 'PPLA2', 'AR.01', 'AR.01.06497', 81749, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3431606, 'AR', 'Las Toscas', 'Las Toscas', -28.3529, -59.2579, 'P', 'PPL', 'AR.21', 'AR.21.82049', 11811, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3431916, 'AR', 'Larroque', 'Larroque', -33.0359, -59.0013, 'P', 'PPL', 'AR.08', 'AR.08.30056', 6200, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3432043, 'AR', 'La Plata', 'La Plata', -34.9215, -57.9545, 'P', 'PPLA', 'AR.01', 'AR.01.06441', 694167, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3432079, 'AR', 'La Paz', 'La Paz', -30.7449, -59.6457, 'P', 'PPLA2', 'AR.08', 'AR.08.30070', 24716, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3432355, 'AR', 'La Leonesa', 'La Leonesa', -27.0379, -58.7035, 'P', 'PPLA2', 'AR.03', 'AR.03.22014', 10067, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3432760, 'AR', 'La Cruz', 'La Cruz', -29.1744, -56.6433, 'P', 'PPLA2', 'AR.06', 'AR.06.18147', 8591, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433349, 'AR', 'Jardín América', 'Jardin America', -27.0435, -55.227, 'P', 'PPL', 'AR.14', 'AR.14.54098', 24905, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433363, 'AR', 'Itatí', 'Itati', -27.2704, -58.2446, 'P', 'PPLA2', 'AR.06', 'AR.06.18077', 7902, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3433513, 'AR', 'Ibarreta', 'Ibarreta', -25.2144, -59.8585, 'P', 'PPL', 'AR.09', 'AR.09.34035', 8687, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433658, 'AR', 'Gualeguaychú', 'Gualeguaychu', -33.0094, -58.5172, 'P', 'PPLA2', 'AR.08', 'AR.08.30056', 78676, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433663, 'AR', 'Gualeguay', 'Gualeguay', -33.1416, -59.3097, 'P', 'PPLA2', 'AR.08', 'AR.08.30049', 33120, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3433715, 'AR', 'Goya', 'Goya', -29.1439, -59.2651, 'P', 'PPLA2', 'AR.06', 'AR.06.18070', 70245, 'America/Argentina/Cordoba', 1, '2015-06-23 23:00:00', '2015-06-23 23:00:00'),
(3433743, 'AR', 'Gobernador Roca', 'Gobernador Roca', -27.1864, -55.4643, 'P', 'PPL', 'AR.14', 'AR.14.54098', 6315, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433753, 'AR', 'Gobernador Ingeniero Valentín Virasoro', 'Gobernador Ingeniero Valentin Virasoro', -28.05, -56.0333, 'P', 'PPL', 'AR.06', 'AR.06.18168', 28756, 'America/Argentina/Cordoba', 1, '2016-02-01 23:00:00', '2016-02-01 23:00:00'),
(3433803, 'AR', 'General José de San Martín', 'General Jose de San Martin', -26.5374, -59.3416, 'P', 'PPLA2', 'AR.03', 'AR.03.22084', 31758, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433836, 'AR', 'Garupá', 'Garupa', -27.4817, -55.8292, 'P', 'PPL', 'AR.14', 'AR.14.54028', 28814, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433839, 'AR', 'Garuhapé', 'Garuhape', -26.8177, -54.9566, 'P', 'PPL', 'AR.14', 'AR.14.54077', 8259, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433899, 'AR', 'Formosa', 'Formosa', -26.1775, -58.1781, 'P', 'PPLA', 'AR.09', 'AR.09.34014', 221383, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433901, 'AR', 'Fontana', 'Fontana', -27.4181, -59.0239, 'P', 'PPL', 'AR.03', 'AR.03.22140', 26745, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433956, 'AR', 'Federal', 'Federal', -30.9547, -58.7833, 'P', 'PPLA2', 'AR.08', 'AR.08.30035', 16333, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3433959, 'AR', 'Federación', 'Federacion', -31.0062, -57.8996, 'P', 'PPLA2', 'AR.08', 'AR.08.30028', 13789, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3434095, 'AR', 'Esquina', 'Esquina', -30.0144, -59.5272, 'P', 'PPLA2', 'AR.06', 'AR.06.18049', 26399, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3434291, 'AR', 'El Soberbio', 'El Soberbio', -27.2985, -54.1988, 'P', 'PPLA2', 'AR.14', 'AR.14.54056', 19571, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3434731, 'AR', 'El Colorado', 'El Colorado', -26.3081, -59.3729, 'P', 'PPL', 'AR.09', 'AR.09.34056', 12780, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3434932, 'AR', 'El Alcázar', 'El Alcazar', -26.7146, -54.8152, 'P', 'PPL', 'AR.14', 'AR.14.54077', 5127, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3434995, 'AR', 'Dos de Mayo', 'Dos de Mayo', -27.0228, -54.6867, 'P', 'PPL', 'AR.14', 'AR.14.54014', 14544, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435038, 'AR', 'Dolores', 'Dolores', -36.3132, -57.6792, 'P', 'PPLA2', 'AR.01', 'AR.01.06238', 25190, 'America/Argentina/Buenos_Aires', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3435103, 'AR', 'Curuzú Cuatiá', 'Curuzu Cuatia', -29.7917, -58.0546, 'P', 'PPLA2', 'AR.06', 'AR.06.18035', 36390, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435217, 'AR', 'Corrientes', 'Corrientes', -27.4806, -58.8341, 'P', 'PPLA', 'AR.06', 'AR.06.18021', 339067, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435261, 'AR', 'Concordia', 'Concordia', -31.393, -58.0209, 'P', 'PPLA2', 'AR.08', 'AR.08.30015', 145210, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435264, 'AR', 'Concepción del Uruguay', 'Concepcion del Uruguay', -32.4825, -58.2372, 'P', 'PPLA2', 'AR.08', 'AR.08.30098', 67895, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435266, 'AR', 'Concepción de la Sierra', 'Concepcion de la Sierra', -27.9831, -55.5203, 'P', 'PPLA2', 'AR.14', 'AR.14.54035', 7398, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435283, 'AR', 'Comandante Fontana', 'Comandante Fontana', -25.3345, -59.6821, 'P', 'PPLA2', 'AR.09', 'AR.09.34035', 5655, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435290, 'AR', 'Colonia Wanda', 'Colonia Wanda', -25.9741, -54.4281, 'P', 'PPL', 'AR.14', 'AR.14.54063', 12779, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435344, 'AR', 'Colonia Aurora', 'Colonia Aurora', -27.4743, -54.525, 'P', 'PPL', 'AR.14', 'AR.14.54119', 8407, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435356, 'AR', 'Colegiales', 'Colegiales', -34.5737, -58.4492, 'P', 'PPLX', 'AR.07', 'AR.07.02013', 57000, 'America/Argentina/Buenos_Aires', 1, '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(3435364, 'AR', 'Clorinda', 'Clorinda', -25.2848, -57.7185, 'P', 'PPLA2', 'AR.09', 'AR.09.34049', 15000, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435486, 'AR', 'Chajarí', 'Chajari', -30.7505, -57.9796, 'P', 'PPL', 'AR.08', 'AR.08.30028', 30655, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435532, 'AR', 'Cerro Azul', 'Cerro Azul', -27.6331, -55.4962, 'P', 'PPL', 'AR.14', 'AR.14.54070', 5323, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435701, 'AR', 'Capioví', 'Capiovi', -26.93, -55.0608, 'P', 'PPL', 'AR.14', 'AR.14.54077', 5860, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435734, 'AR', 'Candelaria', 'Candelaria', -27.4595, -55.7454, 'P', 'PPL', 'AR.14', 'AR.14.54021', 11039, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3435750, 'AR', 'Campo Viera', 'Campo Viera', -27.3833, -55.0333, 'P', 'PPL', 'AR.14', 'AR.14.54091', 9228, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435765, 'AR', 'Campo Ramón', 'Campo Ramon', -27.4611, -55.019, 'P', 'PPL', 'AR.14', 'AR.14.54091', 10088, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435789, 'AR', 'Campo Grande', 'Campo Grande', -27.2077, -54.9798, 'P', 'PPLA2', 'AR.14', 'AR.14.54014', 12040, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3435810, 'AR', 'Campana', 'Campana', -34.1687, -58.9591, 'P', 'PPLA2', 'AR.01', 'AR.01.06126', 81612, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3435910, 'AR', 'Buenos Aires', 'Buenos Aires', -34.6132, -58.3772, 'P', 'PPLC', 'AR.07', NULL, 13076300, 'America/Argentina/Buenos_Aires', 1, '2017-05-27 23:00:00', '2017-05-27 23:00:00'),
(3435966, 'AR', 'Bovril', 'Bovril', -31.3431, -59.4451, 'P', 'PPL', 'AR.08', 'AR.08.30070', 7977, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3436003, 'AR', 'Boedo', 'Boedo', -34.6333, -58.4167, 'P', 'PPLX', 'AR.07', 'AR.07.02005', 48231, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(3436030, 'AR', 'Bernardo de Irigoyen', 'Bernardo de Irigoyen', -26.2552, -53.6458, 'P', 'PPLA2', 'AR.14', 'AR.14.54049', 10889, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3436043, 'AR', 'Berazategui', 'Berazategui', -34.7653, -58.2128, 'P', 'PPL', 'AR.01', 'AR.01.06091', 167498, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(3436077, 'AR', 'Belgrano', 'Belgrano', -34.5627, -58.4583, 'P', 'PPLX', 'AR.07', 'AR.07.02013', 138942, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(3436124, 'AR', 'Barranqueras', 'Barranqueras', -27.4813, -58.9393, 'P', 'PPL', 'AR.03', 'AR.03.22140', 50823, 'America/Argentina/Cordoba', 1, '2015-06-23 23:00:00', '2015-06-23 23:00:00'),
(3436134, 'AR', 'Barracas', 'Barracas', -34.6497, -58.3834, 'P', 'PPLX', 'AR.07', 'AR.07.02004', 77474, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(3436199, 'AR', 'Azul', 'Azul', -36.777, -59.8585, 'P', 'PPLA2', 'AR.01', 'AR.01.06049', 53941, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3436230, 'AR', 'Avellaneda', 'Avellaneda', -29.1176, -59.6583, 'P', 'PPL', 'AR.21', 'AR.21.82049', 23077, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3436287, 'AR', 'Aristóbulo del Valle', 'Aristobulo del Valle', -27.0963, -54.8963, 'P', 'PPL', 'AR.14', 'AR.14.54014', 20683, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3436370, 'AR', 'Alvear', 'Alvear', -29.0968, -56.5504, 'P', 'PPLA2', 'AR.06', 'AR.06.18056', 7917, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3436448, 'AR', 'Alba Posse', 'Alba Posse', -27.5698, -54.6826, 'P', 'PPLA2', 'AR.14', 'AR.14.54119', 6652, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3439525, 'UY', 'Young', 'Young', -32.6984, -57.6269, 'P', 'PPL', 'UY.12', NULL, 15924, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3439748, 'UY', 'Trinidad', 'Trinidad', -33.5165, -56.8996, 'P', 'PPLA', 'UY.06', NULL, 21429, 'America/Montevideo', 1, '2013-08-05 23:00:00', '2013-08-05 23:00:00'),
(3439781, 'UY', 'Treinta y Tres', 'Treinta y Tres', -33.2333, -54.3833, 'P', 'PPLA', 'UY.19', NULL, 25653, 'America/Montevideo', 1, '2017-03-13 23:00:00', '2017-03-13 23:00:00'),
(3439787, 'UY', 'Tranqueras', 'Tranqueras', -31.2, -55.75, 'P', 'PPL', 'UY.13', NULL, 7474, 'America/Montevideo', 1, '2012-01-17 23:00:00', '2012-01-17 23:00:00'),
(3439902, 'UY', 'Tarariras', 'Tarariras', -34.2655, -57.6187, 'P', 'PPL', 'UY.04', NULL, 6069, 'America/Montevideo', 1, '2015-06-13 23:00:00', '2015-06-13 23:00:00'),
(3440034, 'UY', 'Tacuarembó', 'Tacuarembo', -31.7169, -55.9811, 'P', 'PPLA', 'UY.18', NULL, 51854, 'America/Montevideo', 1, '2017-03-13 23:00:00', '2017-03-13 23:00:00'),
(3440379, 'UY', 'Sauce', 'Sauce', -34.5709, -56.0816, 'P', 'PPL', 'UY.02', NULL, 5910, 'America/Montevideo', 1, '2016-08-10 23:00:00', '2016-08-10 23:00:00'),
(3440394, 'UY', 'Sarandí Grande', 'Sarandi Grande', -33.7333, -56.3333, 'P', 'PPL', 'UY.07', NULL, 6441, 'America/Montevideo', 1, '2012-01-17 23:00:00', '2012-01-17 23:00:00'),
(3440400, 'UY', 'Sarandí del Yi', 'Sarandi del Yi', -33.35, -55.6333, 'P', 'PPL', 'UY.05', NULL, 7367, 'America/Montevideo', 1, '2012-02-01 23:00:00', '2012-02-01 23:00:00'),
(3440571, 'UY', 'Santa Lucía', 'Santa Lucia', -34.4533, -56.3906, 'P', 'PPL', 'UY.02', NULL, 16438, 'America/Montevideo', 1, '2012-01-17 23:00:00', '2012-01-17 23:00:00'),
(3440596, 'UY', 'San Ramón', 'San Ramon', -34.2915, -55.9557, 'P', 'PPL', 'UY.02', NULL, 7008, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3440639, 'UY', 'San José de Mayo', 'San Jose de Mayo', -34.3375, -56.7136, 'P', 'PPLA', 'UY.16', NULL, 36529, 'America/Montevideo', 1, '2012-01-15 23:00:00', '2012-01-15 23:00:00'),
(3440696, 'UY', 'San Carlos', 'San Carlos', -34.7912, -54.9182, 'P', 'PPL', 'UY.09', NULL, 24938, 'America/Montevideo', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(3440714, 'UY', 'Salto', 'Salto', -31.3833, -57.9667, 'P', 'PPLA', 'UY.15', NULL, 99823, 'America/Montevideo', 1, '2012-02-13 23:00:00', '2012-02-13 23:00:00'),
(3440747, 'UY', 'Rosario', 'Rosario', -34.3167, -57.35, 'P', 'PPL', 'UY.04', NULL, 9308, 'America/Montevideo', 1, '2012-01-17 23:00:00', '2012-01-17 23:00:00'),
(3440777, 'UY', 'Rocha', 'Rocha', -34.4833, -54.3333, 'P', 'PPLA', 'UY.14', NULL, 25515, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3440781, 'UY', 'Rivera', 'Rivera', -30.9053, -55.5508, 'P', 'PPLA', 'UY.13', NULL, 64631, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3440791, 'UY', 'Río Branco', 'Rio Branco', -32.598, -53.3858, 'P', 'PPL', 'UY.03', NULL, 13567, 'America/Montevideo', 1, '2013-03-06 23:00:00', '2013-03-06 23:00:00'),
(3440939, 'UY', 'Punta del Este', 'Punta del Este', -34.9475, -54.9338, 'P', 'PPL', 'UY.09', NULL, 7234, 'America/Montevideo', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(3440963, 'UY', 'Progreso', 'Progreso', -34.6674, -56.2176, 'P', 'PPL', 'UY.02', NULL, 15973, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3441074, 'UY', 'Piriápolis', 'Piriapolis', -34.8629, -55.2747, 'P', 'PPL', 'UY.09', NULL, 7968, 'America/Montevideo', 1, '2015-03-25 23:00:00', '2015-03-25 23:00:00'),
(3441243, 'UY', 'Paysandú', 'Paysandu', -32.3214, -58.0756, 'P', 'PPLA', 'UY.11', NULL, 73249, 'America/Montevideo', 1, '2017-03-13 23:00:00', '2017-03-13 23:00:00'),
(3441273, 'UY', 'Paso de los Toros', 'Paso de los Toros', -32.8167, -56.5167, 'P', 'PPL', 'UY.18', NULL, 13221, 'America/Montevideo', 1, '2015-02-12 23:00:00', '2015-02-12 23:00:00'),
(3441292, 'UY', 'Paso de Carrasco', 'Paso de Carrasco', -34.8603, -56.0522, 'P', 'PPL', 'UY.02', NULL, 15393, 'America/Montevideo', 1, '2013-04-03 23:00:00', '2013-04-03 23:00:00'),
(3441354, 'UY', 'Pando', 'Pando', -34.7172, -55.9584, 'P', 'PPL', 'UY.02', NULL, 24047, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3441358, 'UY', 'Pan de Azúcar', 'Pan de Azucar', -34.7787, -55.2358, 'P', 'PPL', 'UY.09', NULL, 7180, 'America/Montevideo', 1, '2014-12-20 23:00:00', '2014-12-20 23:00:00'),
(3441481, 'UY', 'Nueva Palmira', 'Nueva Palmira', -33.8703, -58.4118, 'P', 'PPL', 'UY.04', NULL, 9335, 'America/Montevideo', 1, '2017-11-28 23:00:00', '2017-11-28 23:00:00'),
(3441483, 'UY', 'Nueva Helvecia', 'Nueva Helvecia', -34.3, -57.2333, 'P', 'PPL', 'UY.04', NULL, 10054, 'America/Montevideo', 1, '2012-01-17 23:00:00', '2012-01-17 23:00:00'),
(3441575, 'UY', 'Montevideo', 'Montevideo', -34.9033, -56.1882, 'P', 'PPLC', 'UY.10', NULL, 1270737, 'America/Montevideo', 1, '2013-09-15 23:00:00', '2013-09-15 23:00:00'),
(3441665, 'UY', 'Minas', 'Minas', -34.3759, -55.2377, 'P', 'PPLA', 'UY.08', NULL, 38025, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3441684, 'UY', 'Mercedes', 'Mercedes', -33.2524, -58.0305, 'P', 'PPLA', 'UY.17', NULL, 42359, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3441702, 'UY', 'Melo', 'Melo', -32.3703, -54.1675, 'P', 'PPLA', 'UY.03', NULL, 51023, 'America/Montevideo', 1, '2015-10-04 23:00:00', '2015-10-04 23:00:00'),
(3441894, 'UY', 'Maldonado', 'Maldonado', -34.9, -54.95, 'P', 'PPLA', 'UY.09', NULL, 55478, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3441988, 'UY', 'Libertad', 'Libertad', -34.6346, -56.6174, 'P', 'PPL', 'UY.16', NULL, 9311, 'America/Montevideo', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3442057, 'UY', 'Las Piedras', 'Las Piedras', -34.7302, -56.2192, 'P', 'PPL', 'UY.02', NULL, 69682, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3442071, 'UY', 'Lascano', 'Lascano', -33.6724, -54.2065, 'P', 'PPL', 'UY.14', NULL, 6976, 'America/Montevideo', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(3442098, 'UY', 'La Paz', 'La Paz', -34.7603, -56.2259, 'P', 'PPL', 'UY.02', NULL, 19913, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3442206, 'UY', 'Juan L. Lacaze', 'Juan L. Lacaze', -34.4189, -57.4529, 'P', 'PPL', 'UY.04', NULL, 13223, 'America/Montevideo', 1, '2016-06-03 23:00:00', '2016-06-03 23:00:00'),
(3442221, 'UY', 'José Pedro Varela', 'Jose Pedro Varela', -33.4545, -54.5359, 'P', 'PPL', 'UY.08', NULL, 5388, 'America/Montevideo', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(3442236, 'UY', 'Joaquín Suárez', 'Joaquin Suarez', -34.735, -56.0347, 'P', 'PPL', 'UY.02', NULL, 6257, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3442398, 'UY', 'Guichón', 'Guichon', -32.3585, -57.1978, 'P', 'PPL', 'UY.11', NULL, 5051, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3442568, 'UY', 'Fray Bentos', 'Fray Bentos', -33.1165, -58.3107, 'P', 'PPLA', 'UY.12', NULL, 23279, 'America/Montevideo', 1, '2017-11-28 23:00:00', '2017-11-28 23:00:00'),
(3442585, 'UY', 'Florida', 'Florida', -34.0956, -56.2142, 'P', 'PPLA', 'UY.07', NULL, 32234, 'America/Montevideo', 1, '2012-02-16 23:00:00', '2012-02-16 23:00:00'),
(3442727, 'UY', 'Durazno', 'Durazno', -33.3806, -56.5236, 'P', 'PPLA', 'UY.05', NULL, 33926, 'America/Montevideo', 1, '2015-10-04 23:00:00', '2015-10-04 23:00:00'),
(3442750, 'UY', 'Dolores', 'Dolores', -33.5301, -58.217, 'P', 'PPL', 'UY.17', NULL, 15880, 'America/Montevideo', 1, '2012-09-17 23:00:00', '2012-09-17 23:00:00'),
(3442778, 'UY', 'Delta del Tigre', 'Delta del Tigre', -34.7649, -56.3645, 'P', 'PPL', 'UY.16', NULL, 17973, 'America/Montevideo', 1, '2015-02-12 23:00:00', '2015-02-12 23:00:00'),
(3443013, 'UY', 'Colonia del Sacramento', 'Colonia del Sacramento', -34.4626, -57.8398, 'P', 'PPLA', 'UY.04', NULL, 21714, 'America/Montevideo', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3443061, 'UY', 'Chui', 'Chui', -33.6979, -53.4593, 'P', 'PPL', 'UY.14', NULL, 10485, 'America/Montevideo', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(3443289, 'UY', 'Castillos', 'Castillos', -34.1987, -53.8592, 'P', 'PPL', 'UY.14', NULL, 7686, 'America/Montevideo', 1, '2014-12-20 23:00:00', '2014-12-20 23:00:00'),
(3443341, 'UY', 'Carmelo', 'Carmelo', -34.0002, -58.284, 'P', 'PPL', 'UY.04', NULL, 16921, 'America/Montevideo', 1, '2014-04-16 23:00:00', '2014-04-16 23:00:00'),
(3443413, 'UY', 'Canelones', 'Canelones', -34.5228, -56.2778, 'P', 'PPLA', 'UY.02', NULL, 19698, 'America/Montevideo', 1, '2015-10-04 23:00:00', '2015-10-04 23:00:00'),
(3443631, 'UY', 'Bella Unión', 'Bella Union', -30.2597, -57.5992, 'P', 'PPL', 'UY.01', NULL, 13171, 'America/Montevideo', 1, '2017-03-12 23:00:00', '2017-03-12 23:00:00'),
(3443758, 'UY', 'Artigas', 'Artigas', -30.4, -56.4667, 'P', 'PPLA', 'UY.01', NULL, 41909, 'America/Montevideo', 1, '2012-02-13 23:00:00', '2012-02-13 23:00:00'),
(3480820, 'UY', 'Colonia Nicolich', 'Colonia Nicolich', -34.8152, -56.0243, 'P', 'PPL', 'UY.02', NULL, 8902, 'America/Montevideo', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3649914, 'EC', 'Zaruma', 'Zaruma', -3.69132, -79.6117, 'P', 'PPL', 'EC.08', 'EC.08.0713', 12505, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3649959, 'EC', 'Zamora', 'Zamora', -4.06685, -78.9549, 'P', 'PPLA', 'EC.20', 'EC.20.1901', 15276, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650053, 'EC', 'Yantzaza', 'Yantzaza', -3.83261, -78.7608, 'P', 'PPL', 'EC.20', 'EC.20.1905', 9970, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650121, 'EC', 'Yaguachi Nuevo', 'Yaguachi Nuevo', -2.0968, -79.6948, 'P', 'PPL', 'EC.10', 'EC.10.0920', 27947, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650186, 'EC', 'Vinces', 'Vinces', -1.55611, -79.7519, 'P', 'PPL', 'EC.13', 'EC.13.1208', 32497, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650267, 'EC', 'Ventanas', 'Ventanas', -1.44158, -79.4594, 'P', 'PPL', 'EC.13', 'EC.13.1207', 46708, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650273, 'EC', 'Velasco Ibarra', 'Velasco Ibarra', -1.04376, -79.6384, 'P', 'PPL', 'EC.10', 'EC.10.0908', 48754, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650312, 'EC', 'Valdez', 'Valdez', 1.24917, -78.9831, 'P', 'PPL', 'EC.09', 'EC.09.0802', 11441, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650472, 'EC', 'Tulcán', 'Tulcan', 0.81187, -77.7173, 'P', 'PPLA', 'EC.05', 'EC.05.0401', 86498, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650554, 'EC', 'Tosagua', 'Tosagua', -0.78679, -80.2347, 'P', 'PPL', 'EC.14', 'EC.14.1315', 14680, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650721, 'EC', 'Tena', 'Tena', -0.9938, -77.8129, 'P', 'PPLA', 'EC.23', 'EC.23.1501', 17172, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650956, 'EC', 'Sucúa', 'Sucua', -2.45866, -78.1717, 'P', 'PPL', 'EC.15', 'EC.15.1406', 7413, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3650960, 'EC', 'Sucre', 'Sucre', -1.27974, -80.4189, 'P', 'PPL', 'EC.14', 'EC.14.1316', 15286, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651297, 'EC', 'Santo Domingo de los Colorados', 'Santo Domingo de los Colorados', -0.25305, -79.1754, 'P', 'PPLA', 'EC.26', 'EC.26.2301', 200421, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651356, 'EC', 'Santa Rosa', 'Santa Rosa', -3.44882, -79.9595, 'P', 'PPL', 'EC.08', 'EC.08.0712', 41816, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651411, 'EC', 'Santa Lucía', 'Santa Lucia', -2.18333, -80, 'P', 'PPL', 'EC.10', 'EC.10.0901', 12523, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651438, 'EC', 'Santa Elena', 'Santa Elena', -2.22622, -80.8587, 'P', 'PPLA', 'EC.25', 'EC.25.2401', 42214, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651495, 'EC', 'Santa Ana', 'Santa Ana', -1.20726, -80.3713, 'P', 'PPL', 'EC.14', 'EC.14.1313', 12833, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651613, 'EC', 'San Miguel de Salcedo', 'San Miguel de Salcedo', -1.04547, -78.5906, 'P', 'PPL', 'EC.07', 'EC.07.0505', 10838, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651639, 'EC', 'San Miguel', 'San Miguel', -1.70884, -79.0431, 'P', 'PPL', 'EC.03', 'EC.03.0205', 12575, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651694, 'EC', 'San Lorenzo de Esmeraldas', 'San Lorenzo de Esmeraldas', 1.28626, -78.8351, 'P', 'PPL', 'EC.09', 'EC.09.0805', 20209, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651857, 'EC', 'Sangolquí', 'Sangolqui', -0.33405, -78.4522, 'P', 'PPL', 'EC.18', 'EC.18.1705', 5114, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3651868, 'EC', 'San Gabriel', 'San Gabriel', 0.59318, -77.8308, 'P', 'PPL', 'EC.05', 'EC.05.0405', 15112, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652065, 'EC', 'Samborondón', 'Samborondon', -1.96276, -79.724, 'P', 'PPL', 'EC.10', 'EC.10.0916', 24118, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652100, 'EC', 'Salinas', 'Salinas', -2.21452, -80.9515, 'P', 'PPL', 'EC.25', 'EC.25.2403', 43862, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652257, 'EC', 'Rosa Zarate', 'Rosa Zarate', 0.32779, -79.4741, 'P', 'PPL', 'EC.09', 'EC.09.0804', 42121, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652315, 'EC', 'Rocafuerte', 'Rocafuerte', -0.9236, -80.4495, 'P', 'PPL', 'EC.14', 'EC.14.1312', 10274, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652350, 'EC', 'Riobamba', 'Riobamba', -1.67098, -78.6471, 'P', 'PPLA', 'EC.06', 'EC.06.0601', 124478, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652462, 'EC', 'Quito', 'Quito', -0.22985, -78.5249, 'P', 'PPLC', 'EC.18', 'EC.18.1701', 1399814, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652567, 'EC', 'Quevedo', 'Quevedo', -1.02863, -79.4635, 'P', 'PPL', 'EC.13', 'EC.13.1205', 119436, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652584, 'EC', 'Puyo', 'Puyo', -1.48369, -78.0026, 'P', 'PPLA', 'EC.17', 'EC.17.1601', 24881, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652684, 'EC', 'Pujilí', 'Pujili', -0.95759, -78.6964, 'P', 'PPL', 'EC.07', 'EC.07.0504', 16168, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652743, 'EC', 'Puerto Francisco de Orellana', 'Puerto Francisco de Orellana', -0.46645, -76.9872, 'P', 'PPLA', 'EC.24', 'EC.24.2201', 48144, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652757, 'EC', 'Puerto Bolívar', 'Puerto Bolivar', -3.26649, -79.9975, 'P', 'PPL', 'EC.08', 'EC.08.0701', 8300, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652758, 'EC', 'Puerto Baquerizo Moreno', 'Puerto Baquerizo Moreno', -0.92322, -89.6047, 'P', 'PPLA', 'EC.01', 'EC.01.2001', 4214, 'Pacific/Galapagos', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652764, 'EC', 'Puerto Ayora', 'Puerto Ayora', -0.74018, -90.3138, 'P', 'PPL', 'EC.01', 'EC.01.2003', 8996, 'Pacific/Galapagos', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652941, 'EC', 'Portoviejo', 'Portoviejo', -1.05458, -80.4545, 'P', 'PPLA', 'EC.14', 'EC.14.1301', 170326, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3652943, 'EC', 'Portovelo', 'Portovelo', -3.72145, -79.6219, 'P', 'PPL', 'EC.08', 'EC.08.0711', 9708, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653015, 'EC', 'Playas', 'Playas', -2.63199, -80.3881, 'P', 'PPL', 'EC.10', 'EC.10.0921', 30564, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653130, 'EC', 'Piñas', 'Pinas', -3.68107, -79.6808, 'P', 'PPL', 'EC.08', 'EC.08.0710', 16981, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653146, 'EC', 'Pimampiro', 'Pimampiro', 0.39116, -77.9407, 'P', 'PPL', 'EC.11', 'EC.11.1005', 7408, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653159, 'EC', 'Píllaro', 'Pillaro', -1.17414, -78.5468, 'P', 'PPL', 'EC.19', 'EC.19.1808', 7462, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653287, 'EC', 'Pelileo', 'Pelileo', -1.3299, -78.5434, 'P', 'PPL', 'EC.19', 'EC.19.1807', 16572, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653295, 'EC', 'Pedro Carbo', 'Pedro Carbo', -1.81563, -80.2331, 'P', 'PPL', 'EC.10', 'EC.10.0914', 23372, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653307, 'EC', 'Pedernales', 'Pedernales', 0.07167, -80.0525, 'P', 'PPL', 'EC.14', 'EC.14.1317', 5983, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653403, 'EC', 'Pasaje', 'Pasaje', -3.32561, -79.807, 'P', 'PPL', 'EC.08', 'EC.08.0709', 44860, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653523, 'EC', 'Palora', 'Palora', -1.70131, -77.9652, 'P', 'PPL', 'EC.15', 'EC.15.1404', 6472, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653581, 'EC', 'Palestina', 'Palestina', -1.93709, -79.714, 'P', 'PPL', 'EC.10', 'EC.10.0919', 9364, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653587, 'EC', 'Palenque', 'Palenque', -1.43795, -79.7565, 'P', 'PPL', 'EC.13', 'EC.13.1209', 9083, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653609, 'EC', 'Paján', 'Pajan', -1.55238, -80.4296, 'P', 'PPL', 'EC.14', 'EC.14.1310', 9183, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653693, 'EC', 'Otavalo', 'Otavalo', 0.23457, -78.2625, 'P', 'PPL', 'EC.11', 'EC.11.1004', 32330, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653873, 'EC', 'Naranjito', 'Naranjito', -2.16671, -79.4654, 'P', 'PPL', 'EC.10', 'EC.10.0912', 34206, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653882, 'EC', 'Naranjal', 'Naranjal', -2.67364, -79.6183, 'P', 'PPL', 'EC.10', 'EC.10.0911', 32045, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3653967, 'EC', 'Muisne', 'Muisne', 0.61129, -80.0186, 'P', 'PPL', 'EC.09', 'EC.09.0803', 13393, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654055, 'EC', 'Montecristi', 'Montecristi', -1.04576, -80.6589, 'P', 'PPL', 'EC.14', 'EC.14.1309', 18351, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654064, 'EC', 'Montalvo', 'Montalvo', -1.79008, -79.2876, 'P', 'PPL', 'EC.13', 'EC.13.1203', 15547, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654215, 'EC', 'Milagro', 'Milagro', -2.13404, -79.5941, 'P', 'PPL', 'EC.10', 'EC.10.0910', 133508, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654410, 'EC', 'Manta', 'Manta', -0.96212, -80.7127, 'P', 'PPL', 'EC.14', 'EC.14.1308', 183166, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654533, 'EC', 'Machala', 'Machala', -3.25861, -79.9605, 'P', 'PPLA', 'EC.08', 'EC.08.0701', 198123, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654536, 'EC', 'Machachi', 'Machachi', -0.51011, -78.5671, 'P', 'PPL', 'EC.18', 'EC.18.1703', 25742, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654541, 'EC', 'Macas', 'Macas', -2.30868, -78.1114, 'P', 'PPLA', 'EC.15', 'EC.15.1401', 23687, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654545, 'EC', 'Macará', 'Macara', -4.38181, -79.9437, 'P', 'PPL', 'EC.12', 'EC.12.1108', 13035, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654650, 'EC', 'Lomas de Sargentillo', 'Lomas de Sargentillo', -1.88333, -80.0833, 'P', 'PPL', 'EC.10', 'EC.10.0924', 7542, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654667, 'EC', 'Loja', 'Loja', -3.99313, -79.2042, 'P', 'PPLA', 'EC.12', 'EC.12.1101', 117796, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654853, 'EC', 'La Troncal', 'La Troncal', -2.42355, -79.3398, 'P', 'PPL', 'EC.04', 'EC.04.0304', 36353, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3654870, 'EC', 'Latacunga', 'Latacunga', -0.93521, -78.6155, 'P', 'PPLA', 'EC.07', 'EC.07.0501', 51717, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655117, 'EC', 'La Maná', 'La Mana', -0.94094, -79.2251, 'P', 'PPL', 'EC.07', 'EC.07.0502', 16450, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655131, 'EC', 'La Libertad', 'La Libertad', -2.233, -80.9104, 'P', 'PPL', 'EC.10', NULL, 75881, 'America/Guayaquil', 1, '2013-01-10 23:00:00', '2013-01-10 23:00:00'),
(3655185, 'EC', 'Nueva Loja', 'Nueva Loja', 0.086, -76.8953, 'P', 'PPLA', 'EC.22', 'EC.22.2101', 24211, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655385, 'EC', 'Junín', 'Junin', -0.92777, -80.2058, 'P', 'PPL', 'EC.14', 'EC.14.1307', 9128, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655446, 'EC', 'Jipijapa', 'Jipijapa', -1.34872, -80.5788, 'P', 'PPL', 'EC.14', 'EC.14.1306', 35901, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655673, 'EC', 'Ibarra', 'Ibarra', 0.35171, -78.1223, 'P', 'PPLA', 'EC.11', 'EC.11.1001', 132977, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3655720, 'EC', 'Huaquillas', 'Huaquillas', -3.47523, -80.2308, 'P', 'PPL', 'EC.08', 'EC.08.0707', 39757, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3657509, 'EC', 'Guayaquil', 'Guayaquil', -2.20584, -79.908, 'P', 'PPLA', 'EC.10', 'EC.10.0901', 1952029, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3657571, 'EC', 'Guaranda', 'Guaranda', -1.59263, -79.001, 'P', 'PPLA', 'EC.03', 'EC.03.0201', 22199, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3657594, 'EC', 'Guano', 'Guano', -1.60789, -78.6311, 'P', 'PPL', 'EC.06', 'EC.06.0607', 12659, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3657670, 'EC', 'Gualaceo', 'Gualaceo', -2.89264, -78.7781, 'P', 'PPL', 'EC.02', 'EC.02.0103', 17122, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3657990, 'EC', 'Esmeraldas', 'Esmeraldas', 0.9592, -79.654, 'P', 'PPLA', 'EC.09', 'EC.09.0801', 165216, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658053, 'EC', 'El Triunfo', 'El Triunfo', -1.93333, -79.9667, 'P', 'PPL', 'EC.10', 'EC.10.0906', 32282, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658192, 'EC', 'Eloy Alfaro', 'Eloy Alfaro', -2.17579, -79.8552, 'P', 'PPL', 'EC.10', 'EC.10.0907', 167784, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658666, 'EC', 'Cuenca', 'Cuenca', -2.90055, -79.0045, 'P', 'PPLA', 'EC.02', 'EC.02.0101', 276964, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658781, 'EC', 'Cotacachi', 'Cotacachi', 0.30107, -78.2643, 'P', 'PPL', 'EC.11', 'EC.11.1003', 8238, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658822, 'EC', 'Coronel Marcelino Maridueña', 'Coronel Marcelino Mariduena', -2.20924, -79.4325, 'P', 'PPL', 'EC.10', 'EC.10.0923', 7303, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3658948, 'EC', 'Colimes', 'Colimes', -1.54553, -80.0117, 'P', 'PPL', 'EC.10', 'EC.10.0905', 9384, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659139, 'EC', 'Chone', 'Chone', -0.69819, -80.0936, 'P', 'PPL', 'EC.14', 'EC.14.1303', 44751, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659544, 'EC', 'Celica', 'Celica', -4.10266, -79.9566, 'P', 'PPL', 'EC.12', 'EC.12.1104', 5499, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659578, 'EC', 'Cayambe', 'Cayambe', 0.04084, -78.1452, 'P', 'PPL', 'EC.18', 'EC.18.1702', 26582, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659592, 'EC', 'Catarama', 'Catarama', -1.57504, -79.46, 'P', 'PPL', 'EC.13', 'EC.13.1206', 9723, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659599, 'EC', 'Catamayo', 'Catamayo', -3.98652, -79.3591, 'P', 'PPL', 'EC.12', 'EC.12.1103', 18565, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659602, 'EC', 'Catacocha', 'Catacocha', -4.04974, -79.6494, 'P', 'PPL', 'EC.12', 'EC.12.1109', 10872, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659711, 'EC', 'Cariamanga', 'Cariamanga', -4.32796, -79.5555, 'P', 'PPL', 'EC.12', 'EC.12.1102', 16862, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659852, 'EC', 'Cañar', 'Canar', -2.56062, -78.9394, 'P', 'PPL', 'EC.04', 'EC.04.0303', 9900, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3659926, 'EC', 'Calceta', 'Calceta', -0.84582, -80.1639, 'P', 'PPL', 'EC.14', 'EC.14.1302', 17286, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660152, 'EC', 'Boca Suno', 'Boca Suno', -0.69832, -77.1408, 'P', 'PPL', 'EC.24', NULL, 20313, 'America/Guayaquil', 1, '2013-01-10 23:00:00', '2013-01-10 23:00:00'),
(3660346, 'EC', 'Baños', 'Banos', -1.39699, -78.4229, 'P', 'PPL', 'EC.19', 'EC.19.1802', 9501, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660361, 'EC', 'Balzar', 'Balzar', -1.36501, -79.9049, 'P', 'PPL', 'EC.10', 'EC.10.0904', 40115, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(3660387, 'EC', 'Baláo', 'Balao', -2.911, -79.8144, 'P', 'PPL', 'EC.10', 'EC.10.0903', 12205, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660401, 'EC', 'Bahía de Caráquez', 'Bahia de Caraquez', -0.59792, -80.4237, 'P', 'PPL', 'EC.14', 'EC.14.1314', 37056, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660418, 'EC', 'Babahoyo', 'Babahoyo', -1.80217, -79.5344, 'P', 'PPLA', 'EC.13', 'EC.13.1201', 76279, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660434, 'EC', 'Azogues', 'Azogues', -2.73969, -78.8486, 'P', 'PPLA', 'EC.04', 'EC.04.0301', 34877, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660478, 'EC', 'Atuntaqui', 'Atuntaqui', 0.33247, -78.2137, 'P', 'PPL', 'EC.11', 'EC.11.1002', 17456, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660573, 'EC', 'Archidona', 'Archidona', -0.9095, -77.8077, 'P', 'PPL', 'EC.23', 'EC.23.1503', 7309, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660689, 'EC', 'Ambato', 'Ambato', -1.24908, -78.6168, 'P', 'PPLA', 'EC.19', 'EC.19.1801', 154369, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660773, 'EC', 'Alfredo Baquerizo Moreno', 'Alfredo Baquerizo Moreno', -1.91667, -79.5167, 'P', 'PPL', 'EC.10', 'EC.10.0902', 12617, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3660798, 'EC', 'Alausí', 'Alausi', -2.20329, -78.8471, 'P', 'PPL', 'EC.06', 'EC.06.0602', 14294, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3665542, 'CO', 'Zipaquirá', 'Zipaquira', 5.02208, -74.0048, 'P', 'PPL', 'CO.33', 'CO.33.25899', 91235, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665559, 'CO', 'Zarzal', 'Zarzal', 4.39462, -76.0715, 'P', 'PPL', 'CO.29', 'CO.29.76895', 28761, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665566, 'CO', 'Zaragoza', 'Zaragoza', 7.48971, -74.8692, 'P', 'PPL', 'CO.02', 'CO.02.05895', 18795, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665587, 'CO', 'Zapatoca', 'Zapatoca', 6.81532, -73.2677, 'P', 'PPL', 'CO.26', 'CO.26.68895', 6052, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665616, 'CO', 'Zambrano', 'Zambrano', 9.74724, -74.8153, 'P', 'PPL', 'CO.38', NULL, 9565, 'America/Bogota', 1, '2012-01-18 23:00:00', '2012-01-18 23:00:00'),
(3665657, 'CO', 'Yumbo', 'Yumbo', 3.58234, -76.4915, 'P', 'PPL', 'CO.29', 'CO.29.76892', 71436, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665678, 'CO', 'Yotoco', 'Yotoco', 3.86048, -76.3836, 'P', 'PPL', 'CO.29', 'CO.29.76890', 8362, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665688, 'CO', 'Yopal', 'Yopal', 5.33775, -72.3959, 'P', 'PPLA', 'CO.32', 'CO.32.85001', 61029, 'America/Bogota', 1, '2016-10-22 23:00:00', '2016-10-22 23:00:00'),
(3665691, 'CO', 'Yondó', 'Yondo', 7.00621, -73.9097, 'P', 'PPL', 'CO.02', 'CO.02.05893', 7516, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665693, 'CO', 'Yolombó', 'Yolombo', 6.59841, -75.0114, 'P', 'PPL', 'CO.02', 'CO.02.05890', 6033, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665741, 'CO', 'Yarumal', 'Yarumal', 6.96321, -75.4174, 'P', 'PPL', 'CO.02', 'CO.02.05887', 22368, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665803, 'CO', 'Yaguará', 'Yaguara', 2.66355, -75.5175, 'P', 'PPL', 'CO.16', 'CO.16.41885', 5724, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665851, 'CO', 'Viterbo', 'Viterbo', 5.06242, -75.8716, 'P', 'PPL', 'CO.37', 'CO.37.17877', 15216, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665881, 'CO', 'Viotá', 'Viota', 4.43713, -74.5216, 'P', 'PPL', 'CO.33', 'CO.33.25878', 5840, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665895, 'CO', 'Villeta', 'Villeta', 5.00886, -74.4723, 'P', 'PPL', 'CO.33', 'CO.33.25875', 20689, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665900, 'CO', 'Villavicencio', 'Villavicencio', 4.142, -73.6266, 'P', 'PPLA', 'CO.19', 'CO.19.50001', 321717, 'America/Bogota', 1, '2015-04-03 23:00:00', '2015-04-03 23:00:00'),
(3665913, 'CO', 'Villa del Rosario', 'Villa del Rosario', 7.83389, -72.4742, 'P', 'PPL', 'CO.21', 'CO.21.54874', 64951, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665924, 'CO', 'Villapinzón', 'Villapinzon', 5.21617, -73.5949, 'P', 'PPL', 'CO.33', 'CO.33.25873', 5874, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665934, 'CO', 'Villanueva', 'Villanueva', 10.6053, -72.98, 'P', 'PPL', 'CO.17', 'CO.17.44874', 18699, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665935, 'CO', 'Villanueva', 'Villanueva', 10.4436, -75.2731, 'P', 'PPL', 'CO.35', 'CO.35.13873', 12791, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665951, 'CO', 'Villanueva', 'Villanueva', 5.28333, -71.9667, 'P', 'PPL', 'CO.32', 'CO.32.85325', 20032, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665973, 'CO', 'Villamaría', 'Villamaria', 5.04492, -75.5146, 'P', 'PPL', 'CO.37', 'CO.37.17873', 35302, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3665992, 'CO', 'Villagarzón', 'Villagarzon', 1.0375, -76.6267, 'P', 'PPL', 'CO.22', 'CO.22.86885', 7015, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666003, 'CO', 'Villa de Leiva', 'Villa de Leiva', 5.645, -73.5667, 'P', 'PPL', 'CO.36', 'CO.36.15407', 5103, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666193, 'CO', 'Venecia', 'Venecia', 5.96278, -75.7381, 'P', 'PPL', 'CO.02', 'CO.02.05861', 5462, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666226, 'CO', 'Venadillo', 'Venadillo', 4.71929, -74.9292, 'P', 'PPL', 'CO.28', 'CO.28.73861', 11310, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666232, 'CO', 'Vélez', 'Velez', 6.01335, -73.6735, 'P', 'PPL', 'CO.26', 'CO.26.68861', 10905, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666304, 'CO', 'Valledupar', 'Valledupar', 10.4631, -73.2532, 'P', 'PPLA', 'CO.10', 'CO.10.20001', 308237, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666326, 'CO', 'Valencia', 'Valencia', 8.25801, -76.1493, 'P', 'PPL', 'CO.12', 'CO.12.23855', 10652, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666370, 'CO', 'Usiacurí', 'Usiacuri', 10.75, -74.9833, 'P', 'PPL', 'CO.04', 'CO.04.08849', 9146, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666381, 'CO', 'Urumita', 'Urumita', 10.5589, -73.0123, 'P', 'PPL', 'CO.17', 'CO.17.44855', 8509, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666395, 'CO', 'Urrao', 'Urrao', 6.31696, -76.1342, 'P', 'PPL', 'CO.02', 'CO.02.05847', 18846, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666409, 'CO', 'Uribia', 'Uribia', 11.7139, -72.266, 'P', 'PPL', 'CO.17', 'CO.17.44847', 7519, 'America/Bogota', 1, '2017-09-04 23:00:00', '2017-09-04 23:00:00'),
(3666519, 'CO', 'Ubaté', 'Ubate', 5.30933, -73.8158, 'P', 'PPL', 'CO.33', 'CO.33.25843', 20485, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666570, 'CO', 'Turbo', 'Turbo', 8.09263, -76.7282, 'P', 'PPLA2', 'CO.02', 'CO.02.05837', 50508, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666575, 'CO', 'Turbaná', 'Turbana', 10.2717, -75.4422, 'P', 'PPL', 'CO.35', 'CO.35.13838', 10235, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666577, 'CO', 'Turbaco', 'Turbaco', 10.3294, -75.4114, 'P', 'PPL', 'CO.35', 'CO.35.13836', 56171, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666582, 'CO', 'Túquerres', 'Tuquerres', 1.08878, -77.6183, 'P', 'PPL', 'CO.20', 'CO.20.52838', 20184, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666608, 'CO', 'Tunja', 'Tunja', 5.53528, -73.3678, 'P', 'PPLA', 'CO.36', 'CO.36.15001', 117479, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666640, 'CO', 'Tumaco', 'Tumaco', 1.79861, -78.8156, 'P', 'PPL', 'CO.20', 'CO.20.52835', 86713, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666645, 'CO', 'Tuluá', 'Tulua', 4.08466, -76.1954, 'P', 'PPL', 'CO.29', 'CO.29.76834', 165501, 'America/Bogota', 1, '2017-08-08 23:00:00', '2017-08-08 23:00:00'),
(3666673, 'CO', 'Tubará', 'Tubara', 10.8756, -74.9787, 'P', 'PPL', 'CO.04', 'CO.04.08832', 8180, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666680, 'CO', 'Trujillo', 'Trujillo', 4.21217, -76.3195, 'P', 'PPL', 'CO.29', 'CO.29.76828', 5874, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666881, 'CO', 'Toro', 'Toro', 4.61167, -76.0814, 'P', 'PPLA2', 'CO.29', 'CO.29.76823', 13764, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666936, 'CO', 'Toluviejo', 'Toluviejo', 9.45082, -75.4386, 'P', 'PPL', 'CO.27', 'CO.27.70823', 8260, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666939, 'CO', 'Tolú', 'Tolu', 9.52392, -75.5814, 'P', 'PPL', 'CO.27', 'CO.27.70820', 27390, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666959, 'CO', 'Toledo', 'Toledo', 7.30984, -72.4829, 'P', 'PPL', 'CO.21', 'CO.21.54820', 5911, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3666997, 'CO', 'Tocancipá', 'Tocancipa', 4.96531, -73.913, 'P', 'PPL', 'CO.33', 'CO.33.25817', 6027, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667003, 'CO', 'Tocaima', 'Tocaima', 4.4582, -74.6343, 'P', 'PPL', 'CO.33', 'CO.33.25815', 10235, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667070, 'CO', 'Timbiquí', 'Timbiqui', 2.7717, -77.6654, 'P', 'PPL', 'CO.09', 'CO.09.19809', 6267, 'America/Bogota', 1, '2017-07-01 23:00:00', '2017-07-01 23:00:00'),
(3667082, 'CO', 'Timaná', 'Timana', 1.97136, -75.9312, 'P', 'PPL', 'CO.16', 'CO.16.41807', 8203, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667158, 'CO', 'Tierralta', 'Tierralta', 8.17361, -76.0592, 'P', 'PPL', 'CO.12', 'CO.12.23807', 26242, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667202, 'CO', 'Tibú', 'Tibu', 8.63895, -72.7358, 'P', 'PPL', 'CO.21', 'CO.21.54810', 13565, 'America/Bogota', 1, '2017-06-24 23:00:00', '2017-06-24 23:00:00'),
(3667473, 'CO', 'Támesis', 'Tamesis', 5.66462, -75.7134, 'P', 'PPL', 'CO.02', 'CO.02.05789', 6406, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667478, 'CO', 'Tame', 'Tame', 6.46065, -71.7362, 'P', 'PPL', 'CO.03', 'CO.03.81794', 29099, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667547, 'CO', 'Talaigua Viejo', 'Talaigua Viejo', 9.31206, -74.5854, 'P', 'PPL', 'CO.35', 'CO.35.13780', 6217, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667579, 'CO', 'Tadó', 'Tado', 5.26598, -76.5649, 'P', 'PPL', 'CO.11', 'CO.11.27787', 10095, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667697, 'CO', 'Supía', 'Supia', 5.45303, -75.6507, 'P', 'PPL', 'CO.37', 'CO.37.17777', 12784, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667728, 'CO', 'Sucre', 'Sucre', 8.81136, -74.7208, 'P', 'PPL', 'CO.27', 'CO.27.70771', 23210, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667773, 'CO', 'Suárez', 'Suarez', 2.95395, -76.6964, 'P', 'PPL', 'CO.09', 'CO.09.19780', 9985, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667780, 'CO', 'Suan', 'Suan', 10.3335, -74.8802, 'P', 'PPL', 'CO.04', 'CO.04.08770', 10381, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667807, 'CO', 'Sopó', 'Sopo', 4.9075, -73.9384, 'P', 'PPL', 'CO.33', 'CO.33.25758', 8396, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667811, 'CO', 'Soplaviento', 'Soplaviento', 10.3931, -75.1408, 'P', 'PPL', 'CO.35', 'CO.35.13647', 8067, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667820, 'CO', 'Sonsón', 'Sonson', 5.71062, -75.3107, 'P', 'PPL', 'CO.02', 'CO.02.05756', 17232, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667849, 'CO', 'Soledad', 'Soledad', 10.9184, -74.7646, 'P', 'PPL', 'CO.04', 'CO.04.08758', 342556, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667873, 'CO', 'Sogamoso', 'Sogamoso', 5.71434, -72.9339, 'P', 'PPL', 'CO.36', 'CO.36.15759', 126551, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667887, 'CO', 'Socorro', 'Socorro', 6.46838, -73.2602, 'P', 'PPL', 'CO.26', 'CO.26.68755', 17752, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667901, 'CO', 'Soatá', 'Soata', 6.33369, -72.6828, 'P', 'PPL', 'CO.36', 'CO.36.15753', 10945, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667905, 'CO', 'Soacha', 'Soacha', 4.57937, -74.2168, 'P', 'PPL', 'CO.33', 'CO.33.25754', 313945, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667918, 'CO', 'Sitionuevo', 'Sitionuevo', 10.7774, -74.7205, 'P', 'PPL', 'CO.04', NULL, 11817, 'America/Bogota', 1, '2013-04-03 23:00:00', '2013-04-03 23:00:00'),
(3667983, 'CO', 'Sincelejo', 'Sincelejo', 9.30472, -75.3978, 'P', 'PPLA', 'CO.27', 'CO.27.70001', 261187, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3667991, 'CO', 'Sincé', 'Since', 9.24391, -75.1468, 'P', 'PPL', 'CO.27', 'CO.27.70742', 30768, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668012, 'CO', 'Simití', 'Simiti', 7.9579, -73.9436, 'P', 'PPL', 'CO.35', 'CO.35.13744', 6670, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668025, 'CO', 'Silvia', 'Silvia', 2.61557, -76.3826, 'P', 'PPL', 'CO.09', 'CO.09.19743', 7474, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668028, 'CO', 'Silvania', 'Silvania', 4.40367, -74.3867, 'P', 'PPL', 'CO.33', 'CO.33.25743', 8237, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668078, 'CO', 'Sibundoy', 'Sibundoy', 1.20296, -76.9228, 'P', 'PPL', 'CO.22', 'CO.22.86749', 9458, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3668087, 'CO', 'Sibaté', 'Sibate', 4.48425, -74.245, 'P', 'PPL', 'CO.33', 'CO.33.25740', 23208, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668132, 'CO', 'Sevilla', 'Sevilla', 4.26425, -75.9308, 'P', 'PPL', 'CO.29', 'CO.29.76736', 41612, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668175, 'CO', 'Segovia', 'Segovia', 7.07993, -74.6989, 'P', 'PPL', 'CO.02', 'CO.02.05736', 39938, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668245, 'CO', 'Sardinata', 'Sardinata', 8.08289, -72.8007, 'P', 'PPL', 'CO.21', 'CO.21.54720', 7872, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668286, 'CO', 'San Zenón', 'San Zenon', 9.24217, -74.5004, 'P', 'PPL', 'CO.35', NULL, 6520, 'America/Bogota', 1, '2012-01-18 23:00:00', '2012-01-18 23:00:00'),
(3668292, 'CO', 'San Vicente de Chucurí', 'San Vicente de Chucuri', 6.881, -73.4098, 'P', 'PPL', 'CO.26', 'CO.26.68689', 11265, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668302, 'CO', 'San Vicente', 'San Vicente', 6.23278, -75.3361, 'P', 'PPL', 'CO.02', 'CO.02.05674', 5020, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668323, 'CO', 'Santuario', 'Santuario', 6.13833, -75.2642, 'P', 'PPL', 'CO.02', 'CO.02.05697', 17722, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668324, 'CO', 'Santuario', 'Santuario', 5.07237, -75.9634, 'P', 'PPL', 'CO.24', 'CO.24.66687', 6815, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668332, 'CO', 'Santo Tomás', 'Santo Tomas', 10.7577, -74.7545, 'P', 'PPL', 'CO.04', 'CO.04.08685', 25847, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668447, 'CO', 'Santa Rosa de Viterbo', 'Santa Rosa de Viterbo', 5.87401, -72.9822, 'P', 'PPL', 'CO.36', 'CO.36.15693', 6923, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668451, 'CO', 'Santa Rosa de Osos', 'Santa Rosa de Osos', 6.64738, -75.4603, 'P', 'PPL', 'CO.02', 'CO.02.05686', 10191, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668454, 'CO', 'Santa Rosa de Cabal', 'Santa Rosa de Cabal', 4.86806, -75.6214, 'P', 'PPL', 'CO.24', 'CO.24.66682', 57928, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668472, 'CO', 'Santa Rosa', 'Santa Rosa', 10.4447, -75.3697, 'P', 'PPL', 'CO.35', 'CO.35.13683', 10604, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668572, 'CO', 'Santander de Quilichao', 'Santander de Quilichao', 3.00945, -76.4849, 'P', 'PPL', 'CO.09', 'CO.09.19698', 40798, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668605, 'CO', 'Santa Marta', 'Santa Marta', 11.2408, -74.199, 'P', 'PPLA', 'CO.38', 'CO.38.47001', 431781, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668655, 'CO', 'Santa Lucía', 'Santa Lucia', 10.3242, -74.9602, 'P', 'PPL', 'CO.04', 'CO.04.08675', 15760, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668861, 'CO', 'Santa Catalina', 'Santa Catalina', 10.6036, -75.2882, 'P', 'PPL', 'CO.35', 'CO.35.13673', 6084, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668895, 'CO', 'Santa Bárbara', 'Santa Barbara', 5.87458, -75.5671, 'P', 'PPL', 'CO.02', 'CO.02.05679', 12743, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3668937, 'CO', 'Santa Ana', 'Santa Ana', 9.32125, -74.5685, 'P', 'PPL', 'CO.38', 'CO.38.47707', 13950, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669011, 'CO', 'San Roque', 'San Roque', 6.48511, -75.0196, 'P', 'PPL', 'CO.02', 'CO.02.05670', 5576, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669056, 'CO', 'San Rafael', 'San Rafael', 6.29436, -75.0259, 'P', 'PPL', 'CO.02', 'CO.02.05667', 7245, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669084, 'CO', 'San Pelayo', 'San Pelayo', 8.95833, -75.8363, 'P', 'PPL', 'CO.12', 'CO.12.23686', 5637, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669087, 'CO', 'San Pedro de Urabá', 'San Pedro de Uraba', 8.27515, -76.3764, 'P', 'PPL', 'CO.02', 'CO.02.05665', 11095, 'America/Bogota', 1, '2017-09-04 23:00:00', '2017-09-04 23:00:00'),
(3669128, 'CO', 'San Pedro', 'San Pedro', 9.3956, -75.0648, 'P', 'PPL', 'CO.27', 'CO.27.70717', 11489, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669138, 'CO', 'San Pedro', 'San Pedro', 6.46451, -75.56, 'P', 'PPL', 'CO.02', 'CO.02.05664', 8801, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669156, 'CO', 'San Pedro', 'San Pedro', 3.99445, -76.2289, 'P', 'PPL', 'CO.29', 'CO.29.76670', 5473, 'America/Bogota', 1, '2015-06-23 23:00:00', '2015-06-23 23:00:00'),
(3669188, 'CO', 'San Pablo', 'San Pablo', 10.0515, -75.2678, 'P', 'PPL', 'CO.35', 'CO.35.13442', 13983, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669214, 'CO', 'San Pablo', 'San Pablo', 1.6725, -77.0139, 'P', 'PPL', 'CO.20', 'CO.20.52693', 6522, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669218, 'CO', 'San Onofre', 'San Onofre', 9.73586, -75.5263, 'P', 'PPL', 'CO.27', 'CO.27.70713', 32957, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669293, 'CO', 'San Miguel', 'San Miguel', 0.34314, -76.9112, 'P', 'PPL', 'CO.22', 'CO.22.86757', 7185, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669332, 'CO', 'San Martín', 'San Martin', 3.69637, -73.6996, 'P', 'PPL', 'CO.19', 'CO.19.50689', 16273, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669346, 'CO', 'San Marcos', 'San Marcos', 8.65972, -75.1281, 'P', 'PPL', 'CO.27', 'CO.27.70708', 36549, 'America/Bogota', 1, '2017-07-15 23:00:00', '2017-07-15 23:00:00'),
(3669454, 'CO', 'San Juan Nepomuceno', 'San Juan Nepomuceno', 9.95157, -75.082, 'P', 'PPL', 'CO.35', 'CO.35.13657', 29619, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669461, 'CO', 'San Juan de Urabá', 'San Juan de Uraba', 8.75924, -76.5297, 'P', 'PPL', 'CO.02', 'CO.02.05659', 10825, 'America/Bogota', 1, '2017-07-14 23:00:00', '2017-07-14 23:00:00'),
(3669469, 'CO', 'San Juan del Cesar', 'San Juan del Cesar', 10.7711, -73.0031, 'P', 'PPL', 'CO.17', 'CO.17.44650', 26848, 'America/Bogota', 1, '2017-09-21 23:00:00', '2017-09-21 23:00:00'),
(3669480, 'CO', 'San Juan de Betulia', 'San Juan de Betulia', 9.27345, -75.241, 'P', 'PPL', 'CO.27', 'CO.27.70702', 9092, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669736, 'CO', 'San Jacinto', 'San Jacinto', 9.82767, -75.1217, 'P', 'PPL', 'CO.35', 'CO.35.13654', 20265, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669808, 'CO', 'San Gil', 'San Gil', 6.55952, -73.1364, 'P', 'PPL', 'CO.26', 'CO.26.68679', 33592, 'America/Bogota', 1, '2015-01-12 23:00:00', '2015-01-12 23:00:00'),
(3669929, 'CO', 'San Estanislao', 'San Estanislao', 10.3983, -75.1511, 'P', 'PPL', 'CO.35', 'CO.35.13647', 12596, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669938, 'CO', 'Sandoná', 'Sandona', 1.28626, -77.4692, 'P', 'PPL', 'CO.20', 'CO.20.52683', 10401, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669947, 'CO', 'San Diego', 'San Diego', 10.3362, -73.182, 'P', 'PPL', 'CO.10', 'CO.10.20750', 8014, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669997, 'CO', 'San Carlos', 'San Carlos', 8.79577, -75.6995, 'P', 'PPL', 'CO.12', 'CO.12.23678', 24615, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3669998, 'CO', 'San Carlos', 'San Carlos', 7.79177, -74.7732, 'P', 'PPL', 'CO.02', 'CO.02.05250', 22678, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670000, 'CO', 'San Carlos', 'San Carlos', 6.18789, -74.9931, 'P', 'PPL', 'CO.02', 'CO.02.05649', 7742, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670018, 'CO', 'San Bernardo del Viento', 'San Bernardo del Viento', 9.3533, -75.9524, 'P', 'PPL', 'CO.12', 'CO.12.23675', 8967, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670038, 'CO', 'San Benito Abad', 'San Benito Abad', 8.92901, -75.0271, 'P', 'PPL', 'CO.27', 'CO.27.70678', 18181, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670107, 'CO', 'San Antonio', 'San Antonio', 9.93303, -74.6935, 'P', 'PPL', 'CO.38', 'CO.38.47798', 8476, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670162, 'CO', 'San Antonio', 'San Antonio', 3.91423, -75.4801, 'P', 'PPL', 'CO.28', 'CO.28.73675', 5185, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670199, 'CO', 'San Antero', 'San Antero', 9.3741, -75.7589, 'P', 'PPL', 'CO.12', 'CO.12.23672', 11610, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670218, 'CO', 'San Andrés', 'San Andres', 12.5847, -81.7006, 'P', 'PPLA', 'CO.25', 'CO.25.88001', 58257, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670242, 'CO', 'San Alberto', 'San Alberto', 7.76107, -73.3922, 'P', 'PPL', 'CO.10', 'CO.10.20710', 10627, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670260, 'CO', 'San Agustín', 'San Agustin', 1.87884, -76.2672, 'P', 'PPL', 'CO.16', 'CO.16.41668', 9481, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670280, 'CO', 'Sampués', 'Sampues', 9.18361, -75.3817, 'P', 'PPL', 'CO.27', 'CO.27.70670', 21204, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670293, 'CO', 'Samaniego', 'Samaniego', 1.33849, -77.5957, 'P', 'PPL', 'CO.20', 'CO.20.52678', 13515, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670350, 'CO', 'Salgar', 'Salgar', 5.96502, -75.9654, 'P', 'PPL', 'CO.02', 'CO.02.05642', 6428, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670357, 'CO', 'Saldaña', 'Saldana', 3.92923, -75.0152, 'P', 'PPL', 'CO.28', 'CO.28.73671', 9237, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670368, 'CO', 'Salamina', 'Salamina', 10.4903, -74.7946, 'P', 'PPL', 'CO.38', 'CO.38.47675', 6166, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670370, 'CO', 'Salamina', 'Salamina', 5.40733, -75.4875, 'P', 'PPL', 'CO.37', 'CO.37.17653', 18076, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670419, 'CO', 'Sahagún', 'Sahagun', 8.94617, -75.4427, 'P', 'PPL', 'CO.12', 'CO.12.23660', 59188, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670475, 'CO', 'Sabaneta', 'Sabaneta', 6.15153, -75.6166, 'P', 'PPLX', 'CO.02', 'CO.02.05631', 34172, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670502, 'CO', 'Sabanalarga', 'Sabanalarga', 10.6296, -74.9206, 'P', 'PPL', 'CO.04', 'CO.04.08638', 68535, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670513, 'CO', 'Sabanagrande', 'Sabanagrande', 10.7912, -74.7606, 'P', 'PPL', 'CO.04', 'CO.04.08634', 24880, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670520, 'CO', 'Sabana de Torres', 'Sabana de Torres', 7.3915, -73.4957, 'P', 'PPL', 'CO.26', 'CO.26.68655', 11291, 'America/Bogota', 1, '2017-02-05 23:00:00', '2017-02-05 23:00:00'),
(3670587, 'CO', 'Rovira', 'Rovira', 4.23922, -75.24, 'P', 'PPL', 'CO.28', 'CO.28.73624', 6949, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670644, 'CO', 'Roldanillo', 'Roldanillo', 4.41256, -76.1546, 'P', 'PPL', 'CO.29', 'CO.29.76622', 27561, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670692, 'CO', 'Rivera', 'Rivera', 2.77717, -75.2564, 'P', 'PPL', 'CO.16', 'CO.16.41615', 8044, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670700, 'CO', 'Risaralda', 'Risaralda', 5.16647, -75.766, 'P', 'PPL', 'CO.37', 'CO.37.17616', 5421, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670709, 'CO', 'Río Viejo', 'Rio Viejo', 8.5874, -73.839, 'P', 'PPL', 'CO.35', 'CO.35.13600', 6963, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670718, 'CO', 'Riosucio', 'Riosucio', 7.44348, -77.1196, 'P', 'PPL', 'CO.11', 'CO.11.27615', 7163, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670719, 'CO', 'Riosucio', 'Riosucio', 5.42164, -75.7032, 'P', 'PPL', 'CO.37', 'CO.37.17614', 18950, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670730, 'CO', 'Rionegro', 'Rionegro', 6.15515, -75.3737, 'P', 'PPL', 'CO.02', 'CO.02.05615', 62291, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670745, 'CO', 'Ríohacha', 'Riohacha', 11.5444, -72.9072, 'P', 'PPLA', 'CO.17', 'CO.17.44001', 92431, 'America/Bogota', 1, '2017-02-04 23:00:00', '2017-02-04 23:00:00'),
(3670754, 'CO', 'Riofrío', 'Riofrio', 4.1571, -76.2885, 'P', 'PPL', 'CO.29', 'CO.29.76616', 9236, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670756, 'CO', 'Río de Oro', 'Rio de Oro', 8.2919, -73.3848, 'P', 'PPL', 'CO.10', 'CO.10.20614', 6122, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670764, 'CO', 'Rioblanco', 'Rioblanco', 3.53083, -75.6806, 'P', 'PPL', 'CO.28', 'CO.28.73616', 6210, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670849, 'CO', 'El Retiro', 'El Retiro', 6.05861, -75.5031, 'P', 'PPL', 'CO.02', 'CO.02.05607', 7941, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670855, 'CO', 'Restrepo', 'Restrepo', 4.25833, -73.5614, 'P', 'PPL', 'CO.19', 'CO.19.50606', 7511, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670856, 'CO', 'Restrepo', 'Restrepo', 3.82203, -76.5224, 'P', 'PPL', 'CO.29', 'CO.29.76606', 9545, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670874, 'CO', 'Repelón', 'Repelon', 10.4919, -75.1292, 'P', 'PPL', 'CO.04', 'CO.04.08606', 18685, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670884, 'CO', 'Remolino', 'Remolino', 10.702, -74.716, 'P', 'PPL', 'CO.38', 'CO.38.47605', 8308, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3670899, 'CO', 'Remedios', 'Remedios', 7.03083, -74.5333, 'P', 'PPL', 'CO.02', 'CO.02.05604', 6415, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671002, 'CO', 'Ramiriquí', 'Ramiriqui', 5.4002, -73.3354, 'P', 'PPL', 'CO.36', 'CO.36.15599', 5039, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671091, 'CO', 'Quinchía', 'Quinchia', 5.33957, -75.7302, 'P', 'PPL', 'CO.24', 'CO.24.66594', 10895, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671098, 'CO', 'Quimbaya', 'Quimbaya', 4.62306, -75.7628, 'P', 'PPL', 'CO.23', 'CO.23.63594', 31391, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671116, 'CO', 'Quibdó', 'Quibdo', 5.69188, -76.6583, 'P', 'PPLA', 'CO.11', 'CO.11.27001', 75104, 'America/Bogota', 1, '2015-08-29 23:00:00', '2015-08-29 23:00:00'),
(3671203, 'CO', 'Purísima', 'Purisima', 9.23657, -75.7219, 'P', 'PPL', 'CO.12', 'CO.12.23586', 7043, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671208, 'CO', 'Purificación', 'Purificacion', 3.85871, -74.9313, 'P', 'PPL', 'CO.28', 'CO.28.73585', 10846, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671228, 'CO', 'Pupiales', 'Pupiales', 0.87136, -77.6403, 'P', 'PPL', 'CO.20', 'CO.20.52585', 6760, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671287, 'CO', 'Puerto Wilches', 'Puerto Wilches', 7.34828, -73.896, 'P', 'PPL', 'CO.26', 'CO.26.68575', 13705, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671315, 'CO', 'Puerto Tejada', 'Puerto Tejada', 3.23114, -76.4167, 'P', 'PPLA2', 'CO.09', 'CO.09.19573', 53674, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671325, 'CO', 'Puerto Santander', 'Puerto Santander', 8.36361, -72.4063, 'P', 'PPL', 'CO.21', 'CO.21.54553', 16275, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671330, 'CO', 'Puerto Salgar', 'Puerto Salgar', 5.46304, -74.6544, 'P', 'PPL', 'CO.33', 'CO.33.25572', 9863, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671346, 'CO', 'Puerto Yuca', 'Puerto Yuca', 2.93833, -73.2083, 'P', 'PPL', 'CO.19', 'CO.19.50590', 5029, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671348, 'CO', 'Puerto Rico', 'Puerto Rico', 1.91417, -75.145, 'P', 'PPLA2', 'CO.08', 'CO.08.18592', 12306, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671418, 'CO', 'Puerto López', 'Puerto Lopez', 4.09912, -72.9565, 'P', 'PPL', 'CO.19', 'CO.19.50573', 16678, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671424, 'CO', 'Puerto Lleras', 'Puerto Lleras', 3.02225, -73.4044, 'P', 'PPL', 'CO.19', 'CO.19.50577', 5076, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671437, 'CO', 'Puerto Leguízamo', 'Puerto Leguizamo', -0.19337, -74.7819, 'P', 'PPL', 'CO.22', 'CO.22.86573', 9098, 'America/Bogota', 1, '2018-01-14 23:00:00', '2018-01-14 23:00:00'),
(3671450, 'CO', 'Inírida', 'Inirida', 3.86528, -67.9239, 'P', 'PPLA', 'CO.15', 'CO.15.94001', 7298, 'America/Bogota', 1, '2017-02-05 23:00:00', '2017-02-05 23:00:00'),
(3671497, 'CO', 'Puerto Colombia', 'Puerto Colombia', 10.9878, -74.9547, 'P', 'PPL', 'CO.04', 'CO.04.08573', 26227, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671519, 'CO', 'Puerto Carreño', 'Puerto Carreno', 6.18903, -67.4859, 'P', 'PPLA', 'CO.31', 'CO.31.99001', 10216, 'America/Bogota', 1, '2018-01-12 23:00:00', '2018-01-12 23:00:00'),
(3671531, 'CO', 'Puerto Boyacá', 'Puerto Boyaca', 5.97584, -74.5884, 'P', 'PPL', 'CO.36', 'CO.36.15572', 27310, 'America/Bogota', 1, '2017-08-29 23:00:00', '2017-08-29 23:00:00'),
(3671540, 'CO', 'Puerto Berrío', 'Puerto Berrio', 6.49156, -74.4033, 'P', 'PPL', 'CO.02', 'CO.02.05579', 33983, 'America/Bogota', 1, '2017-09-02 23:00:00', '2017-09-02 23:00:00'),
(3671549, 'CO', 'Puerto Asís', 'Puerto Asis', 0.51328, -76.5007, 'P', 'PPL', 'CO.22', 'CO.22.86568', 29782, 'America/Bogota', 1, '2016-09-29 23:00:00', '2016-09-29 23:00:00'),
(3671591, 'CO', 'Puente Nacional', 'Puente Nacional', 5.87739, -73.6781, 'P', 'PPL', 'CO.26', 'CO.26.68572', 5774, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671615, 'CO', 'Puebloviejo', 'Puebloviejo', 10.9938, -74.2844, 'P', 'PPL', 'CO.38', 'CO.38.47570', 13523, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671630, 'CO', 'Pueblorrico', 'Pueblorrico', 5.79176, -75.841, 'P', 'PPL', 'CO.02', 'CO.02.05576', 5327, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671655, 'CO', 'Pueblo Nuevo', 'Pueblo Nuevo', 8.2411, -74.9582, 'P', 'PPL', 'CO.12', 'CO.12.23068', 9075, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671772, 'CO', 'Pradera', 'Pradera', 3.42111, -76.2447, 'P', 'PPL', 'CO.29', 'CO.29.76563', 44630, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671916, 'CO', 'Popayán', 'Popayan', 2.43823, -76.6132, 'P', 'PPLA', 'CO.09', 'CO.09.19001', 258653, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671936, 'CO', 'Ponedera', 'Ponedera', 10.641, -74.7503, 'P', 'PPL', 'CO.04', 'CO.04.08560', 11221, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3671950, 'CO', 'Polonuevo', 'Polonuevo', 10.777, -74.8534, 'P', 'PPL', 'CO.04', 'CO.04.08558', 11727, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672068, 'CO', 'Planeta Rica', 'Planeta Rica', 8.4115, -75.5851, 'P', 'PPL', 'CO.12', 'CO.12.23555', 37297, 'America/Bogota', 1, '2014-12-09 23:00:00', '2014-12-09 23:00:00'),
(3672077, 'CO', 'Planadas', 'Planadas', 3.19698, -75.6451, 'P', 'PPL', 'CO.28', 'CO.28.73555', 9709, 'America/Bogota', 1, '2017-06-06 23:00:00', '2017-06-06 23:00:00'),
(3672086, 'CO', 'Pizarro', 'Pizarro', 4.95334, -77.366, 'P', 'PPL', 'CO.11', 'CO.11.27077', 6168, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672087, 'CO', 'Francisco Pizarro', 'Francisco Pizarro', 2.10194, -78.7217, 'P', 'PPL', 'CO.20', NULL, 6105, 'America/Bogota', 1, '2012-01-18 23:00:00', '2012-01-18 23:00:00'),
(3672093, 'CO', 'Pivijay', 'Pivijay', 10.4617, -74.6162, 'P', 'PPL', 'CO.38', 'CO.38.47551', 33492, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672110, 'CO', 'Pitalito', 'Pitalito', 1.85371, -76.0507, 'P', 'PPL', 'CO.16', 'CO.16.41551', 53685, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3672197, 'CO', 'Pinillos', 'Pinillos', 8.91925, -74.4677, 'P', 'PPL', 'CO.35', 'CO.35.13549', 6218, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672249, 'CO', 'Pijiño', 'Pijino', 9.32908, -74.453, 'P', 'PPL', 'CO.38', 'CO.38.47545', 5390, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672255, 'CO', 'Pijao', 'Pijao', 4.33419, -75.7035, 'P', 'PPL', 'CO.23', 'CO.23.63548', 5668, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672328, 'CO', 'Piedecuesta', 'Piedecuesta', 6.98789, -73.0495, 'P', 'PPL', 'CO.26', 'CO.26.68547', 86387, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672428, 'CO', 'Pesca', 'Pesca', 5.55, -73.05, 'P', 'PPL', 'CO.36', 'CO.36.15542', 5113, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672486, 'CO', 'Pereira', 'Pereira', 4.81333, -75.6961, 'P', 'PPLA', 'CO.24', 'CO.24.66001', 440118, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672521, 'CO', 'Pensilvania', 'Pensilvania', 5.38346, -75.1612, 'P', 'PPL', 'CO.37', 'CO.37.17541', 8173, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672599, 'CO', 'Pelaya', 'Pelaya', 8.68819, -73.6645, 'P', 'PPL', 'CO.10', 'CO.10.20550', 11306, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672761, 'CO', 'Patía', 'Patia', 2.06895, -77.0527, 'P', 'PPL', 'CO.09', 'CO.09.19532', 20807, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3672778, 'CO', 'Pasto', 'Pasto', 1.21361, -77.2811, 'P', 'PPLA', 'CO.20', 'CO.20.52001', 382236, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673045, 'CO', 'Pamplona', 'Pamplona', 7.37565, -72.6479, 'P', 'PPL', 'CO.21', 'CO.21.54518', 53587, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673164, 'CO', 'Palmira', 'Palmira', 3.53944, -76.3036, 'P', 'PPL', 'CO.29', 'CO.29.76520', 247986, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673220, 'CO', 'Palmar de Varela', 'Palmar de Varela', 10.7406, -74.7544, 'P', 'PPL', 'CO.04', 'CO.04.08520', 28084, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673269, 'CO', 'Palestina', 'Palestina', 5.0194, -75.6224, 'P', 'PPL', 'CO.37', 'CO.37.17524', 7865, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673286, 'CO', 'Palermo', 'Palermo', 2.89167, -75.4375, 'P', 'PPL', 'CO.16', 'CO.16.41524', 9896, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673369, 'CO', 'Paipa', 'Paipa', 5.78013, -73.1171, 'P', 'PPL', 'CO.36', 'CO.36.15516', 13554, 'America/Bogota', 1, '2017-09-09 23:00:00', '2017-09-09 23:00:00'),
(3673379, 'CO', 'Pailitas', 'Pailitas', 8.95652, -73.6255, 'P', 'PPL', 'CO.10', 'CO.10.20517', 10480, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673398, 'CO', 'Belalcazar', 'Belalcazar', 2.65472, -75.9928, 'P', 'PPL', 'CO.09', 'CO.09.19517', 31800, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673413, 'CO', 'Pácora', 'Pacora', 5.52708, -75.4593, 'P', 'PPL', 'CO.37', 'CO.37.17513', 8218, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673424, 'CO', 'Pacho', 'Pacho', 5.13278, -74.1598, 'P', 'PPL', 'CO.33', 'CO.33.25513', 16698, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673455, 'CO', 'Ovejas', 'Ovejas', 9.53248, -75.2238, 'P', 'PPL', 'CO.27', 'CO.27.70508', 13284, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673511, 'CO', 'Ortega', 'Ortega', 3.9361, -75.2217, 'P', 'PPL', 'CO.28', 'CO.28.73504', 6871, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673609, 'CO', 'Olaya Herrera', 'Olaya Herrera', 1.24803, -77.4909, 'P', 'PPL', 'CO.20', 'CO.20.52207', 9820, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673662, 'CO', 'Ocaña', 'Ocana', 8.23773, -73.356, 'P', 'PPL', 'CO.21', 'CO.21.54498', 83511, 'America/Bogota', 1, '2017-09-11 23:00:00', '2017-09-11 23:00:00'),
(3673676, 'CO', 'Obando', 'Obando', 4.57583, -75.9739, 'P', 'PPLA2', 'CO.29', 'CO.29.76497', 7298, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673811, 'CO', 'Norcasia', 'Norcasia', 5.57782, -74.8852, 'P', 'PPL', 'CO.37', 'CO.37.17495', 5976, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673887, 'CO', 'Nemocón', 'Nemocon', 5.05, -73.8833, 'P', 'PPL', 'CO.33', 'CO.33.25486', 5466, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673899, 'CO', 'Neiva', 'Neiva', 2.9273, -75.2819, 'P', 'PPLA', 'CO.16', 'CO.16.41001', 352855, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673902, 'CO', 'Neira', 'Neira', 5.1665, -75.52, 'P', 'PPL', 'CO.37', 'CO.37.17486', 11755, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3673974, 'CO', 'Necoclí', 'Necocli', 8.42627, -76.7893, 'P', 'PPL', 'CO.02', 'CO.02.05490', 10835, 'America/Bogota', 1, '2017-09-09 23:00:00', '2017-09-09 23:00:00'),
(3673976, 'CO', 'Nechí', 'Nechi', 8.09419, -74.7757, 'P', 'PPL', 'CO.02', 'CO.02.05495', 6693, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674010, 'CO', 'Natagaima', 'Natagaima', 3.62057, -75.0941, 'P', 'PPL', 'CO.28', 'CO.28.73483', 11217, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674121, 'CO', 'Muzo', 'Muzo', 5.53528, -74.1078, 'P', 'PPL', 'CO.36', 'CO.36.15480', 7977, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674292, 'CO', 'Mosquera', 'Mosquera', 4.70592, -74.2302, 'P', 'PPL', 'CO.33', 'CO.33.25473', 27005, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674412, 'CO', 'Morales', 'Morales', 8.2752, -73.8688, 'P', 'PPL', 'CO.35', 'CO.35.13473', 20375, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674453, 'CO', 'Montería', 'Monteria', 8.74798, -75.8814, 'P', 'PPLA', 'CO.12', 'CO.12.23001', 272420, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674463, 'CO', 'Montenegro', 'Montenegro', 4.56639, -75.7511, 'P', 'PPL', 'CO.23', 'CO.23.63470', 36499, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674470, 'CO', 'Montelíbano', 'Montelibano', 7.97917, -75.4202, 'P', 'PPL', 'CO.12', 'CO.12.23466', 85000, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674499, 'CO', 'Montecristo', 'Montecristo', 8.2971, -74.4733, 'P', 'PPL', 'CO.35', 'CO.35.13458', 5608, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674569, 'CO', 'Moñitos', 'Monitos', 8.25, -76.05, 'P', 'PPL', 'CO.12', 'CO.12.23807', 5385, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674572, 'CO', 'Moniquirá', 'Moniquira', 5.87638, -73.5728, 'P', 'PPL', 'CO.36', 'CO.36.15469', 9785, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674597, 'CO', 'Mompós', 'Mompos', 9.24194, -74.4267, 'P', 'PPL', 'CO.35', 'CO.35.13468', 30861, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674603, 'CO', 'Momil', 'Momil', 9.23767, -75.6749, 'P', 'PPL', 'CO.12', 'CO.12.23464', 6441, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674654, 'CO', 'Mocoa', 'Mocoa', 1.15284, -76.6521, 'P', 'PPLA', 'CO.22', 'CO.22.86001', 22035, 'America/Bogota', 1, '2015-11-24 23:00:00', '2015-11-24 23:00:00'),
(3674676, 'CO', 'Mitú', 'Mitu', 1.25778, -70.2347, 'P', 'PPLA', 'CO.30', 'CO.30.97001', 5917, 'America/Bogota', 1, '2017-03-03 23:00:00', '2017-03-03 23:00:00'),
(3674678, 'CO', 'Mistrató', 'Mistrato', 5.29622, -75.8839, 'P', 'PPL', 'CO.24', 'CO.24.66456', 6263, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674702, 'CO', 'Miranda', 'Miranda', 3.24991, -76.2281, 'P', 'PPLA2', 'CO.09', 'CO.09.19455', 13223, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674885, 'CO', 'Melgar', 'Melgar', 4.20475, -74.6407, 'P', 'PPL', 'CO.28', 'CO.28.73449', 25980, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3674962, 'CO', 'Medellín', 'Medellin', 6.25184, -75.5636, 'P', 'PPLA', 'CO.02', 'CO.02.05001', 1999979, 'America/Bogota', 1, '2016-03-22 23:00:00', '2016-03-22 23:00:00'),
(3675212, 'CO', 'Marsella', 'Marsella', 4.93722, -75.7378, 'P', 'PPL', 'CO.24', 'CO.24.66440', 11158, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675234, 'CO', 'Marquetalia', 'Marquetalia', 5.29659, -75.055, 'P', 'PPL', 'CO.37', 'CO.37.17444', 6224, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675252, 'CO', 'Mariquita', 'Mariquita', 5.19889, -74.893, 'P', 'PPL', 'CO.28', 'CO.28.73443', 23104, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675263, 'CO', 'Marinilla', 'Marinilla', 6.17358, -75.3362, 'P', 'PPL', 'CO.02', 'CO.02.05440', 24171, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675287, 'CO', 'María la Baja', 'Maria la Baja', 9.9832, -75.3016, 'P', 'PPL', 'CO.35', 'CO.35.13442', 23401, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675409, 'CO', 'Manzanares', 'Manzanares', 5.32472, -75.1569, 'P', 'PPL', 'CO.37', 'CO.37.17541', 16278, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675443, 'CO', 'Manizales', 'Manizales', 5.06889, -75.5174, 'P', 'PPLA', 'CO.37', 'CO.37.17001', 357814, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675452, 'CO', 'Maní', 'Mani', 4.81722, -72.2886, 'P', 'PPL', 'CO.32', 'CO.32.85139', 7031, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675504, 'CO', 'Manaure', 'Manaure', 11.7751, -72.4445, 'P', 'PPL', 'CO.17', 'CO.17.44560', 9703, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675512, 'CO', 'Manatí', 'Manati', 10.4459, -74.9587, 'P', 'PPL', 'CO.04', 'CO.04.08436', 14140, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675595, 'CO', 'Malambo', 'Malambo', 10.8595, -74.7739, 'P', 'PPL', 'CO.04', 'CO.04.08433', 101534, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675605, 'CO', 'Málaga', 'Malaga', 6.69903, -72.7323, 'P', 'PPL', 'CO.26', 'CO.26.68432', 18739, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675637, 'CO', 'Majagual', 'Majagual', 8.53886, -74.6204, 'P', 'PPL', 'CO.27', 'CO.27.70429', 11139, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675657, 'CO', 'Maicao', 'Maicao', 11.3832, -72.2432, 'P', 'PPL', 'CO.17', 'CO.17.44430', 130348, 'America/Bogota', 1, '2016-08-24 23:00:00', '2016-08-24 23:00:00'),
(3675668, 'CO', 'Mahates', 'Mahates', 10.2329, -75.1898, 'P', 'PPL', 'CO.35', 'CO.35.13433', 9224, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675692, 'CO', 'Magangué', 'Magangue', 9.24202, -74.7547, 'P', 'PPL', 'CO.35', 'CO.35.13430', 100313, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675707, 'CO', 'Madrid', 'Madrid', 4.73245, -74.2642, 'P', 'PPL', 'CO.33', 'CO.33.25430', 50437, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675826, 'CO', 'Luruaco', 'Luruaco', 10.6171, -75.1515, 'P', 'PPL', 'CO.04', 'CO.04.08421', 13236, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675975, 'CO', 'Los Patios', 'Los Patios', 7.83793, -72.5037, 'P', 'PPL', 'CO.21', 'CO.21.54405', 58661, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3675987, 'CO', 'Los Palmitos', 'Los Palmitos', 9.37899, -75.2677, 'P', 'PPL', 'CO.27', 'CO.27.70418', 14385, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676397, 'CO', 'Lorica', 'Lorica', 9.23648, -75.8135, 'P', 'PPL', 'CO.12', 'CO.12.23417', 40605, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676604, 'CO', 'Líbano', 'Libano', 4.9218, -75.0623, 'P', 'PPL', 'CO.28', 'CO.28.73411', 28211, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676623, 'CO', 'Leticia', 'Leticia', -4.21528, -69.9406, 'P', 'PPLA', 'CO.01', 'CO.01.91001', 29666, 'America/Bogota', 1, '2016-02-29 23:00:00', '2016-02-29 23:00:00'),
(3676626, 'CO', 'Lérida', 'Lerida', 4.86242, -74.9098, 'P', 'PPL', 'CO.28', 'CO.28.73408', 20069, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676674, 'CO', 'Lebrija', 'Lebrija', 7.11317, -73.2178, 'P', 'PPL', 'CO.26', 'CO.26.68406', 8949, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676720, 'CO', 'La Virginia', 'La Virginia', 4.89972, -75.8825, 'P', 'PPL', 'CO.24', 'CO.24.66400', 33835, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676791, 'CO', 'La Victoria', 'La Victoria', 4.52483, -76.0392, 'P', 'PPL', 'CO.29', 'CO.29.76403', 11064, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3676864, 'CO', 'La Vega', 'La Vega', 5.00177, -74.3417, 'P', 'PPL', 'CO.33', 'CO.33.25402', 5706, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3676923, 'CO', 'La Unión', 'La Union', 5.97431, -75.362, 'P', 'PPL', 'CO.02', 'CO.02.05400', 8361, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676928, 'CO', 'La Unión', 'La Union', 4.53282, -76.1032, 'P', 'PPLA2', 'CO.29', 'CO.29.76400', 23459, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3676934, 'CO', 'La Unión', 'La Union', 1.6045, -77.1315, 'P', 'PPL', 'CO.20', 'CO.20.52399', 15061, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3677010, 'CO', 'La Tebaida', 'La Tebaida', 4.45265, -75.7875, 'P', 'PPLA2', 'CO.23', 'CO.23.63401', 27098, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678097, 'CO', 'La Plata', 'La Plata', 2.39341, -75.8923, 'P', 'PPL', 'CO.16', 'CO.16.41396', 19275, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678118, 'CO', 'La Pintada', 'La Pintada', 5.74867, -75.6063, 'P', 'PPL', 'CO.02', 'CO.02.05390', 5342, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678186, 'CO', 'La Paz', 'La Paz', 10.3844, -73.1733, 'P', 'PPL', 'CO.10', 'CO.10.20621', 13249, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678405, 'CO', 'La Mesa', 'La Mesa', 5.26667, -73.9167, 'P', 'PPL', 'CO.33', 'CO.33.25154', 26699, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678674, 'CO', 'La Jagua de Ibirico', 'La Jagua de Ibirico', 9.56228, -73.3341, 'P', 'PPL', 'CO.10', 'CO.10.20400', 18555, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3678907, 'CO', 'La Gloria', 'La Gloria', 8.61868, -73.8027, 'P', 'PPL', 'CO.10', 'CO.10.20383', 6810, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3679065, 'CO', 'La Estrella', 'La Estrella', 6.15769, -75.6432, 'P', 'PPL', 'CO.02', 'CO.02.05380', 49386, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3679277, 'CO', 'La Dorada', 'La Dorada', 5.44783, -74.6631, 'P', 'PPL', 'CO.37', 'CO.37.17380', 81950, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3679379, 'CO', 'La Cruz', 'La Cruz', 1.60301, -76.969, 'P', 'PPL', 'CO.09', NULL, 8751, 'America/Bogota', 1, '2012-01-18 23:00:00', '2012-01-18 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(3679554, 'CO', 'La Ceja', 'La Ceja', 6.03131, -75.4333, 'P', 'PPLA2', 'CO.02', 'CO.02.05376', 36584, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3679660, 'CO', 'La Calera', 'La Calera', 4.72069, -73.9693, 'P', 'PPL', 'CO.33', 'CO.33.25377', 10175, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680176, 'CO', 'Juan de Acosta', 'Juan de Acosta', 10.8281, -75.0334, 'P', 'PPL', 'CO.04', 'CO.04.08372', 8655, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680317, 'CO', 'Jericó', 'Jerico', 5.79211, -75.786, 'P', 'PPL', 'CO.02', 'CO.02.05368', 7750, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680366, 'CO', 'Jardín', 'Jardin', 5.59902, -75.8198, 'P', 'PPL', 'CO.02', 'CO.02.05364', 7747, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680387, 'CO', 'Jamundí', 'Jamundi', 3.26074, -76.535, 'P', 'PPLA2', 'CO.29', 'CO.29.76364', 44833, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680434, 'CO', 'Ituango', 'Ituango', 7.17117, -75.764, 'P', 'PPL', 'CO.02', 'CO.02.05361', 10769, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680450, 'CO', 'Itagüí', 'Itaguei', 6.18461, -75.5991, 'P', 'PPL', 'CO.02', 'CO.02.05360', 281853, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680453, 'CO', 'Istmina', 'Istmina', 5.16054, -76.684, 'P', 'PPL', 'CO.11', 'CO.11.27361', 13788, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680539, 'CO', 'Ipiales', 'Ipiales', 0.83018, -77.6496, 'P', 'PPL', 'CO.20', 'CO.20.52356', 77729, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3680656, 'CO', 'Ibagué', 'Ibague', 4.43889, -75.2322, 'P', 'PPLA', 'CO.28', 'CO.28.73001', 421685, 'America/Bogota', 1, '2017-02-12 23:00:00', '2017-02-12 23:00:00'),
(3680840, 'CO', 'Honda', 'Honda', 5.20856, -74.7358, 'P', 'PPL', 'CO.28', 'CO.28.73349', 28158, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681356, 'CO', 'Guateque', 'Guateque', 5.00619, -73.4727, 'P', 'PPL', 'CO.36', 'CO.36.15322', 7069, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681368, 'CO', 'Guatapé', 'Guatape', 6.23429, -75.1634, 'P', 'PPL', 'CO.02', 'CO.02.05321', 5389, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681429, 'CO', 'Guarne', 'Guarne', 6.28046, -75.4435, 'P', 'PPL', 'CO.02', 'CO.02.05318', 14270, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681505, 'CO', 'Guapi', 'Guapi', 2.57082, -77.8854, 'P', 'PPL', 'CO.09', 'CO.09.19318', 13853, 'America/Bogota', 1, '2018-01-10 23:00:00', '2018-01-10 23:00:00'),
(3681563, 'CO', 'Guamo', 'Guamo', 4.03078, -74.9701, 'P', 'PPL', 'CO.28', 'CO.28.73319', 14881, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681596, 'CO', 'Guamal', 'Guamal', 9.14334, -74.2238, 'P', 'PPL', 'CO.38', 'CO.38.47318', 9016, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681605, 'CO', 'Guamal', 'Guamal', 3.88043, -73.7657, 'P', 'PPL', 'CO.19', 'CO.19.50318', 5026, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681644, 'CO', 'Guaitarilla', 'Guaitarilla', 1.13103, -77.5481, 'P', 'PPL', 'CO.20', 'CO.20.52320', 6280, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681702, 'CO', 'Guaduas', 'Guaduas', 5.06692, -74.595, 'P', 'PPL', 'CO.33', 'CO.33.25320', 14392, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681797, 'CO', 'Guacarí', 'Guacari', 3.76383, -76.3329, 'P', 'PPL', 'CO.29', 'CO.29.76318', 19637, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681952, 'CO', 'Granada', 'Granada', 6.14353, -75.1853, 'P', 'PPL', 'CO.02', 'CO.02.05313', 5661, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681957, 'CO', 'Granada', 'Granada', 3.54625, -73.7069, 'P', 'PPL', 'CO.19', 'CO.19.50313', 32365, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3681990, 'CO', 'González', 'Gonzalez', 8.38944, -73.3799, 'P', 'PPL', 'CO.10', 'CO.10.20310', 5634, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682018, 'CO', 'Girón', 'Giron', 7.0682, -73.1698, 'P', 'PPL', 'CO.26', 'CO.26.68307', 108466, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682028, 'CO', 'Girardot City', 'Girardot City', 4.30079, -74.8075, 'P', 'PPL', 'CO.33', 'CO.33.25307', 130289, 'America/Bogota', 1, '2014-09-28 23:00:00', '2014-09-28 23:00:00'),
(3682039, 'CO', 'Ginebra', 'Ginebra', 3.72461, -76.2667, 'P', 'PPL', 'CO.29', 'CO.29.76306', 6088, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682047, 'CO', 'Gigante', 'Gigante', 2.38678, -75.5474, 'P', 'PPL', 'CO.16', 'CO.16.41306', 9829, 'America/Bogota', 1, '2015-02-12 23:00:00', '2015-02-12 23:00:00'),
(3682068, 'CO', 'Génova', 'Genova', 4.31667, -75.7667, 'P', 'PPL', 'CO.23', 'CO.23.63548', 7140, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682108, 'CO', 'Garzón', 'Garzon', 2.19593, -75.6278, 'P', 'PPL', 'CO.16', 'CO.16.41298', 29451, 'America/Bogota', 1, '2017-06-20 23:00:00', '2017-06-20 23:00:00'),
(3682160, 'CO', 'Garagoa', 'Garagoa', 5.08236, -73.3633, 'P', 'PPL', 'CO.36', 'CO.36.15299', 11102, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682182, 'CO', 'Gamarra', 'Gamarra', 8.32279, -73.7427, 'P', 'PPL', 'CO.10', 'CO.10.20295', 7327, 'America/Bogota', 1, '2017-09-04 23:00:00', '2017-09-04 23:00:00'),
(3682232, 'CO', 'Galeras', 'Galeras', 9.16095, -75.0481, 'P', 'PPL', 'CO.27', 'CO.27.70235', 9459, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682238, 'CO', 'Galapa', 'Galapa', 10.8969, -74.886, 'P', 'PPL', 'CO.04', 'CO.04.08296', 19732, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682274, 'CO', 'Fusagasuga', 'Fusagasuga', 4.33646, -74.3638, 'P', 'PPL', 'CO.33', 'CO.33.25290', 88820, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682281, 'CO', 'Funza', 'Funza', 4.71638, -74.212, 'P', 'PPL', 'CO.33', 'CO.33.25286', 54421, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682292, 'CO', 'Fundación', 'Fundacion', 10.5207, -74.185, 'P', 'PPL', 'CO.38', 'CO.38.47288', 59175, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682313, 'CO', 'Frontino', 'Frontino', 6.77133, -76.1332, 'P', 'PPL', 'CO.02', 'CO.02.05284', 8603, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682330, 'CO', 'Fresno', 'Fresno', 5.15264, -75.0362, 'P', 'PPL', 'CO.28', 'CO.28.73283', 17668, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682374, 'CO', 'Fonseca', 'Fonseca', 10.8861, -72.8487, 'P', 'PPL', 'CO.17', 'CO.17.44279', 23509, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682380, 'CO', 'Fómeque', 'Fomeque', 4.48797, -73.8975, 'P', 'PPL', 'CO.33', 'CO.33.25279', 5389, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682385, 'CO', 'Floridablanca', 'Floridablanca', 7.06222, -73.0864, 'P', 'PPL', 'CO.26', 'CO.26.68276', 252267, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682393, 'CO', 'Florida', 'Florida', 3.3223, -76.2348, 'P', 'PPL', 'CO.29', 'CO.29.76275', 47173, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682426, 'CO', 'Florencia', 'Florencia', 1.61438, -75.6062, 'P', 'PPLA', 'CO.08', 'CO.08.18001', 130337, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682458, 'CO', 'Flandes', 'Flandes', 4.29005, -74.8161, 'P', 'PPL', 'CO.28', 'CO.28.73275', 20919, 'America/Bogota', 1, '2014-09-28 23:00:00', '2014-09-28 23:00:00'),
(3682473, 'CO', 'Filandia', 'Filandia', 4.67472, -75.6583, 'P', 'PPL', 'CO.23', 'CO.23.63272', 6851, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682481, 'CO', 'Filadelfia', 'Filadelfia', 5.29606, -75.5612, 'P', 'PPL', 'CO.37', 'CO.37.17272', 5064, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682510, 'CO', 'Falan', 'Falan', 5.11564, -74.9489, 'P', 'PPL', 'CO.28', 'CO.28.73270', 5234, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682516, 'CO', 'Facatativá', 'Facatativa', 4.81367, -74.3545, 'P', 'PPL', 'CO.33', 'CO.33.25269', 94611, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682573, 'CO', 'Espinal', 'Espinal', 4.14924, -74.8843, 'P', 'PPL', 'CO.28', 'CO.28.73268', 56213, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682631, 'CO', 'Envigado', 'Envigado', 6.17591, -75.5917, 'P', 'PPL', 'CO.02', 'CO.02.05266', 163007, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682682, 'CO', 'El Zulia', 'El Zulia', 7.93248, -72.6012, 'P', 'PPL', 'CO.21', 'CO.21.54261', 13521, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682963, 'CO', 'El Tambo', 'El Tambo', 2.45199, -76.8103, 'P', 'PPL', 'CO.09', 'CO.09.19256', 6355, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3682965, 'CO', 'El Tambo', 'El Tambo', 1.41814, -77.3968, 'P', 'PPL', 'CO.20', 'CO.20.52260', 7279, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683155, 'CO', 'El Rosal', 'El Rosal', 4.85314, -74.26, 'P', 'PPL', 'CO.33', 'CO.33.25260', 5552, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683233, 'CO', 'El Retén', 'El Reten', 10.6114, -74.2682, 'P', 'PPL', 'CO.38', 'CO.38.47268', 15901, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683463, 'CO', 'El Piñón', 'El Pinon', 10.4028, -74.8242, 'P', 'PPL', 'CO.38', 'CO.38.47258', 7481, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683528, 'CO', 'El Paujil', 'El Paujil', 1.57006, -75.3286, 'P', 'PPL', 'CO.08', 'CO.08.18256', 7618, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683538, 'CO', 'El Paso', 'El Paso', 9.65724, -73.7468, 'P', 'PPL', 'CO.10', 'CO.10.20250', 6367, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3683778, 'CO', 'El Molino', 'El Molino', 10.6523, -72.924, 'P', 'PPL', 'CO.17', 'CO.17.44110', 5265, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684266, 'CO', 'El Dovio', 'El Dovio', 4.5079, -76.2362, 'P', 'PPL', 'CO.29', 'CO.29.76250', 7942, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684276, 'CO', 'El Doncello', 'El Doncello', 1.67817, -75.2847, 'P', 'PPL', 'CO.08', 'CO.08.18247', 13082, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684452, 'CO', 'El Copey', 'El Copey', 10.1503, -73.9614, 'P', 'PPL', 'CO.10', 'CO.10.20238', 18136, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684579, 'CO', 'El Charco', 'El Charco', 2.47691, -78.1105, 'P', 'PPL', 'CO.20', 'CO.20.52250', 28673, 'America/Bogota', 1, '2017-08-03 23:00:00', '2017-08-03 23:00:00'),
(3684615, 'CO', 'El Cerrito', 'El Cerrito', 3.68549, -76.3137, 'P', 'PPL', 'CO.29', 'CO.29.76248', 38390, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684666, 'CO', 'El Carmen de Bolívar', 'El Carmen de Bolivar', 9.7174, -75.1202, 'P', 'PPL', 'CO.35', 'CO.35.13244', 47957, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684683, 'CO', 'El Carmen', 'El Carmen', 8.51064, -73.4478, 'P', 'PPL', 'CO.21', 'CO.21.54245', 5286, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684860, 'CO', 'El Bordo', 'El Bordo', 2.11696, -76.9821, 'P', 'PPL', 'CO.09', 'CO.09.19532', 12072, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684917, 'CO', 'El Banco', 'El Banco', 9.00114, -73.9758, 'P', 'PPL', 'CO.38', 'CO.38.47245', 54522, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3684945, 'CO', 'El Bagre', 'El Bagre', 7.60347, -74.8095, 'P', 'PPL', 'CO.02', 'CO.02.05250', 40798, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685084, 'CO', 'Duitama', 'Duitama', 5.8245, -73.0341, 'P', 'PPL', 'CO.36', 'CO.36.15238', 92040, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685095, 'CO', 'Dos Quebradas', 'Dos Quebradas', 4.83916, -75.6673, 'P', 'PPL', 'CO.24', 'CO.24.66170', 179583, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685126, 'CO', 'Don Matías', 'Don Matias', 6.48569, -75.395, 'P', 'PPL', 'CO.02', 'CO.02.05237', 10011, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685292, 'CO', 'Dagua', 'Dagua', 3.65685, -76.6886, 'P', 'PPL', 'CO.29', 'CO.29.76233', 12320, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685295, 'CO', 'Dabeiba', 'Dabeiba', 7.00017, -76.2691, 'P', 'PPL', 'CO.02', 'CO.02.05234', 11548, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685335, 'CO', 'Curumaní', 'Curumani', 9.19992, -73.5427, 'P', 'PPL', 'CO.10', 'CO.10.20228', 22084, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685432, 'CO', 'Cumbal', 'Cumbal', 0.90875, -77.7915, 'P', 'PPL', 'CO.20', 'CO.20.52227', 7529, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685442, 'CO', 'Cumaral', 'Cumaral', 4.2708, -73.4867, 'P', 'PPL', 'CO.19', 'CO.19.50226', 11263, 'America/Bogota', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3685533, 'CO', 'Cúcuta', 'Cucuta', 7.89391, -72.5078, 'P', 'PPLA', 'CO.21', 'CO.21.54001', 721398, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685733, 'CO', 'Cota', 'Cota', 4.80938, -74.098, 'P', 'PPL', 'CO.33', 'CO.33.25214', 7615, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685823, 'CO', 'Corozal', 'Corozal', 9.31505, -75.2928, 'P', 'PPLA2', 'CO.27', 'CO.27.70215', 39800, 'America/Bogota', 1, '2018-01-06 23:00:00', '2018-01-06 23:00:00'),
(3685871, 'CO', 'Corinto', 'Corinto', 3.17301, -76.2627, 'P', 'PPL', 'CO.09', 'CO.09.19212', 16579, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685893, 'CO', 'Córdoba', 'Cordoba', 9.58612, -74.827, 'P', 'PPL', 'CO.35', 'CO.35.13212', 6597, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3685949, 'CO', 'Municipio de Copacabana', 'Municipio de Copacabana', 6.34633, -75.5089, 'P', 'PPL', 'CO.02', 'CO.02.05212', 49169, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686002, 'CO', 'Condoto', 'Condoto', 5.09351, -76.6497, 'P', 'PPL', 'CO.11', 'CO.11.27205', 9897, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686011, 'CO', 'Concordia', 'Concordia', 9.83545, -74.4555, 'P', 'PPL', 'CO.38', 'CO.38.47460', 6624, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686013, 'CO', 'Concordia', 'Concordia', 6.04639, -75.9071, 'P', 'PPL', 'CO.02', 'CO.02.05209', 9324, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686158, 'CO', 'Cocorná', 'Cocorna', 6.0573, -75.1852, 'P', 'PPL', 'CO.02', 'CO.02.05197', 5257, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686196, 'CO', 'Clemencia', 'Clemencia', 10.5665, -75.325, 'P', 'PPL', 'CO.35', 'CO.35.13222', 8775, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686227, 'CO', 'Cisneros', 'Cisneros', 6.53833, -75.0886, 'P', 'PPL', 'CO.02', 'CO.02.05190', 8204, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686233, 'CO', 'Circasia', 'Circasia', 4.61889, -75.6358, 'P', 'PPL', 'CO.23', 'CO.23.63190', 20113, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686255, 'CO', 'Cimitarra', 'Cimitarra', 6.31419, -73.9497, 'P', 'PPL', 'CO.26', 'CO.26.68190', 11267, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686272, 'CO', 'Ciénaga de Oro', 'Cienaga de Oro', 8.87443, -75.6203, 'P', 'PPL', 'CO.12', 'CO.12.23189', 17623, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686279, 'CO', 'Ciénaga', 'Cienaga', 11.007, -74.2477, 'P', 'PPL', 'CO.38', 'CO.38.47189', 88311, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686288, 'CO', 'Cicuco', 'Cicuco', 9.26306, -74.6569, 'P', 'PPL', 'CO.35', 'CO.35.13188', 7662, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686422, 'CO', 'Chocontá', 'Choconta', 5.14468, -73.6858, 'P', 'PPL', 'CO.33', 'CO.33.25183', 7592, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686445, 'CO', 'Chivolo', 'Chivolo', 10.025, -74.6228, 'P', 'PPL', 'CO.38', 'CO.38.47170', 11457, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686479, 'CO', 'Chiriguaná', 'Chiriguana', 9.36238, -73.6031, 'P', 'PPL', 'CO.10', 'CO.10.20178', 15181, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686513, 'CO', 'Chiquinquirá', 'Chiquinquira', 5.61637, -73.8175, 'P', 'PPL', 'CO.36', 'CO.36.15176', 45294, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686540, 'CO', 'Chinú', 'Chinu', 9.10569, -75.3981, 'P', 'PPL', 'CO.12', 'CO.12.23182', 19596, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686561, 'CO', 'Chinchiná', 'Chinchina', 4.9825, -75.6036, 'P', 'PPL', 'CO.37', 'CO.37.17174', 68512, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686574, 'CO', 'Chinácota', 'Chinacota', 7.60731, -72.6011, 'P', 'PPL', 'CO.21', 'CO.21.54172', 9667, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686585, 'CO', 'Chimichagua', 'Chimichagua', 9.25778, -73.8123, 'P', 'PPL', 'CO.10', 'CO.10.20175', 16746, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686636, 'CO', 'Chigorodó', 'Chigorodo', 7.66638, -76.6811, 'P', 'PPL', 'CO.02', 'CO.02.05172', 48443, 'America/Bogota', 1, '2017-08-20 23:00:00', '2017-08-20 23:00:00'),
(3686675, 'CO', 'Chía', 'Chia', 4.85876, -74.0587, 'P', 'PPL', 'CO.33', 'CO.33.25175', 64569, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686793, 'CO', 'Chaparral', 'Chaparral', 3.72315, -75.4832, 'P', 'PPL', 'CO.28', 'CO.28.73168', 19982, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686894, 'CO', 'Cerro de San Antonio', 'Cerro de San Antonio', 10.3258, -74.8693, 'P', 'PPL', 'CO.38', 'CO.38.47161', 7057, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3686922, 'CO', 'Cereté', 'Cerete', 8.88479, -75.7905, 'P', 'PPL', 'CO.12', 'CO.12.23162', 55513, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687025, 'CO', 'Caucasia', 'Caucasia', 7.98654, -75.1935, 'P', 'PPL', 'CO.02', 'CO.02.05154', 58034, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687230, 'CO', 'Cartago', 'Cartago', 4.74639, -75.9117, 'P', 'PPLA2', 'CO.29', 'CO.29.76147', 134827, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687238, 'CO', 'Cartagena', 'Cartagena', 10.3997, -75.5144, 'P', 'PPLA', 'CO.35', 'CO.35.13001', 952024, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687318, 'CO', 'Carmen de Viboral', 'Carmen de Viboral', 6.08236, -75.3351, 'P', 'PPL', 'CO.02', 'CO.02.05148', 21152, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687324, 'CO', 'Carmen de Apicalá', 'Carmen de Apicala', 4.14725, -74.7201, 'P', 'PPL', 'CO.28', 'CO.28.73148', 5640, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687476, 'CO', 'Cáqueza', 'Caqueza', 4.40569, -73.9468, 'P', 'PPL', 'CO.33', 'CO.33.25151', 7958, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687634, 'CO', 'Candelaria', 'Candelaria', 10.4591, -74.8797, 'P', 'PPL', 'CO.04', 'CO.04.08141', 11427, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687644, 'CO', 'Candelaria', 'Candelaria', 3.40671, -76.3482, 'P', 'PPL', 'CO.29', 'CO.29.76130', 23989, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687677, 'CO', 'Cañasgordas', 'Canasgordas', 6.74989, -76.0254, 'P', 'PPL', 'CO.02', 'CO.02.05138', 6026, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687758, 'CO', 'Campo de la Cruz', 'Campo de la Cruz', 10.3781, -74.8836, 'P', 'PPL', 'CO.04', 'CO.04.08137', 22803, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687806, 'CO', 'Campoalegre', 'Campoalegre', 2.68489, -75.3231, 'P', 'PPL', 'CO.16', 'CO.16.41132', 22568, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687880, 'CO', 'Caloto', 'Caloto', 3.03586, -76.4079, 'P', 'PPL', 'CO.09', 'CO.09.19142', 6478, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687925, 'CO', 'Cali', 'Cali', 3.43722, -76.5225, 'P', 'PPLA', 'CO.29', 'CO.29.76001', 2392877, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687952, 'CO', 'Caldas', 'Caldas', 6.09106, -75.6357, 'P', 'PPL', 'CO.02', 'CO.02.05129', 65565, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687964, 'CO', 'Calarcá', 'Calarca', 4.52949, -75.6409, 'P', 'PPL', 'CO.23', 'CO.23.63130', 62170, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3687972, 'CO', 'Calamar', 'Calamar', 10.2511, -74.9146, 'P', 'PPL', 'CO.38', NULL, 9180, 'America/Bogota', 1, '2006-01-16 23:00:00', '2006-01-16 23:00:00'),
(3688006, 'CO', 'Cajicá', 'Cajica', 4.91857, -74.028, 'P', 'PPL', 'CO.33', 'CO.33.25126', 24999, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688021, 'CO', 'Cajamarca', 'Cajamarca', 4.44234, -75.4287, 'P', 'PPL', 'CO.28', 'CO.28.73124', 9309, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688071, 'CO', 'Caicedonia', 'Caicedonia', 4.3324, -75.8267, 'P', 'PPL', 'CO.29', 'CO.29.76122', 32417, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688254, 'CO', 'Bugalagrande', 'Bugalagrande', 4.21207, -76.1556, 'P', 'PPL', 'CO.29', 'CO.29.76113', 12418, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688256, 'CO', 'Buga', 'Buga', 3.90089, -76.2978, 'P', 'PPL', 'CO.29', 'CO.29.76111', 118004, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688397, 'CO', 'Buenavista', 'Buenavista', 9.04963, -76.0028, 'P', 'PPL', 'CO.12', 'CO.12.23417', 5062, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688451, 'CO', 'Buenaventura', 'Buenaventura', 3.8801, -77.0312, 'P', 'PPL', 'CO.29', 'CO.29.76109', 240387, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688452, 'CO', 'Buenaventura', 'Buenaventura', 3.58333, -77, 'P', 'PPL', 'CO.29', 'CO.29.76109', 24842, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688465, 'CO', 'Bucaramanga', 'Bucaramanga', 7.12539, -73.1198, 'P', 'PPLA', 'CO.26', 'CO.26.68001', 571820, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688689, 'CO', 'Bogotá', 'Bogota', 4.60971, -74.0817, 'P', 'PPLC', 'CO.34', 'CO.34.11001', 7674366, 'America/Bogota', 1, '2016-12-27 23:00:00', '2016-12-27 23:00:00'),
(3688840, 'CO', 'Betulia', 'Betulia', 6.11284, -75.9838, 'P', 'PPL', 'CO.02', 'CO.02.05093', 5216, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688928, 'CO', 'Bello', 'Bello', 6.33732, -75.558, 'P', 'PPLA3', 'CO.02', 'CO.02.05088', 392939, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3688989, 'CO', 'Belén de Umbría', 'Belen de Umbria', 5.20087, -75.8687, 'P', 'PPL', 'CO.24', 'CO.24.66088', 15698, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689003, 'CO', 'Belén', 'Belen', 5.98892, -72.9125, 'P', 'PPL', 'CO.36', 'CO.36.15087', 5411, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689012, 'CO', 'Belalcázar', 'Belalcazar', 4.99528, -75.8128, 'P', 'PPL', 'CO.37', 'CO.37.17088', 6367, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689026, 'CO', 'Becerril', 'Becerril', 9.70413, -73.2793, 'P', 'PPL', 'CO.10', 'CO.10.20045', 9002, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689147, 'CO', 'Barranquilla', 'Barranquilla', 10.9685, -74.7813, 'P', 'PPLA', 'CO.04', 'CO.04.08001', 1380425, 'America/Bogota', 1, '2017-10-02 23:00:00', '2017-10-02 23:00:00'),
(3689157, 'CO', 'Barranco de Loba', 'Barranco de Loba', 8.94597, -74.1065, 'P', 'PPL', 'CO.35', 'CO.35.13074', 5933, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689162, 'CO', 'Barrancas', 'Barrancas', 10.9576, -72.7877, 'P', 'PPL', 'CO.17', 'CO.17.44078', 17350, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689169, 'CO', 'Barrancabermeja', 'Barrancabermeja', 7.06528, -73.8547, 'P', 'PPL', 'CO.26', 'CO.26.68081', 191403, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689205, 'CO', 'Barbosa', 'Barbosa', 6.43809, -75.3314, 'P', 'PPL', 'CO.02', 'CO.02.05079', 16707, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689206, 'CO', 'Barbosa', 'Barbosa', 5.93168, -73.6151, 'P', 'PPL', 'CO.26', 'CO.26.68077', 20372, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689228, 'CO', 'Barbacoas', 'Barbacoas', 1.67154, -78.1398, 'P', 'PPL', 'CO.20', 'CO.20.52079', 7633, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689235, 'CO', 'Baranoa', 'Baranoa', 10.7941, -74.9164, 'P', 'PPL', 'CO.04', 'CO.04.08078', 44078, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689292, 'CO', 'Balboa', 'Balboa', 2.03956, -77.2168, 'P', 'PPL', 'CO.09', 'CO.09.19075', 6272, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689381, 'CO', 'Ayapel', 'Ayapel', 8.31372, -75.1398, 'P', 'PPL', 'CO.12', 'CO.12.23068', 22602, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689458, 'CO', 'Astrea', 'Astrea', 9.49828, -73.9759, 'P', 'PPL', 'CO.10', 'CO.10.20032', 8995, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689551, 'CO', 'Guayabal', 'Guayabal', 5.03103, -74.8868, 'P', 'PPL', 'CO.28', 'CO.28.73055', 5339, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689560, 'CO', 'Armenia', 'Armenia', 4.53389, -75.6811, 'P', 'PPLA', 'CO.23', 'CO.23.63001', 315328, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689570, 'CO', 'Arjona', 'Arjona', 10.2544, -75.3439, 'P', 'PPL', 'CO.35', 'CO.35.13052', 50405, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689589, 'CO', 'Ariguaní', 'Ariguani', 10.25, -74, 'P', 'PPL', 'CO.10', 'CO.10.20238', 26246, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689653, 'CO', 'Arenal', 'Arenal', 8.45928, -73.9433, 'P', 'PPL', 'CO.35', 'CO.35.13042', 5346, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689693, 'CO', 'Arboletes', 'Arboletes', 8.85051, -76.4269, 'P', 'PPL', 'CO.02', 'CO.02.05051', 8380, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689709, 'CO', 'Arbeláez', 'Arbelaez', 4.27254, -74.4151, 'P', 'PPL', 'CO.33', 'CO.33.25053', 5252, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689714, 'CO', 'Arauquita', 'Arauquita', 7.02917, -71.4281, 'P', 'PPL', 'CO.03', 'CO.03.81065', 9950, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689718, 'CO', 'Arauca', 'Arauca', 7.08471, -70.7591, 'P', 'PPLA', 'CO.03', 'CO.03.81001', 69264, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689740, 'CO', 'Aranzazu', 'Aranzazu', 5.27123, -75.4904, 'P', 'PPL', 'CO.37', 'CO.37.17050', 9327, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689759, 'CO', 'Aracataca', 'Aracataca', 10.5918, -74.1898, 'P', 'PPL', 'CO.38', 'CO.38.47053', 27704, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689771, 'CO', 'Aquitania', 'Aquitania', 5.51972, -72.8875, 'P', 'PPL', 'CO.36', 'CO.36.15047', 5718, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689793, 'CO', 'Apía', 'Apia', 5.10645, -75.9432, 'P', 'PPL', 'CO.24', 'CO.24.66045', 6940, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689798, 'CO', 'Apartadó', 'Apartado', 7.88299, -76.6259, 'P', 'PPLA2', 'CO.02', 'CO.02.05045', 86438, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689816, 'CO', 'Antioquia', 'Antioquia', 6.55687, -75.8281, 'P', 'PPL', 'CO.02', 'CO.02.05042', 11829, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689831, 'CO', 'Ansermanuevo', 'Ansermanuevo', 4.79722, -75.995, 'P', 'PPL', 'CO.29', 'CO.29.76041', 12332, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689833, 'CO', 'Anserma', 'Anserma', 5.33278, -75.7911, 'P', 'PPL', 'CO.24', 'CO.24.66318', 25242, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689841, 'CO', 'Anolaima', 'Anolaima', 4.83362, -74.4995, 'P', 'PPL', 'CO.33', 'CO.33.25328', 5585, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689899, 'CO', 'Andes', 'Andes', 5.6561, -75.8788, 'P', 'PPL', 'CO.02', 'CO.02.05034', 16419, 'America/Bogota', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3689905, 'CO', 'Andalucía', 'Andalucia', 4.17061, -76.1664, 'P', 'PPL', 'CO.29', 'CO.29.76036', 17432, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3689915, 'CO', 'Ancuya', 'Ancuya', 1.2633, -77.5138, 'P', 'PPL', 'CO.20', 'CO.20.52036', 5852, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690010, 'CO', 'Amalfi', 'Amalfi', 6.91016, -75.0776, 'P', 'PPL', 'CO.02', 'CO.02.05031', 9733, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690019, 'CO', 'Amagá', 'Amaga', 6.04001, -75.7031, 'P', 'PPL', 'CO.02', 'CO.02.05030', 12170, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690160, 'CO', 'Algeciras', 'Algeciras', 2.52385, -75.3173, 'P', 'PPL', 'CO.16', 'CO.16.41020', 10792, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3690172, 'CO', 'Algarrobo', 'Algarrobo', 10.1869, -74.5753, 'P', 'PPL', 'CO.38', 'CO.38.47170', 10042, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690237, 'CO', 'Alcalá', 'Alcala', 4.67472, -75.7825, 'P', 'PPL', 'CO.29', 'CO.29.76020', 9135, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690250, 'CO', 'Albania', 'Albania', 11.161, -72.5924, 'P', 'PPL', 'CO.17', 'CO.17.44035', 6364, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690287, 'CO', 'Aipe', 'Aipe', 3.22222, -75.2367, 'P', 'PPL', 'CO.16', 'CO.16.41016', 7964, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690316, 'CO', 'Aguazul', 'Aguazul', 5.17282, -72.5471, 'P', 'PPL', 'CO.32', 'CO.32.85010', 15669, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690429, 'CO', 'Agua de Dios', 'Agua de Dios', 4.37648, -74.67, 'P', 'PPL', 'CO.33', 'CO.33.25001', 10875, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690431, 'CO', 'Aguadas', 'Aguadas', 5.61161, -75.4562, 'P', 'PPL', 'CO.37', 'CO.37.17013', 19727, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690465, 'CO', 'Aguachica', 'Aguachica', 8.30844, -73.6166, 'P', 'PPL', 'CO.10', 'CO.10.20011', 73360, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690549, 'CO', 'Achí', 'Achi', 8.56818, -74.554, 'P', 'PPL', 'CO.35', 'CO.35.13006', 8434, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690577, 'CO', 'Acacías', 'Acacias', 3.98695, -73.758, 'P', 'PPL', 'CO.19', 'CO.19.50006', 40627, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690584, 'CO', 'Ábrego', 'Abrego', 8.08065, -73.2205, 'P', 'PPL', 'CO.21', 'CO.21.54003', 10822, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690592, 'CO', 'Abejorral', 'Abejorral', 5.78928, -75.4273, 'P', 'PPL', 'CO.02', 'CO.02.05002', 7360, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3690608, 'PE', 'Zorritos', 'Zorritos', -3.68046, -80.6782, 'P', 'PPLA3', 'PE.24', 'PE.24.2402', 12261, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3690654, 'PE', 'Yurimaguas', 'Yurimaguas', -5.90181, -76.1223, 'P', 'PPLA3', 'PE.16', 'PE.16.1602', 41827, 'America/Lima', 1, '2014-07-02 23:00:00', '2014-07-02 23:00:00'),
(3690673, 'PE', 'Yungay', 'Yungay', -9.13833, -77.7436, 'P', 'PPLA3', 'PE.02', 'PE.02.0220', 5269, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3690733, 'PE', 'Yauya', 'Yauya', -8.98333, -77.3, 'P', 'PPLA3', 'PE.02', 'PE.02.0207', 9092, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3690875, 'PE', 'Virú', 'Viru', -8.41554, -78.752, 'P', 'PPL', 'PE.13', 'PE.13.1312', 20774, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3690935, 'PE', 'Vice', 'Vice', -5.41667, -80.7833, 'P', 'PPLA3', 'PE.20', 'PE.20.2008', 12915, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691094, 'PE', 'Uchiza', 'Uchiza', -8.45917, -76.4633, 'P', 'PPLA3', 'PE.22', 'PE.22.2210', 17742, 'America/Lima', 1, '2017-09-03 23:00:00', '2017-09-03 23:00:00'),
(3691148, 'PE', 'Tumbes', 'Tumbes', -3.56694, -80.4515, 'P', 'PPLA', 'PE.24', 'PE.24.2401', 109223, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3691161, 'PE', 'Túcume', 'Tucume', -6.50637, -79.8572, 'P', 'PPL', 'PE.14', 'PE.14.1403', 7043, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3691175, 'PE', 'Trujillo', 'Trujillo', -8.11599, -79.03, 'P', 'PPLA', 'PE.13', 'PE.13.1301', 747450, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691324, 'PE', 'Tocache', 'Tocache', -8.1877, -76.5205, 'P', 'PPL', 'PE.22', 'PE.22.2210', 29029, 'America/Lima', 1, '2014-07-03 23:00:00', '2014-07-03 23:00:00'),
(3691348, 'PE', 'Tingo María', 'Tingo Maria', -9.29532, -75.9957, 'P', 'PPL', 'PE.10', 'PE.10.1006', 53177, 'America/Lima', 1, '2017-11-11 23:00:00', '2017-11-11 23:00:00'),
(3691530, 'PE', 'Tambo Grande', 'Tambo Grande', -4.92694, -80.3447, 'P', 'PPLA3', 'PE.20', 'PE.20.2001', 30033, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691582, 'PE', 'Talara', 'Talara', -4.57722, -81.2719, 'P', 'PPLA3', 'PE.20', 'PE.20.2007', 99074, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691638, 'PE', 'Tabalosos', 'Tabalosos', -6.35, -76.6833, 'P', 'PPLA3', 'PE.22', 'PE.22.2205', 14744, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691674, 'PE', 'Sullana', 'Sullana', -4.90389, -80.6853, 'P', 'PPLA3', 'PE.20', 'PE.20.2006', 160789, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691712, 'PE', 'Soritor', 'Soritor', -6.13917, -77.1039, 'P', 'PPLA3', 'PE.22', 'PE.22.2201', 10858, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3691954, 'PE', 'Sechura', 'Sechura', -5.55694, -80.8222, 'P', 'PPLA3', 'PE.20', 'PE.20.2008', 23020, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3692029, 'PE', 'Saposoa', 'Saposoa', -6.93395, -76.7716, 'P', 'PPLA3', 'PE.22', 'PE.22.2204', 14894, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3692072, 'PE', 'Santiago de Chuco', 'Santiago de Chuco', -8.14099, -78.1733, 'P', 'PPL', 'PE.13', 'PE.13.1310', 6759, 'America/Lima', 1, '2013-04-03 23:00:00', '2013-04-03 23:00:00'),
(3692073, 'PE', 'Santiago de Cao', 'Santiago de Cao', -7.95889, -79.2392, 'P', 'PPL', 'PE.13', 'PE.13.1302', 21982, 'America/Lima', 1, '2014-04-05 23:00:00', '2014-04-05 23:00:00'),
(3692116, 'PE', 'Santa Rosa', 'Santa Rosa', -6.75772, -79.8275, 'P', 'PPL', 'PE.14', 'PE.14.1401', 10625, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3692310, 'PE', 'San Pedro de Lloc', 'San Pedro de Lloc', -7.4289, -79.5042, 'P', 'PPL', 'PE.13', 'PE.13.1307', 16250, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3692464, 'PE', 'Sisa', 'Sisa', -6.61085, -76.693, 'P', 'PPL', 'PE.22', 'PE.22.2203', 9477, 'America/Lima', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3692482, 'PE', 'San José', 'San Jose', -6.73813, -79.8275, 'P', 'PPL', 'PE.14', 'PE.14.1401', 7434, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3692529, 'PE', 'San Ignacio', 'San Ignacio', -5.14583, -79.0014, 'P', 'PPLA3', 'PE.06', 'PE.06.0609', 7912, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3692667, 'PE', 'Saña', 'Sana', -6.91888, -79.582, 'P', 'PPL', 'PE.14', 'PE.14.1401', 39200, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3692727, 'PE', 'Salitral', 'Salitral', -4.85722, -80.6811, 'P', 'PPLA3', 'PE.20', 'PE.20.2006', 5385, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3692729, 'PE', 'Salinera Colán', 'Salinera Colan', -5.03333, -81.0667, 'P', 'PPL', 'PE.20', NULL, 14210, 'America/Lima', 1, '2006-01-16 23:00:00', '2006-01-16 23:00:00'),
(3692747, 'PE', 'Salaverry', 'Salaverry', -8.221, -78.977, 'P', 'PPLA3', 'PE.13', 'PE.13.1301', 10066, 'America/Lima', 1, '2014-04-21 23:00:00', '2014-04-21 23:00:00'),
(3692863, 'PE', 'Rioja', 'Rioja', -6.05675, -77.1665, 'P', 'PPLA3', 'PE.22', 'PE.22.2208', 25057, 'America/Lima', 1, '2014-07-06 23:00:00', '2014-07-06 23:00:00'),
(3692900, 'PE', 'Reque', 'Reque', -6.86556, -79.8178, 'P', 'PPLA3', 'PE.14', 'PE.14.1401', 9808, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3692953, 'PE', 'Ramón Castilla', 'Ramon Castilla', -4.26066, -69.9571, 'P', 'PPL', 'PE.16', 'PE.16.1604', 5495, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3692994, 'PE', 'Quiruvilca', 'Quiruvilca', -7.96667, -78.2, 'P', 'PPL', 'PE.13', 'PE.13.1310', 9226, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693057, 'PE', 'Querecotillo', 'Querecotillo', -4.83778, -80.6456, 'P', 'PPLA3', 'PE.20', 'PE.20.2006', 25396, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693191, 'PE', 'Puerto Santa', 'Puerto Santa', -8.98772, -78.6473, 'P', 'PPL', 'PE.02', 'PE.02.0218', 14066, 'America/Lima', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(3693302, 'PE', 'Pueblo Nuevo', 'Pueblo Nuevo', -7.18806, -79.5153, 'P', 'PPLA3', 'PE.13', 'PE.13.1304', 5766, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693305, 'PE', 'Pueblo Nuevo', 'Pueblo Nuevo', -5.71667, -79.8833, 'P', 'PPL', 'PE.14', 'PE.14.1403', 12471, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693345, 'PE', 'Pucallpa', 'Pucallpa', -8.37915, -74.5539, 'P', 'PPLA', 'PE.25', 'PE.25.2501', 310750, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693528, 'PE', 'Piura', 'Piura', -5.19449, -80.6328, 'P', 'PPLA', 'PE.20', 'PE.20.2001', 325466, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3693584, 'PE', 'Pimentel', 'Pimentel', -6.83667, -79.9342, 'P', 'PPLA3', 'PE.14', 'PE.14.1401', 15552, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693645, 'PE', 'Picsi', 'Picsi', -6.71778, -79.7697, 'P', 'PPLA3', 'PE.14', 'PE.14.1401', 43610, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3693646, 'PE', 'Picota', 'Picota', -6.92033, -76.3314, 'P', 'PPLA3', 'PE.22', 'PE.22.2207', 6697, 'America/Lima', 1, '2015-06-22 23:00:00', '2015-06-22 23:00:00'),
(3694112, 'PE', 'Paita', 'Paita', -5.08917, -81.1144, 'P', 'PPLA3', 'PE.20', 'PE.20.2005', 56151, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694119, 'PE', 'Paiján', 'Paijan', -7.73291, -79.3015, 'P', 'PPL', 'PE.13', 'PE.13.1302', 21128, 'America/Lima', 1, '2013-04-03 23:00:00', '2013-04-03 23:00:00'),
(3694178, 'PE', 'Pacasmayo', 'Pacasmayo', -7.40056, -79.5714, 'P', 'PPLA3', 'PE.13', 'PE.13.1307', 29165, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694183, 'PE', 'Pacanga', 'Pacanga', -7.16667, -79.5, 'P', 'PPLA3', 'PE.13', 'PE.13.1304', 8750, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694197, 'PE', 'Oyotún', 'Oyotun', -6.84438, -79.3009, 'P', 'PPL', 'PE.14', 'PE.14.1401', 6330, 'America/Lima', 1, '2015-08-06 23:00:00', '2015-08-06 23:00:00'),
(3694212, 'PE', 'Otuzco', 'Otuzco', -7.9, -78.5833, 'P', 'PPLA3', 'PE.13', 'PE.13.1306', 10134, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694256, 'PE', 'Olmos', 'Olmos', -5.98472, -79.7453, 'P', 'PPLA3', 'PE.14', 'PE.14.1403', 9800, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694564, 'PE', 'Moyobamba', 'Moyobamba', -6.03416, -76.9717, 'P', 'PPLA', 'PE.22', 'PE.22.2201', 44276, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3694569, 'PE', 'Motupe', 'Motupe', -6.15194, -79.7142, 'P', 'PPLA3', 'PE.14', 'PE.14.1403', 13681, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694582, 'PE', 'Morropón', 'Morropon', -5.1868, -79.9708, 'P', 'PPL', 'PE.20', 'PE.20.2004', 12307, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3694586, 'PE', 'Mórrope', 'Morrope', -6.53536, -80.011, 'P', 'PPL', 'PE.14', 'PE.14.1403', 6662, 'America/Lima', 1, '2016-01-06 23:00:00', '2016-01-06 23:00:00'),
(3694666, 'PE', 'Monsefú', 'Monsefu', -6.87431, -79.8687, 'P', 'PPL', 'PE.14', 'PE.14.1401', 25707, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3694720, 'PE', 'Mochumí', 'Mochumi', -6.54364, -79.8622, 'P', 'PPL', 'PE.14', 'PE.14.1403', 7460, 'America/Lima', 1, '2015-12-05 23:00:00', '2015-12-05 23:00:00'),
(3694725, 'PE', 'Moche', 'Moche', -8.17111, -79.0092, 'P', 'PPLA3', 'PE.13', 'PE.13.1301', 22581, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3694939, 'PE', 'Marcavelica', 'Marcavelica', -4.87778, -80.7053, 'P', 'PPLA3', 'PE.20', 'PE.20.2006', 25645, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695000, 'PE', 'Máncora', 'Mancora', -4.10778, -81.0475, 'P', 'PPL', 'PE.20', 'PE.20.2007', 9101, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695466, 'PE', 'La Unión', 'La Union', -5.40232, -80.7422, 'P', 'PPL', 'PE.20', 'PE.20.2001', 34834, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3695552, 'PE', 'Las Lomas', 'Las Lomas', -4.65333, -80.2467, 'P', 'PPLA3', 'PE.20', 'PE.20.2001', 9450, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695617, 'PE', 'Laredo', 'Laredo', -8.08965, -78.9602, 'P', 'PPLA3', 'PE.13', 'PE.13.1301', 24691, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695675, 'PE', 'La Peca', 'La Peca', -5.61111, -78.435, 'P', 'PPLA3', 'PE.01', 'PE.01.0102', 27045, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695754, 'PE', 'Lambayeque', 'Lambayeque', -6.70111, -79.9061, 'P', 'PPLA3', 'PE.14', 'PE.14.1403', 43710, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695757, 'PE', 'Lamas', 'Lamas', -6.41667, -76.5333, 'P', 'PPLA3', 'PE.22', 'PE.22.2205', 13693, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695829, 'PE', 'La Huaca', 'La Huaca', -4.91167, -80.96, 'P', 'PPLA3', 'PE.20', 'PE.20.2005', 8468, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3695844, 'PE', 'Lagunas', 'Lagunas', -5.22694, -75.6753, 'P', 'PPLA3', 'PE.16', 'PE.16.1602', 9197, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3696057, 'PE', 'Juanjuí', 'Juanjui', -7.17697, -76.7277, 'P', 'PPL', 'PE.22', 'PE.22.2206', 37715, 'America/Lima', 1, '2017-12-10 23:00:00', '2017-12-10 23:00:00'),
(3696096, 'PE', 'Jepelacio', 'Jepelacio', -6.11667, -76.95, 'P', 'PPLA3', 'PE.22', 'PE.22.2201', 7150, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3696104, 'PE', 'Jayanca', 'Jayanca', -6.39083, -79.8219, 'P', 'PPLA3', 'PE.14', 'PE.14.1403', 6126, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3696150, 'PE', 'Jaén', 'Jaen', -5.70729, -78.8079, 'P', 'PPL', 'PE.06', 'PE.06.0608', 52493, 'America/Lima', 1, '2016-02-05 23:00:00', '2016-02-05 23:00:00'),
(3696183, 'PE', 'Iquitos', 'Iquitos', -3.74912, -73.2538, 'P', 'PPLA', 'PE.16', 'PE.16.1601', 437620, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3696267, 'PE', 'Huicungo', 'Huicungo', -7.3186, -76.7756, 'P', 'PPL', 'PE.22', 'PE.22.2206', 6757, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3696378, 'PE', 'Huaraz', 'Huaraz', -9.52779, -77.5278, 'P', 'PPLA', 'PE.02', 'PE.02.0201', 86934, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3696417, 'PE', 'Huánuco', 'Huanuco', -9.93062, -76.2422, 'P', 'PPLA', 'PE.10', 'PE.10.1001', 147959, 'America/Lima', 1, '2016-12-04 23:00:00', '2016-12-04 23:00:00'),
(3696466, 'PE', 'Huancabamba', 'Huancabamba', -5.23861, -79.4506, 'P', 'PPLA3', 'PE.20', 'PE.20.2003', 8553, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3696509, 'PE', 'Huamachuco', 'Huamachuco', -7.8, -78.0667, 'P', 'PPLA3', 'PE.13', 'PE.13.1309', 21768, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3696847, 'PE', 'Guadalupe', 'Guadalupe', -7.25, -79.4833, 'P', 'PPLA3', 'PE.13', 'PE.13.1307', 25376, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3697033, 'PE', 'Ferreñafe', 'Ferrenafe', -6.63889, -79.7889, 'P', 'PPLA3', 'PE.14', 'PE.14.1402', 34357, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3697083, 'PE', 'Eten', 'Eten', -6.90806, -79.8642, 'P', 'PPLA3', 'PE.14', 'PE.14.1401', 13693, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3697441, 'PE', 'El Alto', 'El Alto', -4.26851, -81.2172, 'P', 'PPL', 'PE.20', 'PE.20.2007', 9303, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3697838, 'PE', 'Contamana', 'Contamana', -7.33333, -75.0167, 'P', 'PPLA3', 'PE.16', 'PE.16.1606', 13885, 'America/Lima', 1, '2014-04-12 23:00:00', '2014-04-12 23:00:00'),
(3697990, 'PE', 'Coishco', 'Coishco', -9.02306, -78.6156, 'P', 'PPLA3', 'PE.02', 'PE.02.0218', 15083, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698105, 'PE', 'Chulucanas', 'Chulucanas', -5.0925, -80.1625, 'P', 'PPLA3', 'PE.20', 'PE.20.2004', 68835, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698141, 'PE', 'Chota', 'Chota', -6.55, -78.65, 'P', 'PPLA3', 'PE.06', 'PE.06.0604', 14240, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698176, 'PE', 'Chongoyape', 'Chongoyape', -6.64056, -79.3892, 'P', 'PPLA3', 'PE.14', 'PE.14.1401', 16061, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698194, 'PE', 'Chocope', 'Chocope', -7.79139, -79.2217, 'P', 'PPLA3', 'PE.13', 'PE.13.1302', 32370, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698304, 'PE', 'Chimbote', 'Chimbote', -9.08528, -78.5783, 'P', 'PPLA3', 'PE.02', 'PE.02.0218', 316966, 'America/Lima', 1, '2017-02-04 23:00:00', '2017-02-04 23:00:00'),
(3698350, 'PE', 'Chiclayo', 'Chiclayo', -6.77137, -79.8409, 'P', 'PPLA', 'PE.14', 'PE.14.1401', 577375, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3698359, 'PE', 'Chicama', 'Chicama', -7.84472, -79.1469, 'P', 'PPLA3', 'PE.13', 'PE.13.1302', 14915, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698390, 'PE', 'Chepén', 'Chepen', -7.22436, -79.4248, 'P', 'PPL', 'PE.13', 'PE.13.1304', 41992, 'America/Lima', 1, '2016-01-06 23:00:00', '2016-01-06 23:00:00'),
(3698414, 'PE', 'Chazuta', 'Chazuta', -6.57087, -76.1375, 'P', 'PPLA3', 'PE.22', 'PE.22.2209', 8029, 'America/Lima', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(3698540, 'PE', 'Chachapoyas', 'Chachapoyas', -6.23169, -77.869, 'P', 'PPLA', 'PE.01', 'PE.01.0101', 20279, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698608, 'PE', 'Celendín', 'Celendin', -6.8659, -78.1459, 'P', 'PPL', 'PE.06', 'PE.06.0603', 14660, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3698658, 'PE', 'Catacaos', 'Catacaos', -5.26667, -80.6833, 'P', 'PPLA3', 'PE.20', 'PE.20.2001', 57304, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698814, 'PE', 'Carhuaz', 'Carhuaz', -9.28194, -77.6447, 'P', 'PPLA3', 'PE.02', 'PE.02.0206', 5044, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3698841, 'PE', 'Carás', 'Caras', -9.04692, -77.809, 'P', 'PPL', 'PE.02', 'PE.02.0212', 10926, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3699078, 'PE', 'Cajaruro', 'Cajaruro', -5.73639, -78.4256, 'P', 'PPLA3', 'PE.01', 'PE.01.0107', 7281, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699088, 'PE', 'Cajamarca', 'Cajamarca', -7.16378, -78.5003, 'P', 'PPLA', 'PE.06', 'PE.06.0601', 135000, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699095, 'PE', 'Cajabamba', 'Cajabamba', -7.61667, -78.05, 'P', 'PPLA3', 'PE.06', 'PE.06.0602', 13486, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699223, 'PE', 'Buenos Aires', 'Buenos Aires', -5.26083, -79.9642, 'P', 'PPLA3', 'PE.20', 'PE.20.2004', 7932, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699350, 'PE', 'Bernal', 'Bernal', -5.45, -80.75, 'P', 'PPLA3', 'PE.20', 'PE.20.2008', 5916, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699364, 'PE', 'Bellavista', 'Bellavista', -7.05614, -76.5911, 'P', 'PPLA3', 'PE.22', 'PE.22.2202', 15231, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699366, 'PE', 'Bellavista', 'Bellavista', -5.66417, -78.6772, 'P', 'PPLA3', 'PE.06', 'PE.06.0608', 6320, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699427, 'PE', 'Barranca', 'Barranca', -4.83298, -76.6758, 'P', 'PPL', 'PE.16', 'PE.16.1607', 5779, 'America/Lima', 1, '2012-09-05 23:00:00', '2012-09-05 23:00:00'),
(3699456, 'PE', 'Bambamarca', 'Bambamarca', -6.68333, -78.5333, 'P', 'PPLA3', 'PE.06', 'PE.06.0607', 13351, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699484, 'PE', 'Bagua Grande', 'Bagua Grande', -5.75611, -78.4411, 'P', 'PPLA3', 'PE.01', 'PE.01.0107', 20382, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699502, 'PE', 'Ayabaca', 'Ayabaca', -4.63983, -79.7149, 'P', 'PPLA3', 'PE.20', 'PE.20.2002', 5270, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3699544, 'PE', 'Ascope', 'Ascope', -7.71444, -79.1078, 'P', 'PPLA3', 'PE.13', 'PE.13.1302', 14015, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(3699832, 'PE', 'Aguas Verdes', 'Aguas Verdes', -3.48139, -80.245, 'P', 'PPLA3', 'PE.24', 'PE.24.2403', 9106, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3732964, 'CO', 'Lejanías', 'Lejanias', 3.52762, -74.0234, 'P', 'PPL', 'CO.19', 'CO.19.50400', 5157, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3733380, 'PE', 'Campoverde', 'Campoverde', -8.47533, -74.8071, 'P', 'PPL', 'PE.25', 'PE.25.2501', 8945, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3733861, 'CO', 'Curillo', 'Curillo', 1.03327, -75.9191, 'P', 'PPL', 'CO.08', 'CO.08.18205', 9539, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3769932, 'CO', 'Monterrey', 'Monterrey', 4.87206, -72.8988, 'P', 'PPL', 'CO.32', 'CO.32.85162', 7759, 'America/Bogota', 1, '2017-09-04 23:00:00', '2017-09-04 23:00:00'),
(3769976, 'CO', 'Puerto Gaitán', 'Puerto Gaitan', 4.31328, -72.0816, 'P', 'PPL', 'CO.19', 'CO.19.50568', 5928, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3770066, 'CO', 'San Luis', 'San Luis', 6.04167, -74.9928, 'P', 'PPL', 'CO.02', 'CO.02.05660', 6448, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3770718, 'CO', 'Morales', 'Morales', 2.75701, -76.6172, 'P', 'PPL', 'CO.09', 'CO.09.19473', 29617, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3770955, 'CO', 'Villa Rica', 'Villa Rica', 2.5142, -76.8494, 'P', 'PPL', 'CO.09', 'CO.09.19256', 9070, 'America/Bogota', 1, '2015-06-16 23:00:00', '2015-06-16 23:00:00'),
(3780602, 'CO', 'Fredonia', 'Fredonia', 5.92583, -75.6706, 'P', 'PPL', 'CO.02', 'CO.02.05282', 8950, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792375, 'CO', 'Carepa', 'Carepa', 7.75849, -76.6525, 'P', 'PPL', 'CO.02', 'CO.02.05147', 20627, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792376, 'CO', 'Ciudad Bolívar', 'Ciudad Bolivar', 5.85389, -76.0253, 'P', 'PPLA2', 'CO.02', 'CO.02.05101', 16225, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792377, 'CO', 'Vegachí', 'Vegachi', 6.76141, -74.7947, 'P', 'PPL', 'CO.02', 'CO.02.05885', 9618, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792378, 'CO', 'Altos del Rosario', 'Altos del Rosario', 8.79444, -74.1658, 'P', 'PPL', 'CO.35', 'CO.35.13030', 5220, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792379, 'CO', 'Santa Rosa del Sur', 'Santa Rosa del Sur', 7.96444, -74.0544, 'P', 'PPL', 'CO.35', 'CO.35.13688', 8904, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792382, 'CO', 'Cartagena del Chairá', 'Cartagena del Chaira', 1.33488, -74.8429, 'P', 'PPL', 'CO.08', 'CO.08.18150', 7586, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792383, 'CO', 'Agustín Codazzi', 'Agustin Codazzi', 10.0367, -73.2356, 'P', 'PPL', 'CO.10', 'CO.10.20013', 51478, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792384, 'CO', 'Manaure Balcón del Cesar', 'Manaure Balcon del Cesar', 10.3928, -73.0325, 'P', 'PPL', 'CO.10', 'CO.10.20443', 7953, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792385, 'CO', 'San Martín', 'San Martin', 8.00151, -73.5113, 'P', 'PPL', 'CO.10', 'CO.10.20770', 7029, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792389, 'CO', 'Isnos', 'Isnos', 1.93556, -76.2406, 'P', 'PPL', 'CO.16', 'CO.16.41359', 5185, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3792392, 'CO', 'Plato', 'Plato', 9.79029, -74.7824, 'P', 'PPL', 'CO.38', 'CO.38.47555', 48606, 'America/Bogota', 1, '2017-01-13 23:00:00', '2017-01-13 23:00:00'),
(3792399, 'CO', 'El Playón', 'El Playon', 7.47131, -73.2031, 'P', 'PPL', 'CO.26', 'CO.26.68255', 5334, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3814568, 'PE', 'La Breita', 'La Breita', -4.25691, -80.886, 'P', 'PPL', 'PE.20', 'PE.20.2006', 17693, 'America/Lima', 1, '2016-01-07 23:00:00', '2016-01-07 23:00:00'),
(3814639, 'PE', 'Papayal', 'Papayal', -4.07771, -80.7369, 'P', 'PPL', 'PE.24', 'PE.24.2402', 5484, 'America/Lima', 1, '2012-10-06 23:00:00', '2012-10-06 23:00:00'),
(3818398, 'PE', 'Zarumilla', 'Zarumilla', -3.50306, -80.2731, 'P', 'PPLA3', 'PE.24', 'PE.24.2403', 16907, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3827723, 'CO', 'Valle del Guamuez', 'Valle del Guamuez', 0.4525, -76.9192, 'P', 'PPL', 'CO.22', 'CO.22.86865', 9969, 'America/Bogota', 1, '2016-01-27 23:00:00', '2016-01-27 23:00:00'),
(3828545, 'CO', 'San José del Guaviare', 'San Jose del Guaviare', 2.57286, -72.6459, 'P', 'PPLA', 'CO.14', 'CO.14.95001', 22136, 'America/Bogota', 1, '2016-11-26 23:00:00', '2016-11-26 23:00:00'),
(3829343, 'CO', 'Orito', 'Orito', 0.66749, -76.873, 'P', 'PPL', 'CO.22', 'CO.22.86320', 13708, 'America/Bogota', 1, '2015-06-20 23:00:00', '2015-06-20 23:00:00'),
(3832132, 'AR', 'Zapala', 'Zapala', -38.8992, -70.0544, 'P', 'PPLA2', 'AR.15', 'AR.15.58112', 31534, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3832189, 'AR', 'Yuto', 'Yuto', -23.6434, -64.4719, 'P', 'PPL', 'AR.10', 'AR.10.38035', 7732, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832260, 'AR', 'Yerba Buena', 'Yerba Buena', -26.8167, -65.3167, 'P', 'PPLA2', 'AR.24', 'AR.24.90119', 50783, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832376, 'AR', 'Yacimiento Río Turbio', 'Yacimiento Rio Turbio', -51.5732, -72.3508, 'P', 'PPL', 'AR.20', 'AR.20.78021', 6650, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832647, 'AR', 'Villa Regina', 'Villa Regina', -39.1, -67.0667, 'P', 'PPL', 'AR.16', 'AR.16.62042', 31209, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832653, 'AR', 'Villa Paula de Sarmiento', 'Villa Paula de Sarmiento', -31.4933, -68.5384, 'P', 'PPL', 'AR.18', 'AR.18.70042', 19092, 'America/Argentina/San_Juan', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832658, 'AR', 'Villa Ojo de Agua', 'Villa Ojo de Agua', -29.5, -63.6938, 'P', 'PPLA2', 'AR.22', 'AR.22.86126', 5832, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832662, 'AR', 'Villa Nueva', 'Villa Nueva', -32.4329, -63.2476, 'P', 'PPL', 'AR.05', 'AR.05.14042', 16841, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832694, 'AR', 'Villa María', 'Villa Maria', -32.4075, -63.2402, 'P', 'PPLA2', 'AR.05', 'AR.05.14042', 92453, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832711, 'AR', 'Villa La Angostura', 'Villa La Angostura', -40.7617, -71.6463, 'P', 'PPL', 'AR.15', 'AR.15.58070', 7526, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832719, 'AR', 'Villa Huidobro', 'Villa Huidobro', -34.8383, -64.5869, 'P', 'PPLA2', 'AR.05', 'AR.05.14035', 5155, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832734, 'AR', 'Villa General Belgrano', 'Villa General Belgrano', -31.9754, -64.5559, 'P', 'PPL', 'AR.05', 'AR.05.14007', 5888, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3832756, 'AR', 'Villa Dolores', 'Villa Dolores', -31.9459, -65.1896, 'P', 'PPL', 'AR.05', 'AR.05.14133', 28009, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832759, 'AR', 'Villa de Soto', 'Villa de Soto', -30.8552, -64.9995, 'P', 'PPL', 'AR.05', 'AR.05.14028', 7303, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832763, 'AR', 'Villa del Totoral', 'Villa del Totoral', -30.8167, -63.7167, 'P', 'PPLA2', 'AR.05', 'AR.05.14168', 7110, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832778, 'AR', 'Villa Constitución', 'Villa Constitucion', -33.2278, -60.3297, 'P', 'PPLA2', 'AR.21', 'AR.21.82028', 44271, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832783, 'AR', 'Chañar Ladeado', 'Chanar Ladeado', -33.3252, -62.0383, 'P', 'PPL', 'AR.21', 'AR.21.82014', 5639, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832791, 'AR', 'Villa Carlos Paz', 'Villa Carlos Paz', -31.4241, -64.4978, 'P', 'PPL', 'AR.05', 'AR.05.14091', 69451, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832793, 'AR', 'Villa Cañás', 'Villa Canas', -34.0056, -61.6076, 'P', 'PPL', 'AR.21', 'AR.21.82042', 9328, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832797, 'AR', 'Villa Berthet', 'Villa Berthet', -27.2917, -60.4126, 'P', 'PPLA2', 'AR.03', 'AR.03.22147', 12029, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832811, 'AR', 'Villa Ángela', 'Villa Angela', -27.5738, -60.7153, 'P', 'PPLA2', 'AR.03', 'AR.03.22098', 43511, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832815, 'AR', 'Villa Allende', 'Villa Allende', -31.2946, -64.2954, 'P', 'PPL', 'AR.05', 'AR.05.14021', 21683, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832899, 'AR', 'Viedma', 'Viedma', -40.8134, -62.9967, 'P', 'PPLA', 'AR.16', 'AR.16.62007', 48940, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832917, 'AR', 'Vicuña Mackenna', 'Vicuna Mackenna', -33.9197, -64.3922, 'P', 'PPL', 'AR.05', 'AR.05.14098', 8994, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832923, 'AR', 'Victorica', 'Victorica', -36.215, -65.4359, 'P', 'PPLA2', 'AR.11', 'AR.11.42098', 6565, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3832934, 'AR', 'Victoria', 'Victoria', -32.6184, -60.1548, 'P', 'PPL', 'AR.08', 'AR.08.30105', 25139, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3832959, 'AR', 'Viale', 'Viale', -31.8678, -60.0072, 'P', 'PPL', 'AR.08', 'AR.08.30084', 8939, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833027, 'AR', 'Vera', 'Vera', -29.4593, -60.2126, 'P', 'PPLA2', 'AR.21', 'AR.21.82133', 19797, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833062, 'AR', 'Venado Tuerto', 'Venado Tuerto', -33.7456, -61.9688, 'P', 'PPL', 'AR.21', 'AR.21.82042', 72340, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833111, 'AR', 'Veinticinco de Mayo', 'Veinticinco de Mayo', -37.7741, -67.7164, 'P', 'PPLA2', 'AR.11', 'AR.11.42112', 6962, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833112, 'AR', 'Veinticinco de Mayo', 'Veinticinco de Mayo', -35.4323, -60.1727, 'P', 'PPLA2', 'AR.01', 'AR.01.06854', 24668, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3833211, 'AR', 'Valle Hermoso', 'Valle Hermoso', -31.1173, -64.4808, 'P', 'PPL', 'AR.05', 'AR.05.14091', 5486, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833367, 'AR', 'Ushuaia', 'Ushuaia', -54.8, -68.3, 'P', 'PPLA', 'AR.23', 'AR.23.94014', 58028, 'America/Argentina/Ushuaia', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833412, 'AR', 'Unquillo', 'Unquillo', -31.2307, -64.3161, 'P', 'PPL', 'AR.05', 'AR.05.14021', 15369, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833675, 'AR', 'Trevelin', 'Trevelin', -43.0858, -71.4639, 'P', 'PPL', 'AR.04', 'AR.04.26035', 6395, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833794, 'AR', 'Tres Isletas', 'Tres Isletas', -26.3407, -60.4321, 'P', 'PPLA2', 'AR.03', 'AR.03.22091', 24747, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833859, 'AR', 'Tres Arroyos', 'Tres Arroyos', -38.3739, -60.2798, 'P', 'PPLA2', 'AR.01', 'AR.01.06833', 47136, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3833883, 'AR', 'Trelew', 'Trelew', -43.249, -65.3051, 'P', 'PPL', 'AR.04', 'AR.04.26077', 93442, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3833947, 'AR', 'Trancas', 'Trancas', -26.2157, -65.2849, 'P', 'PPLA2', 'AR.24', 'AR.24.90112', 6658, 'America/Argentina/Tucuman', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3833995, 'AR', 'Totoras', 'Totoras', -32.5844, -61.1685, 'P', 'PPL', 'AR.21', 'AR.21.82056', 9587, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834048, 'AR', 'Tostado', 'Tostado', -29.232, -61.7692, 'P', 'PPLA2', 'AR.21', 'AR.21.82077', 14000, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834361, 'AR', 'Tinogasta', 'Tinogasta', -28.0632, -67.5649, 'P', 'PPLA2', 'AR.02', 'AR.02.10105', 14509, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834397, 'AR', 'Tilisarao', 'Tilisarao', -32.7329, -65.2911, 'P', 'PPL', 'AR.19', 'AR.19.74028', 5478, 'America/Argentina/San_Luis', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834403, 'AR', 'Tilcara', 'Tilcara', -23.5776, -65.3509, 'P', 'PPLA2', 'AR.10', 'AR.10.38094', 5640, 'America/Argentina/Jujuy', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3834502, 'AR', 'Termas de Río Hondo', 'Termas de Rio Hondo', -27.4936, -64.8597, 'P', 'PPLA2', 'AR.22', 'AR.22.86147', 27838, 'America/Argentina/Cordoba', 1, '2017-03-24 23:00:00', '2017-03-24 23:00:00'),
(3834601, 'AR', 'Tartagal', 'Tartagal', -22.5164, -63.8013, 'P', 'PPLA2', 'AR.17', 'AR.17.66056', 60819, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834665, 'AR', 'Tancacha', 'Tancacha', -32.2431, -63.9807, 'P', 'PPL', 'AR.05', 'AR.05.14161', 5184, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834813, 'AR', 'Tafí Viejo', 'Tafi Viejo', -26.732, -65.2592, 'P', 'PPLA2', 'AR.24', 'AR.24.90105', 48459, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834843, 'AR', 'Taco Pozo', 'Taco Pozo', -25.6167, -63.2833, 'P', 'PPL', 'AR.03', 'AR.03.22007', 8470, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834961, 'AR', 'Suncho Corral', 'Suncho Corral', -27.9336, -63.4294, 'P', 'PPLA2', 'AR.22', 'AR.22.86098', 6087, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3834971, 'AR', 'Sunchales', 'Sunchales', -30.944, -61.5615, 'P', 'PPL', 'AR.21', 'AR.21.82021', 18757, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835238, 'AR', 'Simoca', 'Simoca', -27.2627, -65.3565, 'P', 'PPLA2', 'AR.24', 'AR.24.90091', 7939, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835297, 'AR', 'Sierra Grande', 'Sierra Grande', -41.606, -65.3557, 'P', 'PPL', 'AR.16', 'AR.16.62077', 6978, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835372, 'AR', 'Senillosa', 'Senillosa', -39.0141, -68.4328, 'P', 'PPL', 'AR.15', 'AR.15.58035', 6394, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3835695, 'AR', 'Sastre', 'Sastre', -31.7676, -61.8289, 'P', 'PPLA2', 'AR.21', 'AR.21.82126', 5521, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835710, 'AR', 'Sarmiento', 'Sarmiento', -45.5882, -69.07, 'P', 'PPLA2', 'AR.04', 'AR.04.26091', 8292, 'America/Argentina/Catamarca', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3835793, 'AR', 'Santo Tomé', 'Santo Tome', -31.6627, -60.7653, 'P', 'PPL', 'AR.21', 'AR.21.82063', 59072, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835869, 'AR', 'Santiago del Estero', 'Santiago del Estero', -27.7951, -64.2615, 'P', 'PPLA', 'AR.22', 'AR.22.86049', 354692, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835921, 'AR', 'Santa Sylvina', 'Santa Sylvina', -27.8326, -61.1375, 'P', 'PPLA2', 'AR.03', 'AR.03.22043', 9040, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835938, 'AR', 'Santa Rosa de Río Primero', 'Santa Rosa de Rio Primero', -31.1523, -63.4019, 'P', 'PPLA2', 'AR.05', 'AR.05.14105', 6788, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3835943, 'AR', 'Santa Rosa de Calamuchita', 'Santa Rosa de Calamuchita', -32.069, -64.5363, 'P', 'PPL', 'AR.05', 'AR.05.14007', 9504, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3835994, 'AR', 'Santa Rosa', 'Santa Rosa', -36.6167, -64.2833, 'P', 'PPLA', 'AR.11', 'AR.11.42021', 111424, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836194, 'AR', 'Santa Lucía', 'Santa Lucia', -31.5399, -68.495, 'P', 'PPLA2', 'AR.18', 'AR.18.70098', 43565, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3836277, 'AR', 'Santa Fe de la Vera Cruz', 'Santa Fe de la Vera Cruz', -31.6333, -60.7, 'P', 'PPLA', 'AR.21', 'AR.21.82063', 489505, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836564, 'AR', 'San Salvador de Jujuy', 'San Salvador de Jujuy', -24.1946, -65.2971, 'P', 'PPLA', 'AR.10', 'AR.10.38021', 305891, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836620, 'AR', 'San Ramón de la Nueva Orán', 'San Ramon de la Nueva Oran', -23.1371, -64.3243, 'P', 'PPL', 'AR.17', 'AR.17.66126', 74059, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836669, 'AR', 'San Rafael', 'San Rafael', -34.6177, -68.3301, 'P', 'PPLA2', 'AR.13', 'AR.13.50105', 109163, 'America/Argentina/Mendoza', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836772, 'AR', 'San Pedro', 'San Pedro', -24.2313, -64.8661, 'P', 'PPLA2', 'AR.10', 'AR.10.38063', 58430, 'America/Argentina/Jujuy', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3836846, 'AR', 'San Nicolás de los Arroyos', 'San Nicolas de los Arroyos', -33.3343, -60.2108, 'P', 'PPLA2', 'AR.01', 'AR.01.06763', 127742, 'America/Argentina/Buenos_Aires', 1, '2017-11-28 23:00:00', '2017-11-28 23:00:00'),
(3836873, 'AR', 'San Miguel de Tucumán', 'San Miguel de Tucuman', -26.8241, -65.2226, 'P', 'PPLA', 'AR.24', 'AR.24.90084', 781023, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836951, 'AR', 'San Martín de los Andes', 'San Martin de los Andes', -40.1579, -71.3534, 'P', 'PPL', 'AR.15', 'AR.15.58056', 23519, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3836992, 'AR', 'San Martín', 'San Martin', -33.081, -68.4681, 'P', 'PPLA2', 'AR.13', 'AR.13.50098', 82549, 'America/Argentina/Mendoza', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3836993, 'AR', 'San Martín', 'San Martin', -31.4296, -68.5006, 'P', 'PPLA2', 'AR.18', 'AR.18.70091', 10140, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3837056, 'AR', 'San Luis', 'San Luis', -33.295, -66.3356, 'P', 'PPLA', 'AR.19', 'AR.19.74056', 183982, 'America/Argentina/San_Luis', 1, '2016-09-04 23:00:00', '2016-09-04 23:00:00'),
(3837124, 'AR', 'San Justo', 'San Justo', -30.7891, -60.5919, 'P', 'PPLA2', 'AR.21', 'AR.21.82112', 21809, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3837213, 'AR', 'San Juan', 'San Juan', -31.5375, -68.5364, 'P', 'PPLA', 'AR.18', 'AR.18.70028', 447048, 'America/Argentina/San_Juan', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837240, 'AR', 'San José de Jáchal', 'San Jose de Jachal', -30.2406, -68.7469, 'P', 'PPLA2', 'AR.18', 'AR.18.70056', 21018, 'America/Argentina/San_Juan', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837441, 'AR', 'San Jorge', 'San Jorge', -31.8962, -61.8598, 'P', 'PPL', 'AR.21', 'AR.21.82126', 16873, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837675, 'AR', 'San Francisco', 'San Francisco', -31.428, -62.0827, 'P', 'PPLA2', 'AR.05', 'AR.05.14140', 59062, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837702, 'AR', 'San Fernando del Valle de Catamarca', 'San Fernando del Valle de Catamarca', -28.4696, -65.7852, 'P', 'PPLA', 'AR.02', 'AR.02.10049', 188812, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837823, 'AR', 'San Cristóbal', 'San Cristobal', -30.3105, -61.2372, 'P', 'PPLA2', 'AR.21', 'AR.21.82091', 14286, 'America/Argentina/Cordoba', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3837857, 'AR', 'San Carlos Centro', 'San Carlos Centro', -31.7286, -61.0919, 'P', 'PPL', 'AR.21', 'AR.21.82070', 10465, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837943, 'AR', 'San Bernardo', 'San Bernardo', -27.2878, -60.7125, 'P', 'PPLA2', 'AR.03', 'AR.03.22112', 11101, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837956, 'AR', 'San Benito', 'San Benito', -31.7837, -60.4416, 'P', 'PPL', 'AR.08', 'AR.08.30084', 6771, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3837980, 'AR', 'San Antonio Oeste', 'San Antonio Oeste', -40.7319, -64.9477, 'P', 'PPLA2', 'AR.16', 'AR.16.62077', 16966, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838158, 'AR', 'San Agustín de Valle Fértil', 'San Agustin de Valle Fertil', -30.6335, -67.4682, 'P', 'PPLA2', 'AR.18', 'AR.18.70119', 6864, 'America/Argentina/San_Juan', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838201, 'AR', 'Sampacho', 'Sampacho', -33.3839, -64.7221, 'P', 'PPL', 'AR.05', 'AR.05.14098', 7238, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838233, 'AR', 'Salta', 'Salta', -24.7859, -65.4117, 'P', 'PPLA', 'AR.17', 'AR.17.66028', 512686, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838235, 'AR', 'Salsipuedes', 'Salsipuedes', -31.1373, -64.2959, 'P', 'PPL', 'AR.05', 'AR.05.14021', 6411, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838506, 'AR', 'Rufino', 'Rufino', -34.2683, -62.7126, 'P', 'PPL', 'AR.21', 'AR.21.82042', 18361, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838583, 'AR', 'Rosario', 'Rosario', -32.9468, -60.6393, 'P', 'PPLA2', 'AR.21', 'AR.21.82084', 1173533, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3838638, 'AR', 'Roldán', 'Roldan', -32.8985, -60.9068, 'P', 'PPL', 'AR.21', 'AR.21.82119', 12468, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838793, 'AR', 'Río Tercero', 'Rio Tercero', -32.173, -64.1141, 'P', 'PPL', 'AR.05', 'AR.05.14161', 53389, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838797, 'AR', 'Río Segundo', 'Rio Segundo', -31.6526, -63.9099, 'P', 'PPL', 'AR.05', 'AR.05.14119', 18155, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3838854, 'AR', 'Río Grande', 'Rio Grande', -53.7877, -67.7095, 'P', 'PPLA2', 'AR.23', 'AR.23.94007', 52681, 'America/Argentina/Ushuaia', 1, '2017-12-20 23:00:00', '2017-12-20 23:00:00'),
(3838859, 'AR', 'Río Gallegos', 'Rio Gallegos', -51.6226, -69.2181, 'P', 'PPLA', 'AR.20', 'AR.20.78021', 85700, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3838874, 'AR', 'Río Cuarto', 'Rio Cuarto', -33.1307, -64.3499, 'P', 'PPLA2', 'AR.05', 'AR.05.14098', 153757, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3838902, 'AR', 'Río Ceballos', 'Rio Ceballos', -31.1649, -64.3224, 'P', 'PPL', 'AR.05', 'AR.05.14021', 16632, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3839262, 'AR', 'Recreo', 'Recreo', -31.4908, -60.733, 'P', 'PPL', 'AR.21', 'AR.21.82063', 12798, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3839263, 'AR', 'Recreo', 'Recreo', -29.2818, -65.061, 'P', 'PPLA2', 'AR.02', 'AR.02.10070', 14204, 'America/Argentina/Catamarca', 1, '2016-02-02 23:00:00', '2016-02-02 23:00:00'),
(3839282, 'AR', 'Realicó', 'Realico', -35.0366, -64.2447, 'P', 'PPLA2', 'AR.11', 'AR.11.42133', 7151, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3839307, 'AR', 'Rawson', 'Rawson', -43.3002, -65.1023, 'P', 'PPLA', 'AR.04', 'AR.04.26077', 26335, 'America/Argentina/Catamarca', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3839479, 'AR', 'Rafaela', 'Rafaela', -31.2503, -61.4867, 'P', 'PPLA2', 'AR.21', 'AR.21.82021', 88713, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3839482, 'AR', 'Rada Tilly', 'Rada Tilly', -45.9246, -67.5542, 'P', 'PPL', 'AR.04', 'AR.04.26021', 6208, 'America/Argentina/Catamarca', 1, '2018-01-23 23:00:00', '2018-01-23 23:00:00'),
(3839490, 'AR', 'Quitilipi', 'Quitilipi', -26.8691, -60.2168, 'P', 'PPLA2', 'AR.03', 'AR.03.22133', 32083, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3839565, 'AR', 'Quimilí', 'Quimili', -27.6333, -62.4167, 'P', 'PPLA2', 'AR.22', 'AR.22.86119', 10959, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3839982, 'AR', 'Punta Alta', 'Punta Alta', -38.8759, -62.0736, 'P', 'PPLA2', 'AR.01', 'AR.01.06182', 57209, 'America/Argentina/Buenos_Aires', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3840082, 'AR', 'San Julián', 'San Julian', -49.3055, -67.7274, 'P', 'PPLA2', 'AR.20', 'AR.20.78042', 6143, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3840092, 'AR', 'Puerto Madryn', 'Puerto Madryn', -42.7692, -65.0385, 'P', 'PPLA2', 'AR.04', 'AR.04.26007', 64555, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3840104, 'AR', 'Puerto Deseado', 'Puerto Deseado', -47.7503, -65.8938, 'P', 'PPLA2', 'AR.20', 'AR.20.78014', 10237, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3840300, 'AR', 'Presidencia Roque Sáenz Peña', 'Presidencia Roque Saenz Pena', -26.7852, -60.4388, 'P', 'PPLA2', 'AR.03', 'AR.03.22021', 81879, 'America/Argentina/Cordoba', 1, '2016-10-29 23:00:00', '2016-10-29 23:00:00'),
(3840470, 'AR', 'Pozo del Molle', 'Pozo del Molle', -32.0186, -62.9198, 'P', 'PPL', 'AR.05', 'AR.05.14119', 5429, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3840860, 'AR', 'Pocito', 'Pocito', -31.6833, -68.5833, 'P', 'PPL', 'AR.18', 'AR.18.70070', 40969, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3840885, 'AR', 'Plottier', 'Plottier', -38.9667, -68.2333, 'P', 'PPL', 'AR.15', 'AR.15.58035', 25186, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3840896, 'AR', 'Plaza Huincul', 'Plaza Huincul', -38.926, -69.2086, 'P', 'PPL', 'AR.15', 'AR.15.58035', 12273, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3841149, 'AR', 'Pilar', 'Pilar', -31.6789, -63.8796, 'P', 'PPL', 'AR.05', 'AR.05.14119', 12488, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3841309, 'AR', 'Pico Truncado', 'Pico Truncado', -46.7949, -67.9573, 'P', 'PPL', 'AR.20', 'AR.20.78014', 14985, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3841490, 'AR', 'Pergamino', 'Pergamino', -33.8899, -60.5736, 'P', 'PPLA2', 'AR.01', 'AR.01.06623', 87652, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3841500, 'AR', 'Pérez', 'Perez', -32.9983, -60.7679, 'P', 'PPL', 'AR.21', 'AR.21.82084', 24436, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3841956, 'AR', 'Paraná', 'Parana', -31.732, -60.5238, 'P', 'PPLA', 'AR.08', 'AR.08.30084', 262295, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842142, 'AR', 'Pampa del Infierno', 'Pampa del Infierno', -26.5052, -61.1744, 'P', 'PPLA2', 'AR.03', 'AR.03.22007', 8176, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842190, 'AR', 'Palpalá', 'Palpala', -24.2565, -65.2116, 'P', 'PPLA2', 'AR.10', 'AR.10.38042', 48199, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842268, 'AR', 'Palma Sola', 'Palma Sola', -23.9634, -64.2987, 'P', 'PPL', 'AR.10', 'AR.10.38070', 5318, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842621, 'AR', 'Oncativo', 'Oncativo', -31.9135, -63.682, 'P', 'PPL', 'AR.05', 'AR.05.14119', 12660, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842662, 'AR', 'Oliva', 'Oliva', -32.0416, -63.5698, 'P', 'PPLA2', 'AR.05', 'AR.05.14161', 11629, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3842670, 'AR', 'Olavarría', 'Olavarria', -36.8927, -60.3225, 'P', 'PPLA2', 'AR.01', 'AR.01.06595', 86320, 'America/Argentina/Buenos_Aires', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(3842881, 'AR', 'Nueve de Julio', 'Nueve de Julio', -35.4444, -60.8831, 'P', 'PPLA2', 'AR.01', 'AR.01.06588', 34718, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3842882, 'AR', 'Nueve de Julio', 'Nueve de Julio', -31.6691, -68.3902, 'P', 'PPLA2', 'AR.18', 'AR.18.70063', 7652, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3843123, 'AR', 'Neuquén', 'Neuquen', -38.9516, -68.0591, 'P', 'PPLA', 'AR.15', 'AR.15.58035', 242092, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3843619, 'AR', 'Morteros', 'Morteros', -30.7116, -61.9986, 'P', 'PPL', 'AR.05', 'AR.05.14140', 15129, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3843803, 'AR', 'Monteros', 'Monteros', -27.1674, -65.4983, 'P', 'PPLA2', 'AR.24', 'AR.24.90070', 23771, 'America/Argentina/Tucuman', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3843830, 'AR', 'Monte Maíz', 'Monte Maiz', -33.2046, -62.6008, 'P', 'PPL', 'AR.05', 'AR.05.14182', 6920, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3843871, 'AR', 'Monte Cristo', 'Monte Cristo', -31.3431, -63.9444, 'P', 'PPL', 'AR.05', 'AR.05.14021', 6914, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3843881, 'AR', 'Monte Buey', 'Monte Buey', -32.9164, -62.4567, 'P', 'PPL', 'AR.05', 'AR.05.14063', 5497, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3844229, 'AR', 'Mina Clavero', 'Mina Clavero', -31.721, -65.0062, 'P', 'PPL', 'AR.05', 'AR.05.14126', 6855, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3844377, 'AR', 'Merlo', 'Merlo', -32.3429, -65.014, 'P', 'PPL', 'AR.19', 'AR.19.74049', 11159, 'America/Argentina/San_Luis', 1, '2015-06-06 23:00:00', '2015-06-06 23:00:00'),
(3844421, 'AR', 'Mendoza', 'Mendoza', -32.8908, -68.8272, 'P', 'PPLA', 'AR.13', 'AR.13.50028', 876884, 'America/Argentina/Mendoza', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3844899, 'AR', 'Marcos Juárez', 'Marcos Juarez', -32.6978, -62.1067, 'P', 'PPLA2', 'AR.05', 'AR.05.14063', 24226, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3845073, 'AR', 'Malvinas Argentinas', 'Malvinas Argentinas', -31.3833, -64.0667, 'P', 'PPL', 'AR.05', 'AR.05.14014', 8628, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3845202, 'AR', 'Malagueño', 'Malagueno', -31.4647, -64.3584, 'P', 'PPL', 'AR.05', 'AR.05.14147', 9364, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3845330, 'AR', 'Machagai', 'Machagai', -26.9261, -60.0495, 'P', 'PPLA2', 'AR.03', 'AR.03.22168', 28070, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3846175, 'AR', 'Los Frentones', 'Los Frentones', -26.4077, -61.4137, 'P', 'PPL', 'AR.03', 'AR.03.22007', 6610, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3846514, 'AR', 'Los Altos', 'Los Altos', -28.0485, -65.4995, 'P', 'PPL', 'AR.02', 'AR.02.10098', 6421, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3846864, 'AR', 'Lincoln', 'Lincoln', -34.8665, -61.5302, 'P', 'PPLA2', 'AR.01', 'AR.01.06469', 41808, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3846915, 'AR', 'Libertador General San Martín', 'Libertador General San Martin', -23.8064, -64.7876, 'P', 'PPLA2', 'AR.10', 'AR.10.38035', 49267, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3846991, 'AR', 'Leones', 'Leones', -32.6617, -62.2968, 'P', 'PPL', 'AR.05', 'AR.05.14063', 9971, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3847482, 'AR', 'La Toma', 'La Toma', -33.0526, -65.6238, 'P', 'PPLA2', 'AR.19', 'AR.19.74021', 6663, 'America/Argentina/San_Luis', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3847613, 'AR', 'Las Varillas', 'Las Varillas', -31.8721, -62.7195, 'P', 'PPL', 'AR.05', 'AR.05.14140', 14649, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3847836, 'AR', 'Las Rosas', 'Las Rosas', -32.4766, -61.5804, 'P', 'PPLA2', 'AR.21', 'AR.21.82007', 12793, 'America/Argentina/Cordoba', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(3847933, 'AR', 'Las Parejas', 'Las Parejas', -32.6848, -61.5164, 'P', 'PPL', 'AR.21', 'AR.21.82007', 11317, 'America/Argentina/Cordoba', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(3848164, 'AR', 'Las Lomitas', 'Las Lomitas', -24.7096, -60.593, 'P', 'PPL', 'AR.09', 'AR.09.34035', 10354, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3848209, 'AR', 'Las Lajitas', 'Las Lajitas', -24.6833, -64.25, 'P', 'PPL', 'AR.17', 'AR.17.66007', 9151, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3848343, 'AR', 'Las Higueras', 'Las Higueras', -33.0923, -64.289, 'P', 'PPL', 'AR.05', 'AR.05.14098', 5282, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3848353, 'AR', 'Las Heras', 'Las Heras', -46.5419, -68.9359, 'P', 'PPL', 'AR.20', 'AR.20.78014', 9303, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3848687, 'AR', 'Las Breñas', 'Las Brenas', -27.0897, -61.0816, 'P', 'PPLA2', 'AR.03', 'AR.03.22105', 26955, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3848950, 'AR', 'La Rioja', 'La Rioja', -29.4111, -66.8507, 'P', 'PPLA', 'AR.12', 'AR.12.46014', 162620, 'America/Argentina/La_Rioja', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3849140, 'AR', 'La Quiaca', 'La Quiaca', -22.1024, -65.593, 'P', 'PPLA2', 'AR.10', 'AR.10.38112', 14751, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3850005, 'AR', 'Lamarque', 'Lamarque', -39.423, -65.7021, 'P', 'PPL', 'AR.16', 'AR.16.62014', 7819, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3850920, 'AR', 'Laguna Paiva', 'Laguna Paiva', -31.3039, -60.6589, 'P', 'PPL', 'AR.21', 'AR.21.82063', 12250, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3850929, 'AR', 'Laguna Larga', 'Laguna Larga', -31.7765, -63.801, 'P', 'PPL', 'AR.05', 'AR.05.14119', 7137, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3851331, 'AR', 'La Falda', 'La Falda', -31.0884, -64.4899, 'P', 'PPL', 'AR.05', 'AR.05.14091', 15112, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3851798, 'AR', 'La Cumbre', 'La Cumbre', -30.982, -64.4914, 'P', 'PPL', 'AR.05', 'AR.05.14091', 7235, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3851985, 'AR', 'La Cocha', 'La Cocha', -27.7773, -65.5704, 'P', 'PPLA2', 'AR.24', 'AR.24.90049', 7066, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3852279, 'AR', 'La Carlota', 'La Carlota', -33.4199, -63.2977, 'P', 'PPLA2', 'AR.05', 'AR.05.14056', 11490, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3852374, 'AR', 'La Calera', 'La Calera', -31.3438, -64.3353, 'P', 'PPL', 'AR.05', 'AR.05.14021', 24796, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3852468, 'AR', 'Laboulaye', 'Laboulaye', -34.1266, -63.3912, 'P', 'PPLA2', 'AR.05', 'AR.05.14084', 19908, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3852480, 'AR', 'Laborde', 'Laborde', -33.1532, -62.8566, 'P', 'PPL', 'AR.05', 'AR.05.14182', 5492, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853330, 'AR', 'Justo Daract', 'Justo Daract', -33.8594, -65.1828, 'P', 'PPL', 'AR.19', 'AR.19.74035', 9680, 'America/Argentina/San_Luis', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853331, 'AR', 'Justiniano Posse', 'Justiniano Posse', -32.8841, -62.6779, 'P', 'PPL', 'AR.05', 'AR.05.14182', 7406, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853350, 'AR', 'Junín de los Andes', 'Junin de los Andes', -39.9504, -71.0694, 'P', 'PPLA2', 'AR.15', 'AR.15.58049', 10592, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853354, 'AR', 'Junín', 'Junin', -34.5838, -60.9433, 'P', 'PPLA2', 'AR.01', 'AR.01.06413', 85007, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3853491, 'AR', 'Joaquín V. González', 'Joaquin V. Gonzalez', -25.0833, -64.1833, 'P', 'PPL', 'AR.17', 'AR.17.66112', 19185, 'America/Argentina/Salta', 1, '2016-02-01 23:00:00', '2016-02-01 23:00:00'),
(3853510, 'AR', 'Jesús María', 'Jesus Maria', -30.9815, -64.0942, 'P', 'PPLA2', 'AR.05', 'AR.05.14021', 26825, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853745, 'AR', 'Intendente Alvear', 'Intendente Alvear', -35.2338, -63.592, 'P', 'PPLA2', 'AR.11', 'AR.11.42056', 6990, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853767, 'AR', 'Ingenio La Esperanza', 'Ingenio La Esperanza', -24.2255, -64.839, 'P', 'PPL', 'AR.10', 'AR.10.38063', 5002, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853782, 'AR', 'Ingeniero Luis A. Huergo', 'Ingeniero Luis A. Huergo', -39.0833, -67.2333, 'P', 'PPL', 'AR.16', 'AR.16.62042', 6483, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853786, 'AR', 'Ingeniero Jacobacci', 'Ingeniero Jacobacci', -41.3292, -69.5501, 'P', 'PPL', 'AR.16', 'AR.16.62091', 5785, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853788, 'AR', 'Ingeniero Guillermo N. Juárez', 'Ingeniero Guillermo N. Juarez', -23.9, -61.85, 'P', 'PPLA2', 'AR.09', 'AR.09.34028', 10357, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853935, 'AR', 'Icaño', 'Icano', -28.9193, -65.3282, 'P', 'PPL', 'AR.02', 'AR.02.10070', 6857, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853967, 'AR', 'Humahuaca', 'Humahuaca', -23.2054, -65.3505, 'P', 'PPLA2', 'AR.10', 'AR.10.38028', 11369, 'America/Argentina/Jujuy', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3853974, 'AR', 'Huinca Renancó', 'Huinca Renanco', -34.8404, -64.3758, 'P', 'PPL', 'AR.05', 'AR.05.14035', 8637, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3853981, 'AR', 'Huillapima', 'Huillapima', -28.7253, -65.9787, 'P', 'PPL', 'AR.02', 'AR.02.10042', 7779, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3854008, 'AR', 'Huerta Grande', 'Huerta Grande', -31.0752, -64.4906, 'P', 'PPL', 'AR.05', 'AR.05.14091', 5630, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3854331, 'AR', 'Hernando', 'Hernando', -32.4266, -63.7333, 'P', 'PPL', 'AR.05', 'AR.05.14161', 10486, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3854336, 'AR', 'Hermoso Campo', 'Hermoso Campo', -27.6082, -61.3444, 'P', 'PPLA2', 'AR.03', 'AR.03.22039', 7435, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3854493, 'AR', 'Guatraché', 'Guatrache', -37.6678, -63.5302, 'P', 'PPLA2', 'AR.11', 'AR.11.42070', 5271, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3854724, 'AR', 'Graneros', 'Graneros', -27.6493, -65.4383, 'P', 'PPLA2', 'AR.24', 'AR.24.90035', 5263, 'America/Argentina/Tucuman', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3854895, 'AR', 'Granadero Baigorria', 'Granadero Baigorria', -32.8568, -60.7175, 'P', 'PPL', 'AR.21', 'AR.21.82084', 32427, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3854985, 'AR', 'Gobernador Gálvez', 'Gobernador Galvez', -33.0302, -60.6404, 'P', 'PPL', 'AR.21', 'AR.21.82084', 74650, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855041, 'AR', 'General Villegas', 'General Villegas', -35.0328, -63.0125, 'P', 'PPLA2', 'AR.01', 'AR.01.06392', 16270, 'America/Argentina/Buenos_Aires', 1, '2016-11-28 23:00:00', '2016-11-28 23:00:00'),
(3855065, 'AR', 'General Roca', 'General Roca', -39.0333, -67.5833, 'P', 'PPL', 'AR.16', 'AR.16.62042', 73212, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3855067, 'AR', 'General Ramírez', 'General Ramirez', -32.176, -60.2008, 'P', 'PPL', 'AR.08', 'AR.08.30021', 8614, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855074, 'AR', 'General Pinedo', 'General Pinedo', -27.3167, -61.2833, 'P', 'PPLA2', 'AR.03', 'AR.03.22036', 15741, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855075, 'AR', 'General Pico', 'General Pico', -35.6566, -63.7568, 'P', 'PPLA2', 'AR.11', 'AR.11.42105', 57029, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855098, 'AR', 'General Levalle', 'General Levalle', -34.0147, -63.9241, 'P', 'PPL', 'AR.05', 'AR.05.14084', 5492, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855114, 'AR', 'General Fernández Oro', 'General Fernandez Oro', -38.953, -67.9249, 'P', 'PPL', 'AR.16', 'AR.16.62042', 6813, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3855116, 'AR', 'General Enrique Mosconi', 'General Enrique Mosconi', -22.5959, -63.8125, 'P', 'PPL', 'AR.17', 'AR.17.66056', 19811, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855121, 'AR', 'General Conesa', 'General Conesa', -40.1, -64.4333, 'P', 'PPLA2', 'AR.16', 'AR.16.62028', 5595, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855124, 'AR', 'General Cabrera', 'General Cabrera', -32.8131, -63.8724, 'P', 'PPL', 'AR.05', 'AR.05.14056', 10351, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855143, 'AR', 'General Acha', 'General Acha', -37.377, -64.6043, 'P', 'PPLA2', 'AR.11', 'AR.11.42154', 12536, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855244, 'AR', 'Gálvez', 'Galvez', -32.0293, -61.221, 'P', 'PPL', 'AR.21', 'AR.21.82105', 18374, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855284, 'AR', 'Gaimán', 'Gaiman', -43.2897, -65.4929, 'P', 'PPLA2', 'AR.04', 'AR.04.26042', 5753, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855302, 'AR', 'Funes', 'Funes', -32.9157, -60.81, 'P', 'PPL', 'AR.21', 'AR.21.82084', 14750, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855368, 'AR', 'Fray Luis Beltrán', 'Fray Luis Beltran', -39.3167, -65.7667, 'P', 'PPL', 'AR.16', 'AR.16.62014', 6401, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855370, 'AR', 'Fray Luis A. Beltrán', 'Fray Luis A. Beltran', -32.7912, -60.7282, 'P', 'PPL', 'AR.21', 'AR.21.82119', 14390, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855394, 'AR', 'Fraile Pintado', 'Fraile Pintado', -23.9408, -64.7994, 'P', 'PPL', 'AR.10', 'AR.10.38035', 13682, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855554, 'AR', 'Firmat', 'Firmat', -33.4594, -61.4832, 'P', 'PPL', 'AR.21', 'AR.21.82042', 18294, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855588, 'AR', 'Fiambalá', 'Fiambala', -27.687, -67.6149, 'P', 'PPL', 'AR.02', 'AR.02.10105', 8061, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3855666, 'AR', 'Famaillá', 'Famailla', -27.0541, -65.4033, 'P', 'PPLA2', 'AR.24', 'AR.24.90028', 30951, 'America/Argentina/Tucuman', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3855974, 'AR', 'Esquel', 'Esquel', -42.9115, -71.3195, 'P', 'PPL', 'AR.04', 'AR.04.26035', 28486, 'America/Argentina/Catamarca', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3856022, 'AR', 'Esperanza', 'Esperanza', -31.4488, -60.9317, 'P', 'PPLA2', 'AR.21', 'AR.21.82070', 35885, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3856231, 'AR', 'Embarcación', 'Embarcacion', -23.21, -64.0996, 'P', 'PPL', 'AR.17', 'AR.17.66056', 23961, 'America/Argentina/Salta', 1, '2015-05-22 23:00:00', '2015-05-22 23:00:00'),
(3856235, 'AR', 'Embalse', 'Embalse', -32.18, -64.4181, 'P', 'PPL', 'AR.05', 'AR.05.14007', 15900, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3856436, 'AR', 'El Trébol', 'El Trebol', -32.2008, -61.7014, 'P', 'PPL', 'AR.21', 'AR.21.82126', 10871, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3857012, 'AR', 'El Quebrachal', 'El Quebrachal', -25.2833, -64.0667, 'P', 'PPL', 'AR.17', 'AR.17.66007', 10243, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3857974, 'AR', 'El Galpón', 'El Galpon', -25.3807, -64.6526, 'P', 'PPL', 'AR.17', 'AR.17.66112', 8357, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3858553, 'AR', 'El Carril', 'El Carril', -25.0741, -65.4917, 'P', 'PPL', 'AR.17', 'AR.17.66042', 9780, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3858677, 'AR', 'El Calafate', 'El Calafate', -50.3408, -72.2768, 'P', 'PPL', 'AR.20', 'AR.20.78028', 8000, 'America/Argentina/Rio_Gallegos', 1, '2017-07-19 23:00:00', '2017-07-19 23:00:00'),
(3858765, 'AR', 'El Bolsón', 'El Bolson', -41.9605, -71.5334, 'P', 'PPL', 'AR.16', 'AR.16.62021', 15537, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859036, 'AR', 'Eduardo Castex', 'Eduardo Castex', -35.915, -64.2945, 'P', 'PPLA2', 'AR.11', 'AR.11.42035', 9861, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859384, 'AR', 'Diamante', 'Diamante', -32.0664, -60.6384, 'P', 'PPLA2', 'AR.08', 'AR.08.30021', 19545, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859409, 'AR', 'Devoto', 'Devoto', -31.4043, -62.3063, 'P', 'PPL', 'AR.05', 'AR.05.14140', 5597, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859429, 'AR', 'Despeñaderos', 'Despenaderos', -31.8163, -64.2899, 'P', 'PPL', 'AR.05', 'AR.05.14147', 5645, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859512, 'AR', 'Deán Funes', 'Dean Funes', -30.4204, -64.3498, 'P', 'PPLA2', 'AR.05', 'AR.05.14049', 20164, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859552, 'AR', 'Cutral-Có', 'Cutral-Co', -38.9342, -69.2305, 'P', 'PPL', 'AR.15', 'AR.15.58035', 47380, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3859828, 'AR', 'Cruz del Eje', 'Cruz del Eje', -30.7264, -64.8039, 'P', 'PPLA2', 'AR.05', 'AR.05.14028', 28166, 'America/Argentina/Cordoba', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3859839, 'AR', 'Cruz Alta', 'Cruz Alta', -33.0089, -61.8075, 'P', 'PPL', 'AR.05', 'AR.05.14063', 6862, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859904, 'AR', 'Crespo', 'Crespo', -32.0287, -60.3066, 'P', 'PPL', 'AR.08', 'AR.08.30084', 18296, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859965, 'AR', 'Cosquín', 'Cosquin', -31.2451, -64.4656, 'P', 'PPLA2', 'AR.05', 'AR.05.14091', 19070, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3859974, 'AR', 'Corzuela', 'Corzuela', -26.9537, -60.9693, 'P', 'PPLA2', 'AR.03', 'AR.03.22049', 10470, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3860129, 'AR', 'Corral de Bustos', 'Corral de Bustos', -33.2821, -62.1846, 'P', 'PPL', 'AR.05', 'AR.05.14063', 9882, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3860164, 'AR', 'Coronel Suárez', 'Coronel Suarez', -37.4547, -61.9334, 'P', 'PPLA2', 'AR.01', 'AR.01.06203', 27000, 'America/Argentina/Buenos_Aires', 1, '2016-03-05 23:00:00', '2016-03-05 23:00:00'),
(3860178, 'AR', 'Coronel Moldes', 'Coronel Moldes', -33.6227, -64.5971, 'P', 'PPL', 'AR.05', 'AR.05.14098', 8104, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3860197, 'AR', 'Coronel Du Graty', 'Coronel Du Graty', -27.6804, -60.9146, 'P', 'PPL', 'AR.03', 'AR.03.22098', 9140, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3860199, 'AR', 'Coronel Dorrego', 'Coronel Dorrego', -38.7187, -61.2873, 'P', 'PPLA2', 'AR.01', 'AR.01.06189', 11644, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3860217, 'AR', 'Coronda', 'Coronda', -31.9726, -60.9198, 'P', 'PPLA2', 'AR.21', 'AR.21.82105', 16975, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3860259, 'AR', 'Córdoba', 'Cordoba', -31.4135, -64.1811, 'P', 'PPLA', 'AR.05', 'AR.05.14014', 1428214, 'America/Argentina/Cordoba', 1, '2016-07-28 23:00:00', '2016-07-28 23:00:00'),
(3860419, 'AR', 'Concepción del Bermejo', 'Concepcion del Bermejo', -26.5993, -60.9462, 'P', 'PPL', 'AR.03', 'AR.03.22007', 5830, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(3860443, 'AR', 'Comodoro Rivadavia', 'Comodoro Rivadavia', -45.8641, -67.4966, 'P', 'PPLA2', 'AR.04', 'AR.04.26021', 140850, 'America/Argentina/Catamarca', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861002, 'AR', 'Clodomira', 'Clodomira', -27.5744, -64.1311, 'P', 'PPL', 'AR.22', 'AR.22.86035', 9043, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861056, 'AR', 'Cipolletti', 'Cipolletti', -38.9339, -67.9903, 'P', 'PPL', 'AR.16', 'AR.16.62042', 75078, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3861061, 'AR', 'Cinco Saltos', 'Cinco Saltos', -38.8223, -68.0629, 'P', 'PPL', 'AR.16', 'AR.16.62042', 19819, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3861262, 'AR', 'Chos Malal', 'Chos Malal', -37.3781, -70.2709, 'P', 'PPLA2', 'AR.15', 'AR.15.58042', 11721, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861329, 'AR', 'Choele Choel', 'Choele Choel', -39.2667, -65.6833, 'P', 'PPLA2', 'AR.16', 'AR.16.62014', 9791, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861344, 'AR', 'Chivilcoy', 'Chivilcoy', -34.8957, -60.0167, 'P', 'PPLA2', 'AR.01', 'AR.01.06224', 54514, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3861416, 'AR', 'Chimbas', 'Chimbas', -31.4833, -68.5333, 'P', 'PPLA2', 'AR.18', 'AR.18.70042', 73829, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3861445, 'AR', 'Chilecito', 'Chilecito', -29.1619, -67.4974, 'P', 'PPLA2', 'AR.12', 'AR.12.46042', 42248, 'America/Argentina/La_Rioja', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3861494, 'AR', 'Chicoana', 'Chicoana', -25.1009, -65.5331, 'P', 'PPLA2', 'AR.17', 'AR.17.66042', 8468, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3861678, 'AR', 'Charata', 'Charata', -27.2144, -61.188, 'P', 'PPLA2', 'AR.03', 'AR.03.22028', 27813, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861824, 'AR', 'Chamical', 'Chamical', -30.36, -66.314, 'P', 'PPLA2', 'AR.12', 'AR.12.46035', 13383, 'America/Argentina/La_Rioja', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3861953, 'AR', 'Chacabuco', 'Chacabuco', -34.6417, -60.4739, 'P', 'PPLA2', 'AR.01', 'AR.01.06210', 34587, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3861966, 'AR', 'Cervantes', 'Cervantes', -39.05, -67.3833, 'P', 'PPL', 'AR.16', 'AR.16.62042', 5173, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862100, 'AR', 'Ceres', 'Ceres', -29.881, -61.945, 'P', 'PPL', 'AR.21', 'AR.21.82091', 13063, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862144, 'AR', 'Centenario', 'Centenario', -38.8296, -68.1318, 'P', 'PPL', 'AR.15', 'AR.15.58035', 28956, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3862240, 'AR', 'Caucete', 'Caucete', -31.6518, -68.2811, 'P', 'PPLA2', 'AR.18', 'AR.18.70035', 33609, 'America/Argentina/San_Juan', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862254, 'AR', 'Catriel', 'Catriel', -37.8791, -67.7956, 'P', 'PPL', 'AR.16', 'AR.16.62042', 15169, 'America/Argentina/Salta', 1, '2016-03-05 23:00:00', '2016-03-05 23:00:00'),
(3862320, 'AR', 'Castelli', 'Castelli', -25.9468, -60.6195, 'P', 'PPLA2', 'AR.03', 'AR.03.22063', 36588, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862351, 'AR', 'Casilda', 'Casilda', -33.0442, -61.1681, 'P', 'PPLA2', 'AR.21', 'AR.21.82014', 32002, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862655, 'AR', 'Carcarañá', 'Carcarana', -32.8568, -61.1533, 'P', 'PPL', 'AR.21', 'AR.21.82119', 15619, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862738, 'AR', 'Capitán Bermúdez', 'Capitan Bermudez', -32.8226, -60.7185, 'P', 'PPL', 'AR.21', 'AR.21.82119', 27060, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862761, 'AR', 'Capilla del Monte', 'Capilla del Monte', -30.8609, -64.5251, 'P', 'PPL', 'AR.05', 'AR.05.14091', 9085, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862772, 'AR', 'Capayán', 'Capayan', -28.761, -66.0502, 'P', 'PPL', 'AR.02', 'AR.02.10042', 6358, 'America/Argentina/Catamarca', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3862883, 'AR', 'Canals', 'Canals', -33.5654, -62.8893, 'P', 'PPL', 'AR.05', 'AR.05.14182', 8343, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3862981, 'AR', 'Cañada de Gómez', 'Canada de Gomez', -32.8164, -61.3949, 'P', 'PPLA2', 'AR.21', 'AR.21.82056', 36000, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863095, 'AR', 'Campo Largo', 'Campo Largo', -26.8008, -60.8422, 'P', 'PPLA2', 'AR.03', 'AR.03.22070', 10743, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863136, 'AR', 'Campo Gallo', 'Campo Gallo', -26.5833, -62.85, 'P', 'PPLA2', 'AR.22', 'AR.22.86014', 5455, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863362, 'AR', 'Calingasta', 'Calingasta', -31.3339, -69.4208, 'P', 'PPL', 'AR.18', 'AR.18.70021', 8176, 'America/Argentina/San_Juan', 1, '2017-08-22 23:00:00', '2017-08-22 23:00:00'),
(3863366, 'AR', 'Calilegua', 'Calilegua', -23.7737, -64.77, 'P', 'PPL', 'AR.10', 'AR.10.38035', 5174, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863379, 'AR', 'Caleta Olivia', 'Caleta Olivia', -46.4393, -67.5281, 'P', 'PPL', 'AR.20', 'AR.20.78014', 36077, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863419, 'AR', 'Calchaquí', 'Calchaqui', -29.8877, -60.287, 'P', 'PPL', 'AR.21', 'AR.21.82133', 10221, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863491, 'AR', 'Caimancito', 'Caimancito', -23.7407, -64.5937, 'P', 'PPL', 'AR.10', 'AR.10.38035', 5403, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3863503, 'AR', 'Cafayate', 'Cafayate', -26.0729, -65.9777, 'P', 'PPL', 'AR.17', 'AR.17.66021', 11785, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3863833, 'AR', 'Brinkmann', 'Brinkmann', -30.8659, -62.0374, 'P', 'PPL', 'AR.05', 'AR.05.14140', 8237, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3864274, 'AR', 'Berrotarán', 'Berrotaran', -32.451, -64.3887, 'P', 'PPL', 'AR.05', 'AR.05.14098', 6446, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3864328, 'AR', 'Beltrán', 'Beltran', -27.8291, -64.061, 'P', 'PPL', 'AR.22', 'AR.22.86161', 5321, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3864331, 'AR', 'Bell Ville', 'Bell Ville', -32.6259, -62.6887, 'P', 'PPLA2', 'AR.05', 'AR.05.14182', 35105, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3864375, 'AR', 'Bella Vista', 'Bella Vista', -27.0342, -65.302, 'P', 'PPLA2', 'AR.24', 'AR.24.90056', 15126, 'America/Argentina/Tucuman', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3864888, 'AR', 'Balnearia', 'Balnearia', -31.0088, -62.6673, 'P', 'PPL', 'AR.05', 'AR.05.14140', 5585, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865086, 'AR', 'Bahía Blanca', 'Bahia Blanca', -38.7196, -62.2724, 'P', 'PPLA2', 'AR.01', 'AR.01.06056', 276546, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3865186, 'AR', 'Aviá Terai', 'Avia Terai', -26.6853, -60.7292, 'P', 'PPL', 'AR.03', 'AR.03.22070', 6821, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865385, 'AR', 'Arroyo Seco', 'Arroyo Seco', -33.1549, -60.5086, 'P', 'PPL', 'AR.21', 'AR.21.82084', 20008, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865424, 'AR', 'Arroyito', 'Arroyito', -31.4202, -63.05, 'P', 'PPL', 'AR.05', 'AR.05.14140', 19577, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865449, 'AR', 'Armstrong', 'Armstrong', -32.7822, -61.6022, 'P', 'PPL', 'AR.21', 'AR.21.82007', 10388, 'America/Argentina/Cordoba', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(3865474, 'AR', 'Arias', 'Arias', -33.6441, -62.4027, 'P', 'PPL', 'AR.05', 'AR.05.14063', 6928, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865579, 'AR', 'Arauco', 'Arauco', -28.5805, -66.7944, 'P', 'PPL', 'AR.12', 'AR.12.46007', 13720, 'America/Argentina/La_Rioja', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3865605, 'AR', 'Apolinario Saravia', 'Apolinario Saravia', -24.4328, -63.9953, 'P', 'PPL', 'AR.17', 'AR.17.66007', 8595, 'America/Argentina/Salta', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3865802, 'AR', 'Andalgalá', 'Andalgala', -27.6001, -66.3179, 'P', 'PPLA2', 'AR.02', 'AR.02.10021', 14068, 'America/Argentina/Catamarca', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3865840, 'AR', 'Añatuya', 'Anatuya', -28.4606, -62.8347, 'P', 'PPLA2', 'AR.22', 'AR.22.86077', 20261, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3866163, 'AR', 'Alta Gracia', 'Alta Gracia', -31.6529, -64.4283, 'P', 'PPLA2', 'AR.05', 'AR.05.14147', 40384, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3866237, 'AR', 'Almafuerte', 'Almafuerte', -32.193, -64.2556, 'P', 'PPL', 'AR.05', 'AR.05.14161', 10534, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3866242, 'AR', 'Allen', 'Allen', -38.9774, -67.8271, 'P', 'PPL', 'AR.16', 'AR.16.62042', 26083, 'America/Argentina/Salta', 1, '2015-12-08 23:00:00', '2015-12-08 23:00:00'),
(3866367, 'AR', 'Alderetes', 'Alderetes', -26.8167, -65.1333, 'P', 'PPL', 'AR.24', 'AR.24.90014', 38466, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3866425, 'AR', 'Albardón', 'Albardon', -31.4372, -68.5256, 'P', 'PPL', 'AR.18', 'AR.18.70007', 20413, 'America/Argentina/San_Juan', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(3866496, 'AR', 'Aguilares', 'Aguilares', -27.4338, -65.6143, 'P', 'PPLA2', 'AR.24', 'AR.24.90077', 32494, 'America/Argentina/Tucuman', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3866935, 'AR', 'Adelia María', 'Adelia Maria', -33.6315, -64.021, 'P', 'PPL', 'AR.05', 'AR.05.14098', 6434, 'America/Argentina/Cordoba', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3867009, 'AR', 'Abra Pampa', 'Abra Pampa', -22.7205, -65.697, 'P', 'PPLA2', 'AR.10', 'AR.10.38007', 9425, 'America/Argentina/Jujuy', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(3925467, 'PE', 'Yura', 'Yura', -16.2522, -71.6797, 'P', 'PPLA3', 'PE.04', 'PE.04.0401', 5686, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3925476, 'PE', 'Yunguyo', 'Yunguyo', -16.25, -69.0833, 'P', 'PPLA3', 'PE.21', 'PE.21.2113', 16140, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3925809, 'PE', 'Yanahuanca', 'Yanahuanca', -10.5167, -76.4986, 'P', 'PPL', 'PE.19', 'PE.19.1902', 5992, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3925863, 'PE', 'Yanacancha', 'Yanacancha', -10.2411, -76.6456, 'P', 'PPL', 'PE.10', 'PE.10.1010', 23175, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3926119, 'PE', 'Villa Tupac Amaru', 'Villa Tupac Amaru', -13.7114, -76.1498, 'P', 'PPL', 'PE.11', 'PE.11.1105', 11159, 'America/Lima', 1, '2016-03-09 23:00:00', '2016-03-09 23:00:00'),
(3926120, 'PE', 'Villa Rica', 'Villa Rica', -10.7394, -75.2697, 'P', 'PPLA3', 'PE.19', 'PE.19.1903', 7448, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3926328, 'PE', 'Végueta', 'Vegueta', -11.0225, -77.6438, 'P', 'PPL', 'PE.15', 'PE.15.1508', 6219, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3926438, 'PE', 'Urubamba', 'Urubamba', -13.3047, -72.1158, 'P', 'PPLA3', 'PE.08', 'PE.08.0813', 7540, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3926462, 'PE', 'Urcos', 'Urcos', -13.6861, -71.6228, 'P', 'PPLA3', 'PE.08', 'PE.08.0812', 5479, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3927158, 'PE', 'Torata', 'Torata', -17.0769, -70.8433, 'P', 'PPLA3', 'PE.18', 'PE.18.1801', 7054, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3927420, 'PE', 'Tinyahuarco', 'Tinyahuarco', -10.7677, -76.2752, 'P', 'PPL', 'PE.19', 'PE.19.1901', 5066, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3927758, 'PE', 'Tarma', 'Tarma', -11.419, -75.6899, 'P', 'PPLA3', 'PE.12', 'PE.12.1207', 51350, 'America/Lima', 1, '2015-03-28 23:00:00', '2015-03-28 23:00:00'),
(3927942, 'PE', 'Tambopata', 'Tambopata', -12.6719, -69.3555, 'P', 'PPL', 'PE.17', 'PE.17.1701', 38966, 'America/Lima', 1, '2014-07-21 23:00:00', '2014-07-21 23:00:00'),
(3927995, 'PE', 'Tambo', 'Tambo', -14.7985, -73.9244, 'P', 'PPL', 'PE.05', 'PE.05.0506', 5032, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3928043, 'PE', 'Talavera', 'Talavera', -13.6531, -73.4292, 'P', 'PPLA3', 'PE.03', 'PE.03.0302', 7381, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3928128, 'PE', 'Tacna', 'Tacna', -18.0147, -70.2536, 'P', 'PPLA', 'PE.23', 'PE.23.2301', 280098, 'America/Lima', 1, '2013-11-02 23:00:00', '2013-11-02 23:00:00'),
(3928245, 'PE', 'Santiago de Surco', 'Santiago de Surco', -12.1359, -77.0074, 'P', 'PPLX', 'PE.15', 'PE.15.1501', 251648, 'America/Lima', 1, '2016-01-06 23:00:00', '2016-01-06 23:00:00'),
(3928274, 'PE', 'Supe', 'Supe', -10.7975, -77.7131, 'P', 'PPL', 'PE.15', 'PE.15.1502', 13719, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3928365, 'PE', 'Subtanjalla', 'Subtanjalla', -14.0189, -75.7581, 'P', 'PPLA3', 'PE.11', 'PE.11.1101', 9096, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3928679, 'PE', 'Sicuani', 'Sicuani', -14.2694, -71.2261, 'P', 'PPLA3', 'PE.08', 'PE.08.0806', 33575, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3928691, 'PE', 'Sicaya', 'Sicaya', -12.0333, -75.2833, 'P', 'PPLA3', 'PE.12', 'PE.12.1201', 6842, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3928867, 'PE', 'Sayán', 'Sayan', -11.1333, -77.1946, 'P', 'PPL', 'PE.15', 'PE.15.1508', 6196, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3928924, 'PE', 'Satipo', 'Satipo', -11.2522, -74.6386, 'P', 'PPLA3', 'PE.12', 'PE.12.1206', 15532, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3928993, 'PE', 'San Vicente de Cañete', 'San Vicente de Canete', -13.0756, -76.3853, 'P', 'PPL', 'PE.15', 'PE.15.1505', 25517, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3929051, 'PE', 'Santiago', 'Santiago', -14.1847, -75.7112, 'P', 'PPL', 'PE.11', 'PE.11.1101', 10449, 'America/Lima', 1, '2016-01-06 23:00:00', '2016-01-06 23:00:00'),
(3929172, 'PE', 'Santa María', 'Santa Maria', -12.0054, -76.8933, 'P', 'PPL', 'PE.15', 'PE.15.1501', 14853, 'America/Lima', 1, '2014-12-02 23:00:00', '2014-12-02 23:00:00'),
(3929295, 'PE', 'Santa Ana', 'Santa Ana', -12.8667, -72.7167, 'P', 'PPL', 'PE.08', 'PE.08.0809', 25145, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3929314, 'PE', 'San Ramón', 'San Ramon', -11.1242, -75.3573, 'P', 'PPL', 'PE.12', 'PE.12.1203', 14708, 'America/Lima', 1, '2014-06-26 23:00:00', '2014-06-26 23:00:00'),
(3929335, 'PE', 'San Pedro de Cajas', 'San Pedro de Cajas', -11.2506, -75.8612, 'P', 'PPL', 'PE.12', 'PE.12.1207', 5758, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3929389, 'PE', 'San Miguel de Cauri', 'San Miguel de Cauri', -10.1382, -76.6229, 'P', 'PPL', 'PE.10', 'PE.10.1010', 5326, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3929403, 'PE', 'San Miguel', 'San Miguel', -13.0125, -73.9808, 'P', 'PPLA2', 'PE.05', 'PE.05.0505', 8400, 'America/Lima', 1, '2012-07-19 23:00:00', '2012-07-19 23:00:00'),
(3929438, 'PE', 'San Luis', 'San Luis', -12.0767, -76.9943, 'P', 'PPLX', 'PE.15', 'PE.15.1501', 8862, 'America/Lima', 1, '2014-12-02 23:00:00', '2014-12-02 23:00:00'),
(3929493, 'PE', 'San Juan Bautista', 'San Juan Bautista', -14.0108, -75.7358, 'P', 'PPLA3', 'PE.11', 'PE.11.1101', 6871, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3929607, 'PE', 'San Jerónimo', 'San Jeronimo', -13.6514, -73.3639, 'P', 'PPL', 'PE.03', 'PE.03.0302', 5609, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3929611, 'PE', 'San Jerónimo', 'San Jeronimo', -11.9559, -75.2841, 'P', 'PPL', 'PE.12', 'PE.12.1201', 8772, 'America/Lima', 1, '2014-06-26 23:00:00', '2014-06-26 23:00:00'),
(3929631, 'PE', 'San Isidro', 'San Isidro', -12.1167, -77.05, 'P', 'PPL', 'PE.15', 'PE.15.1501', 68309, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3929768, 'PE', 'San Clemente', 'San Clemente', -13.6667, -76.15, 'P', 'PPLA3', 'PE.11', 'PE.11.1105', 15815, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3929805, 'PE', 'San Bartolo', 'San Bartolo', -12.3833, -76.7833, 'P', 'PPLA3', 'PE.15', 'PE.15.1501', 5733, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3929888, 'PE', 'San Agustin', 'San Agustin', -11.9719, -75.2556, 'P', 'PPLA3', 'PE.12', 'PE.12.1201', 5998, 'America/Lima', 1, '2014-06-26 23:00:00', '2014-06-26 23:00:00'),
(3930817, 'PE', 'Quilmaná', 'Quilmana', -12.9486, -76.3811, 'P', 'PPL', 'PE.15', 'PE.15.1505', 6442, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3931137, 'PE', 'Putina', 'Putina', -15.4764, -69.4329, 'P', 'PPL', 'PE.21', 'PE.21.2109', 8118, 'America/Lima', 1, '2018-01-09 23:00:00', '2018-01-09 23:00:00'),
(3931223, 'PE', 'Puquio', 'Puquio', -14.7, -74.1333, 'P', 'PPLA3', 'PE.05', 'PE.05.0506', 10491, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3931255, 'PE', 'Punta de Bombón', 'Punta de Bombon', -17.1719, -71.7924, 'P', 'PPL', 'PE.04', 'PE.04.0407', 6336, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3931276, 'PE', 'Puno', 'Puno', -15.8422, -70.0199, 'P', 'PPLA', 'PE.21', 'PE.21.2101', 116552, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3931453, 'PE', 'Puerto Supe', 'Puerto Supe', -10.8013, -77.7433, 'P', 'PPL', 'PE.15', 'PE.15.1502', 11450, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3931470, 'PE', 'Puerto Maldonado', 'Puerto Maldonado', -12.5933, -69.1891, 'P', 'PPLA', 'PE.17', 'PE.17.1701', 37543, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3932145, 'PE', 'Pisco', 'Pisco', -13.7103, -76.2054, 'P', 'PPLA3', 'PE.11', 'PE.11.1105', 61869, 'America/Lima', 1, '2013-11-02 23:00:00', '2013-11-02 23:00:00'),
(3932282, 'PE', 'Pilcomay', 'Pilcomay', -12.0472, -75.2493, 'P', 'PPL', 'PE.12', 'PE.12.1201', 8169, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3932502, 'PE', 'Perené', 'Perene', -10.9451, -75.2239, 'P', 'PPL', 'PE.12', 'PE.12.1203', 6844, 'America/Lima', 1, '2015-11-07 23:00:00', '2015-11-07 23:00:00'),
(3932687, 'PE', 'Pativilca', 'Pativilca', -10.7, -77.7833, 'P', 'PPLA3', 'PE.15', 'PE.15.1502', 13583, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3933024, 'PE', 'Paramonga', 'Paramonga', -10.6667, -77.8333, 'P', 'PPLA3', 'PE.15', 'PE.15.1502', 27631, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3933104, 'PE', 'Pangoa', 'Pangoa', -12.1167, -73, 'P', 'PPL', 'PE.08', 'PE.08.0809', 6638, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3933185, 'PE', 'Pampas', 'Pampas', -12.3949, -74.8669, 'P', 'PPL', 'PE.09', 'PE.09.0907', 5521, 'America/Lima', 1, '2014-01-12 23:00:00', '2014-01-12 23:00:00'),
(3933345, 'PE', 'Palpa', 'Palpa', -14.5336, -75.1856, 'P', 'PPLA3', 'PE.11', 'PE.11.1104', 5883, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3933659, 'PE', 'Pacocha', 'Pacocha', -17.5833, -71.3333, 'P', 'PPL', 'PE.18', 'PE.18.1803', 7588, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3933867, 'PE', 'Oyón', 'Oyon', -10.6685, -76.7717, 'P', 'PPL', 'PE.15', 'PE.15.1509', 6276, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3933874, 'PE', 'Oxapampa', 'Oxapampa', -10.5775, -75.4017, 'P', 'PPLA2', 'PE.19', 'PE.19.1903', 12000, 'America/Lima', 1, '2013-03-06 23:00:00', '2013-03-06 23:00:00'),
(3933986, 'PE', 'Orcopampa', 'Orcopampa', -15.2661, -72.3417, 'P', 'PPLA3', 'PE.04', 'PE.04.0404', 5643, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3934239, 'PE', 'Nuevo Imperial', 'Nuevo Imperial', -13.0754, -76.3172, 'P', 'PPLA3', 'PE.15', 'PE.15.1505', 32344, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3934290, 'PE', 'Asentamiento Humano Nicolas de Pierola', 'Asentamiento Humano Nicolas de Pierola', -11.9357, -76.7061, 'P', 'PPL', 'PE.15', 'PE.15.1501', 5800, 'America/Lima', 1, '2013-12-12 23:00:00', '2013-12-12 23:00:00'),
(3934356, 'PE', 'Nazca', 'Nazca', -14.831, -74.9389, 'P', 'PPLA3', 'PE.11', 'PE.11.1103', 23556, 'America/Lima', 1, '2013-02-02 23:00:00', '2013-02-02 23:00:00'),
(3934586, 'PE', 'Morococha', 'Morococha', -11.5997, -76.1411, 'P', 'PPLA3', 'PE.12', 'PE.12.1208', 7890, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3934608, 'PE', 'Moquegua', 'Moquegua', -17.1983, -70.9357, 'P', 'PPLA', 'PE.18', 'PE.18.1801', 54517, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3934707, 'PE', 'Mollendo', 'Mollendo', -17.0231, -72.0147, 'P', 'PPLA3', 'PE.04', 'PE.04.0407', 28953, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3935102, 'PE', 'Mazamari', 'Mazamari', -11.3258, -74.5308, 'P', 'PPLA3', 'PE.12', 'PE.12.1206', 6826, 'America/Lima', 1, '2015-12-12 23:00:00', '2015-12-12 23:00:00'),
(3935288, 'PE', 'Minas de Marcona', 'Minas de Marcona', -15.2119, -75.1103, 'P', 'PPL', 'PE.11', 'PE.11.1103', 15478, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3935572, 'PE', 'Mala', 'Mala', -12.6581, -76.6308, 'P', 'PPLA3', 'PE.15', 'PE.15.1505', 17260, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3935624, 'PE', 'Macusani', 'Macusani', -14.0833, -70.4333, 'P', 'PPLA3', 'PE.21', 'PE.21.2103', 6044, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3935969, 'PE', 'Los Aquijes', 'Los Aquijes', -14.0967, -75.6908, 'P', 'PPLA3', 'PE.11', 'PE.11.1101', 7848, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3936088, 'PE', 'Lluta', 'Lluta', -16.0147, -72.0142, 'P', 'PPLA3', 'PE.04', 'PE.04.0405', 5998, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3936456, 'PE', 'Lima', 'Lima', -12.0432, -77.0282, 'P', 'PPLC', 'PE.LMA', NULL, 7737002, 'America/Lima', 1, '2010-12-01 23:00:00', '2010-12-01 23:00:00'),
(3936952, 'PE', 'La Oroya', 'La Oroya', -11.5189, -75.8994, 'P', 'PPLA3', 'PE.12', 'PE.12.1208', 33345, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3937486, 'PE', 'Junín', 'Junin', -11.1589, -75.993, 'P', 'PPL', 'PE.12', 'PE.12.1205', 15320, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3937513, 'PE', 'Juliaca', 'Juliaca', -15.5, -70.1333, 'P', 'PPLA3', 'PE.21', 'PE.21.2111', 245675, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3937516, 'PE', 'Juli', 'Juli', -16.2167, -69.45, 'P', 'PPLA3', 'PE.21', 'PE.21.2104', 7309, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3937733, 'PE', 'Jauja', 'Jauja', -11.7758, -75.4966, 'P', 'PPLA3', 'PE.12', 'PE.12.1204', 21057, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3938396, 'PE', 'Imperial', 'Imperial', -13.0593, -76.3527, 'P', 'PPLA3', 'PE.15', 'PE.15.1505', 32344, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3938415, 'PE', 'Ilo', 'Ilo', -17.6394, -71.3375, 'P', 'PPLA3', 'PE.18', 'PE.18.1803', 53476, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3938451, 'PE', 'Ilave', 'Ilave', -16.0833, -69.6667, 'P', 'PPLA3', 'PE.21', 'PE.21.2105', 16033, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3938455, 'PE', 'Ilabaya', 'Ilabaya', -17.4208, -70.5133, 'P', 'PPLA3', 'PE.23', 'PE.23.2303', 9492, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3938527, 'PE', 'Ica', 'Ica', -14.0678, -75.7286, 'P', 'PPLA', 'PE.11', 'PE.11.1101', 246844, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3938819, 'PE', 'Huayucachi', 'Huayucachi', -12.1333, -75.2333, 'P', 'PPLA3', 'PE.12', 'PE.12.1201', 5827, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3939023, 'PE', 'Huaura', 'Huaura', -11.07, -77.5994, 'P', 'PPLA3', 'PE.15', 'PE.15.1508', 20723, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3939123, 'PE', 'Huasahuasi', 'Huasahuasi', -11.2653, -75.6472, 'P', 'PPL', 'PE.12', 'PE.12.1207', 5146, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3939168, 'PE', 'Huarmey', 'Huarmey', -10.0681, -78.1522, 'P', 'PPLA3', 'PE.02', 'PE.02.0211', 16172, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3939285, 'PE', 'Huaral', 'Huaral', -11.495, -77.2078, 'P', 'PPLA3', 'PE.15', 'PE.15.1506', 62174, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3939386, 'PE', 'Huanta', 'Huanta', -12.9333, -74.25, 'P', 'PPLA3', 'PE.05', 'PE.05.0504', 18627, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3939459, 'PE', 'Huancayo', 'Huancayo', -12.0651, -75.2049, 'P', 'PPLA', 'PE.12', 'PE.12.1201', 376657, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3939470, 'PE', 'Huancavelica', 'Huancavelica', -12.7826, -74.9727, 'P', 'PPLA', 'PE.09', 'PE.09.0901', 41576, 'America/Lima', 1, '2014-01-12 23:00:00', '2014-01-12 23:00:00'),
(3939531, 'PE', 'Hacienda Huancane', 'Hacienda Huancane', -15.8233, -70.8854, 'P', 'PPL', 'PE.21', 'PE.21.2107', 7831, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3939761, 'PE', 'Hualmay', 'Hualmay', -11.0964, -77.6139, 'P', 'PPLA3', 'PE.15', 'PE.15.1508', 26658, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3940002, 'PE', 'Huacho', 'Huacho', -11.1067, -77.605, 'P', 'PPLA', 'PE.15', 'PE.15.1508', 54545, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3941492, 'PE', 'Desaguadero', 'Desaguadero', -16.5656, -69.0417, 'P', 'PPLA3', 'PE.21', 'PE.21.2104', 5329, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3941584, 'PE', 'Cusco', 'Cusco', -13.5226, -71.9673, 'P', 'PPLA', 'PE.08', 'PE.08.0801', 312140, 'America/Lima', 1, '2013-03-15 23:00:00', '2013-03-15 23:00:00'),
(3942259, 'PE', 'Coracora', 'Coracora', -15.0333, -73.7833, 'P', 'PPLA3', 'PE.05', 'PE.05.0507', 7420, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3942548, 'PE', 'Concepción', 'Concepcion', -11.9176, -75.314, 'P', 'PPL', 'PE.12', 'PE.12.1202', 11330, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3942957, 'PE', 'Cocachacra', 'Cocachacra', -17.0883, -71.7575, 'P', 'PPLA3', 'PE.04', 'PE.04.0407', 8799, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3943186, 'PE', 'Chupaca', 'Chupaca', -12.0667, -75.2833, 'P', 'PPLA3', 'PE.12', 'PE.12.1209', 9877, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3943423, 'PE', 'Chosica', 'Chosica', -11.9431, -76.7094, 'P', 'PPLA3', 'PE.15', 'PE.15.1501', 88606, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3943789, 'PE', 'Chincha Alta', 'Chincha Alta', -13.4099, -76.1323, 'P', 'PPLA3', 'PE.11', 'PE.11.1102', 153076, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3943957, 'PE', 'Chilca', 'Chilca', -12.5211, -76.7372, 'P', 'PPLA3', 'PE.15', 'PE.15.1505', 12884, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3944179, 'PE', 'Chaupimarca', 'Chaupimarca', -10.407, -76.4617, 'P', 'PPL', 'PE.19', 'PE.19.1902', 28666, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3944399, 'PE', 'Chancay', 'Chancay', -11.5714, -77.2672, 'P', 'PPLA3', 'PE.15', 'PE.15.1506', 26958, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3944797, 'PE', 'Cerro de Pasco', 'Cerro de Pasco', -10.6675, -76.2567, 'P', 'PPLA', 'PE.19', 'PE.19.1901', 78910, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3945466, 'PE', 'Carhuamayo', 'Carhuamayo', -10.9167, -76.0333, 'P', 'PPLA3', 'PE.12', 'PE.12.1205', 9122, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3945985, 'PE', 'Camaná', 'Camana', -16.6238, -72.7105, 'P', 'PPL', 'PE.04', 'PE.04.0402', 16434, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3946083, 'PE', 'Callao', 'Callao', -12.0566, -77.1181, 'P', 'PPLA', 'PE.07', 'PE.07.0701', 813264, 'America/Lima', 1, '2012-11-07 23:00:00', '2012-11-07 23:00:00'),
(3946147, 'PE', 'Caleta de Carquín', 'Caleta de Carquin', -11.0925, -77.6267, 'P', 'PPL', 'PE.15', 'PE.15.1508', 5514, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3946177, 'PE', 'Calca', 'Calca', -13.3333, -71.95, 'P', 'PPLA3', 'PE.08', 'PE.08.0804', 9179, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3946820, 'PE', 'Barranca', 'Barranca', -10.75, -77.7667, 'P', 'PPLA3', 'PE.15', 'PE.15.1502', 46290, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3946937, 'PE', 'Azángaro', 'Azangaro', -14.9084, -70.1962, 'P', 'PPL', 'PE.21', 'PE.21.2102', 13290, 'America/Lima', 1, '2012-12-05 23:00:00', '2012-12-05 23:00:00'),
(3946985, 'PE', 'Ayaviri', 'Ayaviri', -14.8864, -70.5889, 'P', 'PPLA3', 'PE.21', 'PE.21.2108', 19310, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3947019, 'PE', 'Ayacucho', 'Ayacucho', -13.1588, -74.2232, 'P', 'PPLA', 'PE.05', 'PE.05.0501', 140033, 'America/Lima', 1, '2014-01-12 23:00:00', '2014-01-12 23:00:00'),
(3947110, 'PE', 'Atuncolla', 'Atuncolla', -15.6833, -70.15, 'P', 'PPLA3', 'PE.21', 'PE.21.2101', 12654, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3947322, 'PE', 'Arequipa', 'Arequipa', -16.3989, -71.535, 'P', 'PPLA', 'PE.04', 'PE.04.0401', 841130, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3947634, 'PE', 'Anta', 'Anta', -13.4706, -72.1483, 'P', 'PPLA3', 'PE.08', 'PE.08.0803', 5859, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3947740, 'PE', 'Andahuaylas', 'Andahuaylas', -13.6556, -73.3872, 'P', 'PPLA3', 'PE.03', 'PE.03.0302', 17444, 'America/Lima', 1, '2018-01-15 23:00:00', '2018-01-15 23:00:00'),
(3947956, 'PE', 'Ambo', 'Ambo', -10.1308, -76.2047, 'P', 'PPLA3', 'PE.10', 'PE.10.1002', 6865, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3948448, 'PE', 'Acolla', 'Acolla', -11.7319, -75.5463, 'P', 'PPLA3', 'PE.12', 'PE.12.1204', 6805, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(3948642, 'PE', 'Abancay', 'Abancay', -13.6339, -72.8814, 'P', 'PPLA', 'PE.03', 'PE.03.0301', 55111, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(5881791, 'CA', 'Abbotsford', 'Abbotsford', 49.058, -122.253, 'P', 'PPL', 'CA.02', 'CA.02.5957659', 151683, 'America/Vancouver', 1, '2013-04-21 23:00:00', '2013-04-21 23:00:00'),
(5882142, 'CA', 'Acton Vale', 'Acton Vale', 45.6501, -72.5658, 'P', 'PPL', 'CA.10', 'CA.10.16', 5135, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5882799, 'CA', 'Airdrie', 'Airdrie', 51.3001, -114.035, 'P', 'PPL', 'CA.01', NULL, 24673, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5882873, 'CA', 'Ajax', 'Ajax', 43.8501, -79.0329, 'P', 'PPL', 'CA.08', NULL, 90167, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(5884083, 'CA', 'Alma', 'Alma', 48.5501, -71.6491, 'P', 'PPL', 'CA.10', 'CA.10.02', 29526, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5884467, 'CA', 'Amherst', 'Amherst', 45.8335, -64.1987, 'P', 'PPL', 'CA.07', NULL, 9336, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5884473, 'CA', 'Amherstburg', 'Amherstburg', 42.1168, -83.0499, 'P', 'PPL', 'CA.08', NULL, 11459, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5884588, 'CA', 'Amos', 'Amos', 48.5669, -78.1162, 'P', 'PPL', 'CA.10', 'CA.10.08', 17918, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5885280, 'CA', 'Angus', 'Angus', 44.3168, -79.8829, 'P', 'PPLL', 'CA.08', NULL, 10269, 'America/Toronto', 1, '2006-01-26 23:00:00', '2006-01-26 23:00:00'),
(5885383, 'CA', 'Anmore', 'Anmore', 49.3164, -122.853, 'P', 'PPL', 'CA.02', 'CA.02.5915', 126456, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(5886182, 'CA', 'Antigonish', 'Antigonish', 45.6169, -61.9986, 'P', 'PPL', 'CA.07', NULL, 5003, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5887214, 'CA', 'Arnprior', 'Arnprior', 45.4334, -76.3494, 'P', 'PPL', 'CA.08', NULL, 9607, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5887470, 'CA', 'Asbestos', 'Asbestos', 45.7668, -71.9324, 'P', 'PPL', 'CA.10', 'CA.10.05', 7190, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5888716, 'CA', 'Aylmer', 'Aylmer', 42.7668, -80.983, 'P', 'PPL', 'CA.08', NULL, 7527, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5889745, 'CA', 'Baie-Comeau', 'Baie-Comeau', 49.2168, -68.1489, 'P', 'PPL', 'CA.10', 'CA.10.09', 29808, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5892532, 'CA', 'Banff', 'Banff', 51.1762, -115.57, 'P', 'PPL', 'CA.01', NULL, 7502, 'America/Edmonton', 1, '2010-06-23 23:00:00', '2010-06-23 23:00:00'),
(5894171, 'CA', 'Barrie', 'Barrie', 44.4001, -79.6663, 'P', 'PPL', 'CA.08', NULL, 182041, 'America/Toronto', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5895424, 'CA', 'Bay Roberts', 'Bay Roberts', 47.5999, -53.2648, 'P', 'PPL', 'CA.05', NULL, 13737, 'America/St_Johns', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5895650, 'CA', 'Beaconsfield', 'Beaconsfield', 45.4334, -73.8659, 'P', 'PPL', 'CA.10', 'CA.10.06', 19194, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5896495, 'CA', 'Beauharnois', 'Beauharnois', 45.3134, -73.8725, 'P', 'PPL', 'CA.10', 'CA.10.16', 11918, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5896522, 'CA', 'Beaumont', 'Beaumont', 53.3501, -113.419, 'P', 'PPL', 'CA.01', NULL, 7366, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5897209, 'CA', 'Bécancour', 'Becancour', 46.3334, -72.4324, 'P', 'PPL', 'CA.10', 'CA.10.17', 11134, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5897884, 'CA', 'Belleville', 'Belleville', 44.1668, -77.3828, 'P', 'PPL', 'CA.08', 'CA.08.3512', 49454, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5898070, 'CA', 'Bells Corners', 'Bells Corners', 45.3159, -75.8301, 'P', 'PPL', 'CA.08', NULL, 9977, 'America/Toronto', 1, '2010-03-17 23:00:00', '2010-03-17 23:00:00'),
(5898138, 'CA', 'Beloeil', 'Beloeil', 45.5684, -73.2057, 'P', 'PPL', 'CA.10', 'CA.10.16', 18927, 'America/Toronto', 1, '2017-01-30 23:00:00', '2017-01-30 23:00:00'),
(5901272, 'CA', 'Binbrook', 'Binbrook', 43.1213, -79.811, 'P', 'PPLX', 'CA.08', 'CA.08.3525', 8796, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5903510, 'CA', 'Blainville', 'Blainville', 45.6668, -73.8825, 'P', 'PPL', 'CA.10', 'CA.10.15', 46493, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5904501, 'CA', 'Bluewater', 'Bluewater', 43.4668, -81.5998, 'P', 'PPL', 'CA.08', NULL, 7044, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5905132, 'CA', 'Boisbriand', 'Boisbriand', 45.6168, -73.8325, 'P', 'PPL', 'CA.10', 'CA.10.15', 26483, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5905152, 'CA', 'Bois-des-Filion', 'Bois-des-Filion', 45.6668, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.13', 8383, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5905616, 'CA', 'Bonnyville', 'Bonnyville', 54.2668, -110.735, 'P', 'PPL', 'CA.01', NULL, 6003, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5906267, 'CA', 'Boucherville', 'Boucherville', 45.591, -73.4361, 'P', 'PPL', 'CA.10', 'CA.10.16', 39062, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5907092, 'CA', 'Bracebridge', 'Bracebridge', 45.0334, -79.3163, 'P', 'PPL', 'CA.08', NULL, 8238, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5907364, 'CA', 'Brampton', 'Brampton', 43.6834, -79.7663, 'P', 'PPL', 'CA.08', NULL, 433806, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5907896, 'CA', 'Brandon', 'Brandon', 49.8469, -99.9531, 'P', 'PPL', 'CA.03', NULL, 26234, 'America/Winnipeg', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(5907983, 'CA', 'Brant', 'Brant', 43.1334, -80.3497, 'P', 'PPL', 'CA.08', NULL, 34415, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5907990, 'CA', 'Brantford', 'Brantford', 43.1334, -80.2664, 'P', 'PPL', 'CA.08', NULL, 87759, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5908723, 'CA', 'Bridgewater', 'Bridgewater', 44.3786, -64.5188, 'P', 'PPL', 'CA.07', NULL, 8070, 'America/Halifax', 1, '2015-06-25 23:00:00', '2015-06-25 23:00:00'),
(5909294, 'CA', 'Brockville', 'Brockville', 44.5913, -75.687, 'P', 'PPL', 'CA.08', NULL, 23886, 'America/Toronto', 1, '2013-05-15 23:00:00', '2013-05-15 23:00:00'),
(5909403, 'CA', 'Bromont', 'Bromont', 45.3168, -72.6491, 'P', 'PPL', 'CA.10', 'CA.10.16', 6049, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5909514, 'CA', 'Brooks', 'Brooks', 50.5834, -111.885, 'P', 'PPL', 'CA.01', NULL, 12744, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5909629, 'CA', 'Brossard', 'Brossard', 45.4501, -73.4658, 'P', 'PPL', 'CA.10', 'CA.10.16', 69575, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5909969, 'CA', 'Brownsburg-Chatham', 'Brownsburg-Chatham', 45.6834, -74.4159, 'P', 'PPL', 'CA.10', 'CA.10.15', 6664, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5911592, 'CA', 'Burlington', 'Burlington', 43.3862, -79.8371, 'P', 'PPL', 'CA.08', NULL, 164415, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5911606, 'CA', 'Burnaby', 'Burnaby', 49.2664, -122.953, 'P', 'PPL', 'CA.02', NULL, 202799, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5913490, 'CA', 'Calgary', 'Calgary', 51.0501, -114.085, 'P', 'PPL', 'CA.01', NULL, 1019942, 'America/Edmonton', 1, '2015-04-23 23:00:00', '2015-04-23 23:00:00'),
(5913695, 'CA', 'Cambridge', 'Cambridge', 43.3601, -80.3127, 'P', 'PPL', 'CA.08', NULL, 120372, 'America/Toronto', 1, '2010-04-27 23:00:00', '2010-04-27 23:00:00'),
(5913934, 'CA', 'Camlachie', 'Camlachie', 43.036, -82.1616, 'P', 'PPL', 'CA.08', NULL, 7506, 'America/Toronto', 1, '2011-11-26 23:00:00', '2011-11-26 23:00:00'),
(5914132, 'CA', 'Campbell River', 'Campbell River', 50.0163, -125.245, 'P', 'PPL', 'CA.02', NULL, 33430, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5914653, 'CA', 'Camrose', 'Camrose', 53.0168, -112.835, 'P', 'PPL', 'CA.01', NULL, 15686, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5914826, 'CA', 'Candiac', 'Candiac', 45.3834, -73.5159, 'P', 'PPL', 'CA.10', 'CA.10.16', 15947, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5914894, 'CA', 'Canmore', 'Canmore', 51.0834, -115.352, 'P', 'PPL', 'CA.01', NULL, 12288, 'America/Edmonton', 1, '2015-07-07 23:00:00', '2015-07-07 23:00:00'),
(5916722, 'CA', 'Carbonear', 'Carbonear', 47.7332, -53.2148, 'P', 'PPL', 'CA.05', NULL, 6814, 'America/St_Johns', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5917117, 'CA', 'Carignan', 'Carignan', 45.4501, -73.2992, 'P', 'PPL', 'CA.10', 'CA.10.16', 7426, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(5917158, 'CA', 'Carleton Place', 'Carleton Place', 45.1334, -76.1494, 'P', 'PPL', 'CA.08', NULL, 9743, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5918118, 'CA', 'Castlegar', 'Castlegar', 49.2998, -117.669, 'P', 'PPL', 'CA.02', NULL, 8715, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5919566, 'CA', 'Chambly', 'Chambly', 45.4501, -73.2825, 'P', 'PPL', 'CA.10', 'CA.10.16', 22608, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(5920089, 'CA', 'Charlemagne', 'Charlemagne', 45.7168, -73.4825, 'P', 'PPL', 'CA.10', 'CA.10.14', 5594, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(5920288, 'CA', 'Charlottetown', 'Charlottetown', 46.239, -63.1341, 'P', 'PPLA', 'CA.09', 'CA.09.1102', 42402, 'America/Halifax', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(5920433, 'CA', 'Châteauguay', 'Chateauguay', 45.3834, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.16', 42786, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5920457, 'CA', 'Chatham', 'Chatham', 42.4122, -82.1849, 'P', 'PPL', 'CA.08', 'CA.08.3536', 43550, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5921147, 'CA', 'Chibougamau', 'Chibougamau', 49.9168, -74.3659, 'P', 'PPL', 'CA.10', 'CA.10.10', 7563, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(5921356, 'CA', 'Chilliwack', 'Chilliwack', 49.1664, -121.953, 'P', 'PPLA2', 'CA.02', 'CA.02.5909', 77000, 'America/Vancouver', 1, '2013-07-26 23:00:00', '2013-07-26 23:00:00'),
(5923101, 'CA', 'Clarence-Rockland', 'Clarence-Rockland', 45.5501, -75.291, 'P', 'PPL', 'CA.08', NULL, 20790, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5924417, 'CA', 'Coaldale', 'Coaldale', 49.7167, -112.619, 'P', 'PPL', 'CA.01', NULL, 6317, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5924500, 'CA', 'Coaticook', 'Coaticook', 45.1334, -71.7991, 'P', 'PPL', 'CA.10', 'CA.10.05', 7021, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5924579, 'CA', 'Cobourg', 'Cobourg', 43.9598, -78.1652, 'P', 'PPL', 'CA.08', NULL, 18099, 'America/Toronto', 1, '2013-11-01 23:00:00', '2013-11-01 23:00:00'),
(5924618, 'CA', 'Cochrane', 'Cochrane', 51.1834, -114.469, 'P', 'PPL', 'CA.01', NULL, 16365, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5925024, 'CA', 'Cold Lake', 'Cold Lake', 54.4652, -110.182, 'P', 'PPL', 'CA.01', NULL, 11595, 'America/Edmonton', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5925975, 'CA', 'Collingwood', 'Collingwood', 44.4834, -80.2164, 'P', 'PPL', 'CA.08', NULL, 15809, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5926268, 'CA', 'Colwood', 'Colwood', 48.4329, -123.486, 'P', 'PPL', 'CA.02', NULL, 14687, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5926511, 'CA', 'Conception Bay South', 'Conception Bay South', 47.4999, -52.9981, 'P', 'PPL', 'CA.05', NULL, 17087, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5926526, 'CA', 'Concord', 'Concord', 43.8001, -79.4829, 'P', 'PPL', 'CA.08', NULL, 8255, 'America/Toronto', 1, '2012-02-29 23:00:00', '2012-02-29 23:00:00'),
(5927689, 'CA', 'Coquitlam', 'Coquitlam', 49.283, -122.753, 'P', 'PPL', 'CA.02', NULL, 114565, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5927969, 'CA', 'Corner Brook', 'Corner Brook', 48.95, -57.952, 'P', 'PPL', 'CA.05', NULL, 18693, 'America/St_Johns', 1, '2013-08-09 23:00:00', '2013-08-09 23:00:00'),
(5928065, 'CA', 'Cornwall', 'Cornwall', 45.0181, -74.7281, 'P', 'PPL', 'CA.08', NULL, 48821, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(5928488, 'CA', 'Côte-Saint-Luc', 'Cote-Saint-Luc', 45.4654, -73.6658, 'P', 'PPL', 'CA.10', 'CA.10.06', 31395, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5930890, 'CA', 'Courtenay', 'Courtenay', 49.6866, -124.994, 'P', 'PPL', 'CA.02', NULL, 32793, 'America/Vancouver', 1, '2013-10-26 23:00:00', '2013-10-26 23:00:00'),
(5931074, 'CA', 'Cowansville', 'Cowansville', 45.2001, -72.7491, 'P', 'PPL', 'CA.10', 'CA.10.16', 10887, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5931800, 'CA', 'Cranbrook', 'Cranbrook', 49.4999, -115.769, 'P', 'PPL', 'CA.02', NULL, 18610, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5935277, 'CA', 'Dartmouth', 'Dartmouth', 44.6713, -63.5772, 'P', 'PPL', 'CA.07', NULL, 101343, 'America/Halifax', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5935341, 'CA', 'Dauphin', 'Dauphin', 51.1494, -100.05, 'P', 'PPL', 'CA.03', NULL, 8418, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5935804, 'CA', 'Dawson Creek', 'Dawson Creek', 55.7598, -120.24, 'P', 'PPL', 'CA.02', 'CA.02.5955', 10802, 'America/Dawson_Creek', 1, '2015-01-08 23:00:00', '2015-01-08 23:00:00'),
(5937612, 'CA', 'Delson', 'Delson', 45.3668, -73.5492, 'P', 'PPL', 'CA.10', 'CA.10.16', 7322, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5937615, 'CA', 'Delta', 'Delta', 49.144, -122.907, 'P', 'PPL', 'CA.02', NULL, 101668, 'America/Vancouver', 1, '2010-02-26 23:00:00', '2010-02-26 23:00:00'),
(5938513, 'CA', 'Deux-Montagnes', 'Deux-Montagnes', 45.5345, -73.9017, 'P', 'PPL', 'CA.10', 'CA.10.15', 17402, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5938801, 'CA', 'Devon', 'Devon', 53.3668, -113.735, 'P', 'PPL', 'CA.01', NULL, 5225, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5939219, 'CA', 'Dieppe', 'Dieppe', 46.0784, -64.6873, 'P', 'PPL', 'CA.04', NULL, 18565, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5940934, 'CA', 'Dolbeau-Mistassini', 'Dolbeau-Mistassini', 48.8786, -72.2314, 'P', 'PPL', 'CA.10', 'CA.10.02', 12916, 'America/Toronto', 1, '2016-02-23 23:00:00', '2016-02-23 23:00:00'),
(5940956, 'CA', 'Dollard-Des Ormeaux', 'Dollard-Des Ormeaux', 45.4945, -73.8242, 'P', 'PPL', 'CA.10', NULL, 48930, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5941761, 'CA', 'Dorchester', 'Dorchester', 42.9834, -81.0664, 'P', 'PPL', 'CA.08', NULL, 9329, 'America/Toronto', 1, '2013-07-16 23:00:00', '2013-07-16 23:00:00'),
(5941925, 'CA', 'Dorval', 'Dorval', 45.4473, -73.7533, 'P', 'PPL', 'CA.10', 'CA.10.06', 18088, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5942547, 'CA', 'Drayton Valley', 'Drayton Valley', 53.2168, -114.985, 'P', 'PPL', 'CA.01', NULL, 6099, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5942845, 'CA', 'Drummondville', 'Drummondville', 45.8834, -72.4824, 'P', 'PPL', 'CA.10', 'CA.10.17', 59489, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(5942913, 'CA', 'Dryden', 'Dryden', 49.7833, -92.7503, 'P', 'PPL', 'CA.08', NULL, 8195, 'America/Winnipeg', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5943865, 'CA', 'Duncan', 'Duncan', 48.7829, -123.703, 'P', 'PPL', 'CA.02', NULL, 22199, 'America/Vancouver', 1, '2013-07-20 23:00:00', '2013-07-20 23:00:00'),
(5946768, 'CA', 'Edmonton', 'Edmonton', 53.5501, -113.469, 'P', 'PPLA', 'CA.01', NULL, 712391, 'America/Edmonton', 1, '2010-07-23 23:00:00', '2010-07-23 23:00:00'),
(5946820, 'CA', 'Edson', 'Edson', 53.5835, -116.436, 'P', 'PPL', 'CA.01', NULL, 7975, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5947866, 'CA', 'Elliot Lake', 'Elliot Lake', 46.3834, -82.6331, 'P', 'PPL', 'CA.08', NULL, 12508, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5949568, 'CA', 'Estevan', 'Estevan', 49.1334, -102.984, 'P', 'PPL', 'CA.11', NULL, 9904, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5950267, 'CA', 'Etobicoke', 'Etobicoke', 43.6542, -79.5671, 'P', 'PPL', 'CA.08', NULL, 347948, 'America/Toronto', 1, '2012-02-21 23:00:00', '2012-02-21 23:00:00'),
(5951289, 'CA', 'Fall River', 'Fall River', 44.8168, -63.6154, 'P', 'PPL', 'CA.07', NULL, 11526, 'America/Halifax', 1, '2017-11-25 23:00:00', '2017-11-25 23:00:00'),
(5951644, 'CA', 'Farnham', 'Farnham', 45.2834, -72.9824, 'P', 'PPL', 'CA.10', 'CA.10.16', 6061, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5952370, 'CA', 'Fernie', 'Fernie', 49.5, -115.069, 'P', 'PPL', 'CA.02', NULL, 5019, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5954718, 'CA', 'Flin Flon', 'Flin Flon', 54.767, -101.874, 'P', 'PPL', 'CA.03', NULL, 6002, 'America/Winnipeg', 1, '2016-04-22 23:00:00', '2016-04-22 23:00:00'),
(5955815, 'CA', 'Fort Erie', 'Fort Erie', 42.9001, -78.9329, 'P', 'PPL', 'CA.08', NULL, 15953, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5955826, 'CA', 'Fort Frances', 'Fort Frances', 48.6167, -93.4003, 'P', 'PPL', 'CA.08', 'CA.08.3559', 7931, 'America/Winnipeg', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5955895, 'CA', 'Fort McMurray', 'Fort McMurray', 56.7268, -111.381, 'P', 'PPL', 'CA.01', NULL, 76000, 'America/Edmonton', 1, '2011-10-07 23:00:00', '2011-10-07 23:00:00'),
(5955948, 'CA', 'Fort Saskatchewan', 'Fort Saskatchewan', 53.7168, -113.219, 'P', 'PPL', 'CA.01', NULL, 14957, 'America/Edmonton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5955960, 'CA', 'Fort St. John', 'Fort St. John', 56.2499, -120.853, 'P', 'PPL', 'CA.02', NULL, 17402, 'America/Dawson_Creek', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(5957776, 'CA', 'Fredericton', 'Fredericton', 45.9454, -66.6656, 'P', 'PPLA', 'CA.04', NULL, 52337, 'America/Moncton', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(5959326, 'CA', 'Gananoque', 'Gananoque', 44.3334, -76.1661, 'P', 'PPL', 'CA.08', NULL, 5458, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5959878, 'CA', 'Gaspé', 'Gaspe', 48.8334, -64.4819, 'P', 'PPL', 'CA.10', 'CA.10.11', 14819, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5959974, 'CA', 'Gatineau', 'Gatineau', 45.4772, -75.7016, 'P', 'PPL', 'CA.10', 'CA.10.07', 242124, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(5960971, 'CA', 'Gibsons', 'Gibsons', 49.3954, -123.506, 'P', 'PPL', 'CA.02', 'CA.02.5929', 6821, 'America/Vancouver', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(5961564, 'CA', 'Glace Bay', 'Glace Bay', 46.1969, -59.957, 'P', 'PPL', 'CA.07', NULL, 19968, 'America/Glace_Bay', 1, '2008-08-27 23:00:00', '2008-08-27 23:00:00'),
(5962442, 'CA', 'Goderich', 'Goderich', 43.7417, -81.7134, 'P', 'PPL', 'CA.08', 'CA.08.3540', 8032, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5964215, 'CA', 'Granby', 'Granby', 45.4001, -72.7324, 'P', 'PPL', 'CA.10', 'CA.10.16', 53979, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5964347, 'CA', 'Grande Prairie', 'Grande Prairie', 55.1667, -118.803, 'P', 'PPL', 'CA.01', NULL, 41462, 'America/Edmonton', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(5964378, 'CA', 'Grand Falls-Windsor', 'Grand Falls-Windsor', 48.9332, -55.6649, 'P', 'PPL', 'CA.05', NULL, 12076, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5964700, 'CA', 'Greater Sudbury', 'Greater Sudbury', 46.49, -80.99, 'P', 'PPL', 'CA.08', NULL, 157857, 'America/Toronto', 1, '2014-05-11 23:00:00', '2014-05-11 23:00:00'),
(5965546, 'CA', 'Gravenhurst', 'Gravenhurst', 44.9168, -79.3663, 'P', 'PPL', 'CA.08', NULL, 5839, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5965812, 'CA', 'Greater Napanee', 'Greater Napanee', 44.2501, -76.9494, 'P', 'PPL', 'CA.08', NULL, 15132, 'America/Toronto', 1, '2010-04-05 23:00:00', '2010-04-05 23:00:00'),
(5966689, 'CA', 'Greenwood', 'Greenwood', 44.9741, -64.9317, 'P', 'PPL', 'CA.07', NULL, 6915, 'America/Halifax', 1, '2015-06-25 23:00:00', '2015-06-25 23:00:00'),
(5967629, 'CA', 'Guelph', 'Guelph', 43.5459, -80.256, 'P', 'PPL', 'CA.08', 'CA.08.3523', 115760, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5969782, 'CA', 'Hamilton', 'Hamilton', 43.2501, -79.8496, 'P', 'PPL', 'CA.08', NULL, 519949, 'America/Toronto', 1, '2013-02-15 23:00:00', '2013-02-15 23:00:00'),
(5970014, 'CA', 'Hampstead', 'Hampstead', 45.4806, -73.6631, 'P', 'PPL', 'CA.10', 'CA.10.06', 6996, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5970063, 'CA', 'Hanceville', 'Hanceville', 51.9192, -123.045, 'P', 'PPLL', 'CA.02', NULL, 10000, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5970301, 'CA', 'Hanover', 'Hanover', 44.1501, -81.033, 'P', 'PPL', 'CA.08', NULL, 7255, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5970458, 'CA', 'Happy Valley-Goose Bay', 'Happy Valley-Goose Bay', 53.3038, -60.3258, 'P', 'PPL', 'CA.05', NULL, 7572, 'America/Goose_Bay', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(5972360, 'CA', 'Hawkesbury', 'Hawkesbury', 45.6001, -74.616, 'P', 'PPL', 'CA.08', NULL, 12283, 'America/Toronto', 1, '2016-05-04 23:00:00', '2016-05-04 23:00:00'),
(5975038, 'CA', 'High River', 'High River', 50.5834, -113.869, 'P', 'PPL', 'CA.01', NULL, 9826, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5975503, 'CA', 'Hinton', 'Hinton', 53.4001, -117.586, 'P', 'PPL', 'CA.01', NULL, 9889, 'America/Edmonton', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5978126, 'CA', 'Hudson', 'Hudson', 45.4501, -74.1492, 'P', 'PPL', 'CA.10', 'CA.10.16', 5088, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5978765, 'CA', 'Huntsville', 'Huntsville', 45.3334, -79.2163, 'P', 'PPL', 'CA.08', NULL, 19579, 'America/Toronto', 1, '2009-05-18 23:00:00', '2009-05-18 23:00:00'),
(5978831, 'CA', 'Huron East', 'Huron East', 43.6168, -81.2998, 'P', 'PPL', 'CA.08', NULL, 9264, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5983175, 'CA', 'Ingersoll', 'Ingersoll', 43.0334, -80.883, 'P', 'PPL', 'CA.08', NULL, 11874, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5983433, 'CA', 'Innisfil', 'Innisfil', 44.3001, -79.6496, 'P', 'PPL', 'CA.08', NULL, 7345, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5983720, 'CA', 'Iqaluit', 'Iqaluit', 63.747, -68.5173, 'P', 'PPLA', 'CA.14', NULL, 6124, 'America/Iqaluit', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(5987650, 'CA', 'Joliette', 'Joliette', 46.0164, -73.4236, 'P', 'PPL', 'CA.10', 'CA.10.14', 34772, 'America/Toronto', 1, '2016-06-19 23:00:00', '2016-06-19 23:00:00'),
(5989045, 'CA', 'Kamloops', 'Kamloops', 50.6665, -120.319, 'P', 'PPL', 'CA.02', NULL, 68714, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(5989403, 'CA', 'Kapuskasing', 'Kapuskasing', 49.4169, -82.4331, 'P', 'PPL', 'CA.08', 'CA.08.3556', 9240, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5990579, 'CA', 'Kelowna', 'Kelowna', 49.8831, -119.486, 'P', 'PPL', 'CA.02', NULL, 125109, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(5991055, 'CA', 'Kenora', 'Kenora', 49.7674, -94.4899, 'P', 'PPL', 'CA.08', 'CA.08.3560', 15096, 'America/Winnipeg', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5991148, 'CA', 'Kentville', 'Kentville', 45.0771, -64.496, 'P', 'PPL', 'CA.07', 'CA.07.1207', 12636, 'America/Halifax', 1, '2014-08-30 23:00:00', '2014-08-30 23:00:00'),
(5991370, 'CA', 'Keswick', 'Keswick', 44.2501, -79.4663, 'P', 'PPLX', 'CA.08', NULL, 21000, 'America/Toronto', 1, '2010-08-22 23:00:00', '2010-08-22 23:00:00'),
(5992059, 'CA', 'Kimberley', 'Kimberley', 49.6707, -115.978, 'P', 'PPL', 'CA.02', 'CA.02.5901', 6513, 'America/Edmonton', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(5992144, 'CA', 'Kincardine', 'Kincardine', 44.1834, -81.6331, 'P', 'PPL', 'CA.08', NULL, 6725, 'America/Toronto', 1, '2015-11-08 23:00:00', '2015-11-08 23:00:00'),
(5992500, 'CA', 'Kingston', 'Kingston', 44.2298, -76.481, 'P', 'PPL', 'CA.08', NULL, 114195, 'America/Toronto', 1, '2014-05-10 23:00:00', '2014-05-10 23:00:00'),
(5992830, 'CA', 'Kirkland', 'Kirkland', 45.4501, -73.8659, 'P', 'PPL', 'CA.10', 'CA.10.06', 20491, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5992836, 'CA', 'Kirkland Lake', 'Kirkland Lake', 48.1446, -80.0377, 'P', 'PPL', 'CA.08', NULL, 7775, 'America/Toronto', 1, '2012-01-06 23:00:00', '2012-01-06 23:00:00'),
(5992996, 'CA', 'Kitchener', 'Kitchener', 43.4254, -80.5112, 'P', 'PPLA2', 'CA.08', 'CA.08.3530', 233700, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5993072, 'CA', 'Kitimat', 'Kitimat', 54.0524, -128.653, 'P', 'PPL', 'CA.02', NULL, 8987, 'America/Vancouver', 1, '2010-05-26 23:00:00', '2010-05-26 23:00:00'),
(5994839, 'CA', 'Labrador City', 'Labrador City', 52.9463, -66.9114, 'P', 'PPL', 'CA.05', NULL, 10313, 'America/Goose_Bay', 1, '2008-09-16 23:00:00', '2008-09-16 23:00:00'),
(6002133, 'CA', 'Lac-Brome', 'Lac-Brome', 45.2168, -72.5158, 'P', 'PPL', 'CA.10', 'CA.10.16', 5629, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6024829, 'CA', 'Lachute', 'Lachute', 45.6501, -74.3325, 'P', 'PPL', 'CA.10', 'CA.10.15', 9562, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6035615, 'CA', 'Lacombe', 'Lacombe', 52.4668, -113.735, 'P', 'PPL', 'CA.01', NULL, 10059, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6047817, 'CA', 'Ladysmith', 'Ladysmith', 48.9902, -123.817, 'P', 'PPL', 'CA.02', 'CA.02.5919', 8740, 'America/Vancouver', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(6049024, 'CA', 'Lambton Shores', 'Lambton Shores', 43.1668, -81.9331, 'P', 'PPL', 'CA.08', NULL, 10656, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6049388, 'CA', 'Langford', 'Langford', 48.4496, -123.503, 'P', 'PPL', 'CA.02', NULL, 22459, 'America/Vancouver', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(6049429, 'CA', 'Langley', 'Langley', 49.1011, -122.659, 'P', 'PPL', 'CA.02', NULL, 23606, 'America/Vancouver', 1, '2013-05-31 23:00:00', '2013-05-31 23:00:00'),
(6049430, 'CA', 'Langley', 'Langley', 49.083, -122.586, 'P', 'PPL', 'CA.02', NULL, 93726, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(6049863, 'CA', 'La Prairie', 'La Prairie', 45.4168, -73.4992, 'P', 'PPL', 'CA.10', 'CA.10.16', 21763, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050194, 'CA', 'La Sarre', 'La Sarre', 48.8002, -79.1996, 'P', 'PPL', 'CA.10', 'CA.10.08', 7206, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050263, 'CA', 'L\'Assomption', 'L\'Assomption', 45.8232, -73.4294, 'P', 'PPL', 'CA.10', 'CA.10.14', 16738, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050416, 'CA', 'La Tuque', 'La Tuque', 47.4334, -72.7824, 'P', 'PPLX', 'CA.10', 'CA.10.04', 9503, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050610, 'CA', 'Laval', 'Laval', 45.57, -73.692, 'P', 'PPL', 'CA.10', 'CA.10.13', 376845, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050650, 'CA', 'Lavaltrie', 'Lavaltrie', 45.8834, -73.2824, 'P', 'PPL', 'CA.10', 'CA.10.14', 8762, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6051562, 'CA', 'Leduc', 'Leduc', 53.2668, -113.552, 'P', 'PPL', 'CA.01', NULL, 15561, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6052788, 'CA', 'Les Coteaux', 'Les Coteaux', 45.2834, -74.2325, 'P', 'PPL', 'CA.10', 'CA.10.16', 10622, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6053154, 'CA', 'Lethbridge', 'Lethbridge', 49.7, -112.819, 'P', 'PPL', 'CA.01', NULL, 70617, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6053877, 'CA', 'L\'Île-Perrot', 'L\'Ile-Perrot', 45.3834, -73.9492, 'P', 'PPL', 'CA.10', 'CA.10.16', 9927, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6058024, 'CA', 'Lloydminster', 'Lloydminster', 53.2835, -110.002, 'P', 'PPL', 'CA.11', NULL, 15910, 'America/Edmonton', 1, '2018-01-13 23:00:00', '2018-01-13 23:00:00'),
(6058560, 'CA', 'London', 'London', 42.9834, -81.233, 'P', 'PPL', 'CA.08', NULL, 346765, 'America/Toronto', 1, '2012-08-18 23:00:00', '2012-08-18 23:00:00'),
(6059891, 'CA', 'Longueuil', 'Longueuil', 45.5312, -73.5181, 'P', 'PPL', 'CA.10', 'CA.10.16', 229330, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6060407, 'CA', 'Lorraine', 'Lorraine', 45.6834, -73.7825, 'P', 'PPL', 'CA.10', 'CA.10.14', 9613, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6060839, 'CA', 'Louiseville', 'Louiseville', 46.2559, -72.9415, 'P', 'PPL', 'CA.10', 'CA.10.04', 5819, 'America/Toronto', 1, '2016-02-23 23:00:00', '2016-02-23 23:00:00'),
(6062163, 'CA', 'Lutes Mountain', 'Lutes Mountain', 46.1354, -64.905, 'P', 'PPL', 'CA.04', NULL, 16311, 'America/Moncton', 1, '2016-06-28 23:00:00', '2016-06-28 23:00:00'),
(6064180, 'CA', 'Magog', 'Magog', 45.2668, -72.1491, 'P', 'PPL', 'CA.10', 'CA.10.05', 15550, 'America/Toronto', 1, '2016-05-15 23:00:00', '2016-05-15 23:00:00'),
(6065686, 'CA', 'Maple Ridge', 'Maple Ridge', 49.2194, -122.602, 'P', 'PPL', 'CA.02', NULL, 70000, 'America/Vancouver', 1, '2010-02-26 23:00:00', '2010-02-26 23:00:00'),
(6066350, 'CA', 'Marieville', 'Marieville', 45.4334, -73.1658, 'P', 'PPL', 'CA.10', 'CA.10.16', 5600, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6066513, 'CA', 'Markham', 'Markham', 43.8668, -79.2663, 'P', 'PPL', 'CA.08', NULL, 261573, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(6067494, 'CA', 'Mascouche', 'Mascouche', 45.7496, -73.5996, 'P', 'PPL', 'CA.10', 'CA.10.14', 34626, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6071618, 'CA', 'Medicine Hat', 'Medicine Hat', 50.0393, -110.677, 'P', 'PPL', 'CA.01', NULL, 63138, 'America/Edmonton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6071876, 'CA', 'Melfort', 'Melfort', 52.8667, -104.618, 'P', 'PPL', 'CA.11', NULL, 5410, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6072206, 'CA', 'Mercier', 'Mercier', 45.3168, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.16', 10121, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6072350, 'CA', 'Merritt', 'Merritt', 50.1123, -120.794, 'P', 'PPL', 'CA.02', NULL, 7179, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6073363, 'CA', 'Midland', 'Midland', 44.7501, -79.883, 'P', 'PPL', 'CA.08', NULL, 31502, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6074377, 'CA', 'Milton', 'Milton', 43.5168, -79.8829, 'P', 'PPLA2', 'CA.08', 'CA.08.3524', 84362, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6075061, 'CA', 'Mirabel', 'Mirabel', 45.6501, -74.0825, 'P', 'PPL', 'CA.10', 'CA.10.15', 34626, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6075081, 'CA', 'Miramichi', 'Miramichi', 47.0289, -65.5019, 'P', 'PPL', 'CA.04', 'CA.04.1309', 18129, 'America/Moncton', 1, '2013-08-09 23:00:00', '2013-08-09 23:00:00'),
(6075357, 'CA', 'Mississauga', 'Mississauga', 43.5789, -79.6583, 'P', 'PPL', 'CA.08', NULL, 668549, 'America/Toronto', 1, '2012-06-30 23:00:00', '2012-06-30 23:00:00'),
(6076211, 'CA', 'Moncton', 'Moncton', 46.0945, -64.7965, 'P', 'PPL', 'CA.04', 'CA.04.1307', 87467, 'America/Moncton', 1, '2015-08-28 23:00:00', '2015-08-28 23:00:00'),
(6077128, 'CA', 'Mont-Laurier', 'Mont-Laurier', 46.5501, -75.4993, 'P', 'PPL', 'CA.10', 'CA.10.15', 13405, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6077243, 'CA', 'Montréal', 'Montreal', 45.5088, -73.5878, 'P', 'PPLA2', 'CA.10', 'CA.10.06', 1600000, 'America/Toronto', 1, '2015-09-04 23:00:00', '2015-09-04 23:00:00'),
(6077265, 'CA', 'Montréal-Ouest', 'Montreal-Ouest', 45.4529, -73.6492, 'P', 'PPL', 'CA.10', NULL, 5184, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6077315, 'CA', 'Mont-Royal', 'Mont-Royal', 45.5168, -73.6492, 'P', 'PPL', 'CA.10', 'CA.10.06', 18933, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6077340, 'CA', 'Mont-Saint-Hilaire', 'Mont-Saint-Hilaire', 45.5652, -73.1868, 'P', 'PPL', 'CA.10', 'CA.10.16', 15720, 'America/Toronto', 1, '2017-01-30 23:00:00', '2017-01-30 23:00:00'),
(6077445, 'CA', 'Mont-Tremblant', 'Mont-Tremblant', 46.2127, -74.5844, 'P', 'PPL', 'CA.10', 'CA.10.15', 8892, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6078112, 'CA', 'Moose Jaw', 'Moose Jaw', 50.4001, -105.534, 'P', 'PPL', 'CA.11', NULL, 32166, 'America/Regina', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6078447, 'CA', 'Morden', 'Morden', 49.1919, -98.1014, 'P', 'PPL', 'CA.03', NULL, 6395, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6078636, 'CA', 'Morinville', 'Morinville', 53.8001, -113.652, 'P', 'PPL', 'CA.01', NULL, 8108, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6082231, 'CA', 'Mount Pearl', 'Mount Pearl', 47.5166, -52.7813, 'P', 'PPL', 'CA.05', NULL, 24671, 'America/St_Johns', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6085772, 'CA', 'Nanaimo', 'Nanaimo', 49.1664, -123.94, 'P', 'PPL', 'CA.02', NULL, 84905, 'America/Vancouver', 1, '2013-06-22 23:00:00', '2013-06-22 23:00:00'),
(6086871, 'CA', 'Nelson', 'Nelson', 49.4999, -117.286, 'P', 'PPL', 'CA.02', NULL, 9813, 'America/Vancouver', 1, '2012-02-19 23:00:00', '2012-02-19 23:00:00'),
(6087029, 'CA', 'Nepean', 'Nepean', 45.3521, -75.7398, 'P', 'PPL', 'CA.08', NULL, 180000, 'America/Toronto', 1, '2017-11-13 23:00:00', '2017-11-13 23:00:00'),
(6087579, 'CA', 'New Glasgow', 'New Glasgow', 45.5834, -62.6486, 'P', 'PPL', 'CA.07', NULL, 20322, 'America/Halifax', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6087701, 'CA', 'Newmarket', 'Newmarket', 44.0501, -79.4663, 'P', 'PPL', 'CA.08', NULL, 74295, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(6087844, 'CA', 'New Westminster', 'New Westminster', 49.2068, -122.911, 'P', 'PPL', 'CA.02', NULL, 58549, 'America/Vancouver', 1, '2014-02-08 23:00:00', '2014-02-08 23:00:00'),
(6087892, 'CA', 'Niagara Falls', 'Niagara Falls', 43.1001, -79.0663, 'P', 'PPL', 'CA.08', NULL, 82000, 'America/Toronto', 1, '2009-06-06 23:00:00', '2009-06-06 23:00:00'),
(6088132, 'CA', 'Nicolet', 'Nicolet', 46.2168, -72.6158, 'P', 'PPL', 'CA.10', 'CA.10.17', 5257, 'America/Toronto', 1, '2016-02-22 23:00:00', '2016-02-22 23:00:00'),
(6089125, 'CA', 'Norfolk County', 'Norfolk County', 42.8334, -80.383, 'P', 'PPL', 'CA.08', NULL, 60847, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6089404, 'CA', 'North Battleford', 'North Battleford', 52.7797, -108.297, 'P', 'PPL', 'CA.11', NULL, 19440, 'America/Regina', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6089426, 'CA', 'North Bay', 'North Bay', 46.3168, -79.4663, 'P', 'PPL', 'CA.08', 'CA.08.3548', 50170, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6089661, 'CA', 'North Cowichan', 'North Cowichan', 48.8413, -123.686, 'P', 'PPL', 'CA.02', NULL, 32272, 'America/Vancouver', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6090405, 'CA', 'North Perth', 'North Perth', 43.7251, -80.9672, 'P', 'PPL', 'CA.08', NULL, 12254, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6090579, 'CA', 'North Saanich', 'North Saanich', 48.6663, -123.419, 'P', 'PPL', 'CA.02', NULL, 11089, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6090785, 'CA', 'North Vancouver', 'North Vancouver', 49.3164, -123.069, 'P', 'PPL', 'CA.02', 'CA.02.5909', 48000, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(6091104, 'CA', 'North York', 'North York', 43.7668, -79.4163, 'P', 'PPL', 'CA.08', NULL, 636000, 'America/Toronto', 1, '2011-12-06 23:00:00', '2011-12-06 23:00:00'),
(6091314, 'CA', 'Notre-Dame-de-Grâce', 'Notre-Dame-de-Grace', 45.4767, -73.6143, 'P', 'PPLX', 'CA.10', 'CA.10.06', 67000, 'America/Toronto', 1, '2017-11-28 23:00:00', '2017-11-28 23:00:00'),
(6091369, 'CA', 'Notre-Dame-de-l\'Île-Perrot', 'Notre-Dame-de-l\'Ile-Perrot', 45.3668, -73.9325, 'P', 'PPL', 'CA.10', 'CA.10.16', 9885, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6091422, 'CA', 'Notre-Dame-des-Prairies', 'Notre-Dame-des-Prairies', 46.0501, -73.4324, 'P', 'PPL', 'CA.10', 'CA.10.14', 8230, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6091919, 'CA', 'Oak Bay', 'Oak Bay', 48.4496, -123.303, 'P', 'PPL', 'CA.02', NULL, 18015, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6092122, 'CA', 'Oakville', 'Oakville', 43.4501, -79.6829, 'P', 'PPL', 'CA.08', NULL, 165697, 'America/Toronto', 1, '2012-01-14 23:00:00', '2012-01-14 23:00:00'),
(6093010, 'CA', 'Okotoks', 'Okotoks', 50.7289, -113.983, 'P', 'PPL', 'CA.01', NULL, 14826, 'America/Edmonton', 1, '2009-03-24 23:00:00', '2009-03-24 23:00:00'),
(6093347, 'CA', 'Olds', 'Olds', 51.7834, -114.102, 'P', 'PPL', 'CA.01', NULL, 6947, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094201, 'CA', 'Orangeville', 'Orangeville', 43.9168, -80.0997, 'P', 'PPL', 'CA.08', NULL, 32640, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094325, 'CA', 'Orillia', 'Orillia', 44.6087, -79.4207, 'P', 'PPL', 'CA.08', NULL, 30178, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(6094407, 'CA', 'Oromocto', 'Oromocto', 45.8351, -66.4792, 'P', 'PPL', 'CA.04', NULL, 8998, 'America/Moncton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094578, 'CA', 'Oshawa', 'Oshawa', 43.9001, -78.8496, 'P', 'PPL', 'CA.08', NULL, 247989, 'America/Toronto', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6094817, 'CA', 'Ottawa', 'Ottawa', 45.4112, -75.6981, 'P', 'PPLC', 'CA.08', NULL, 812129, 'America/Toronto', 1, '2016-01-19 23:00:00', '2016-01-19 23:00:00'),
(6094884, 'CA', 'Otterburn Park', 'Otterburn Park', 45.5334, -73.2159, 'P', 'PPL', 'CA.10', 'CA.10.16', 8464, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6095645, 'CA', 'Owen Sound', 'Owen Sound', 44.5672, -80.9435, 'P', 'PPL', 'CA.08', NULL, 22625, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(6098642, 'CA', 'Parksville', 'Parksville', 49.3195, -124.316, 'P', 'PPL', 'CA.02', 'CA.02.5921', 12000, 'America/Vancouver', 1, '2016-08-31 23:00:00', '2016-08-31 23:00:00'),
(6098747, 'CA', 'Parry Sound', 'Parry Sound', 45.3473, -80.0353, 'P', 'PPL', 'CA.08', 'CA.08.3549', 6469, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6100069, 'CA', 'Peace River', 'Peace River', 56.2371, -117.292, 'P', 'PPL', 'CA.01', NULL, 5340, 'America/Edmonton', 1, '2016-07-01 23:00:00', '2016-07-01 23:00:00'),
(6100832, 'CA', 'Pembroke', 'Pembroke', 45.8168, -77.1162, 'P', 'PPL', 'CA.08', NULL, 15551, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6101141, 'CA', 'Penticton', 'Penticton', 49.4806, -119.586, 'P', 'PPL', 'CA.02', NULL, 37721, 'America/Vancouver', 1, '2017-12-23 23:00:00', '2017-12-23 23:00:00'),
(6101546, 'CA', 'Perth', 'Perth', 44.9001, -76.2494, 'P', 'PPL', 'CA.08', NULL, 6481, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6101606, 'CA', 'Petawawa', 'Petawawa', 45.8945, -77.2801, 'P', 'PPL', 'CA.08', NULL, 15988, 'America/Toronto', 1, '2013-10-25 23:00:00', '2013-10-25 23:00:00'),
(6101645, 'CA', 'Peterborough', 'Peterborough', 44.3001, -78.3162, 'P', 'PPL', 'CA.08', NULL, 75877, 'America/Toronto', 1, '2016-07-01 23:00:00', '2016-07-01 23:00:00'),
(6103581, 'CA', 'Petrolia', 'Petrolia', 42.8668, -82.1498, 'P', 'PPL', 'CA.08', NULL, 5453, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6104111, 'CA', 'Pickering', 'Pickering', 43.9001, -79.1329, 'P', 'PPL', 'CA.08', NULL, 87838, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6104876, 'CA', 'Pincourt', 'Pincourt', 45.3834, -73.9825, 'P', 'PPL', 'CA.10', 'CA.10.16', 11197, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6105815, 'CA', 'Pitt Meadows', 'Pitt Meadows', 49.2212, -122.69, 'P', 'PPL', 'CA.02', NULL, 17410, 'America/Vancouver', 1, '2010-04-14 23:00:00', '2010-04-14 23:00:00'),
(6107272, 'CA', 'Pointe-Calumet', 'Pointe-Calumet', 45.5001, -73.9659, 'P', 'PPL', 'CA.10', 'CA.10.15', 6396, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6107325, 'CA', 'Pointe-Claire', 'Pointe-Claire', 45.4487, -73.8167, 'P', 'PPL', 'CA.10', 'CA.10.06', 30161, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6109273, 'CA', 'Ponoka', 'Ponoka', 52.6768, -113.581, 'P', 'PPL', 'CA.01', NULL, 6656, 'America/Edmonton', 1, '2010-12-15 23:00:00', '2010-12-15 23:00:00'),
(6110611, 'CA', 'Pont Rouge', 'Pont Rouge', 48.8833, -72.0825, 'P', 'PPL', 'CA.10', 'CA.10.02', 7518, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6111529, 'CA', 'Portage la Prairie', 'Portage la Prairie', 49.9728, -98.2926, 'P', 'PPL', 'CA.03', NULL, 12957, 'America/Winnipeg', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6111632, 'CA', 'Port Alberni', 'Port Alberni', 49.2413, -124.803, 'P', 'PPL', 'CA.02', NULL, 21282, 'America/Vancouver', 1, '2017-11-08 23:00:00', '2017-11-08 23:00:00'),
(6111696, 'CA', 'Port-Cartier', 'Port-Cartier', 50.0334, -66.8654, 'P', 'PPL', 'CA.10', 'CA.10.09', 5851, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6111704, 'CA', 'Port Colborne', 'Port Colborne', 42.9001, -79.2329, 'P', 'PPL', 'CA.08', NULL, 18599, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6111962, 'CA', 'Port Moody', 'Port Moody', 49.283, -122.853, 'P', 'PPL', 'CA.02', NULL, 27512, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6112608, 'CA', 'Powell River', 'Powell River', 49.8328, -124.524, 'P', 'PPL', 'CA.02', 'CA.02.5927', 12779, 'America/Vancouver', 1, '2016-04-22 23:00:00', '2016-04-22 23:00:00'),
(6113198, 'CA', 'Prévost', 'Prevost', 45.8668, -74.0825, 'P', 'PPL', 'CA.10', 'CA.10.15', 10132, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6113335, 'CA', 'Prince Albert', 'Prince Albert', 53.2001, -105.768, 'P', 'PPL', 'CA.11', NULL, 34609, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6113355, 'CA', 'Prince Edward', 'Prince Edward', 44.0001, -77.2495, 'P', 'PPL', 'CA.08', NULL, 25496, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6113365, 'CA', 'Prince George', 'Prince George', 53.9166, -122.753, 'P', 'PPL', 'CA.02', NULL, 65558, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6113406, 'CA', 'Prince Rupert', 'Prince Rupert', 54.3151, -130.321, 'P', 'PPL', 'CA.02', 'CA.02.5947', 14708, 'America/Vancouver', 1, '2017-12-30 23:00:00', '2017-12-30 23:00:00'),
(6113466, 'CA', 'Princeville', 'Princeville', 45.7668, -61.2985, 'P', 'PPL', 'CA.07', NULL, 5571, 'America/Halifax', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6115187, 'CA', 'Quesnel', 'Quesnel', 52.9784, -122.493, 'P', 'PPL', 'CA.02', NULL, 13788, 'America/Vancouver', 1, '2017-12-31 23:00:00', '2017-12-31 23:00:00'),
(6115355, 'CA', 'Quinte West', 'Quinte West', 44.1834, -77.5662, 'P', 'PPL', 'CA.08', NULL, 42697, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6117611, 'CA', 'Rawdon', 'Rawdon', 46.0501, -73.7159, 'P', 'PPL', 'CA.10', 'CA.10.14', 10400, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6117731, 'CA', 'Rayside-Balfour', 'Rayside-Balfour', 46.6087, -81.2076, 'P', 'PPL', 'CA.08', NULL, 16050, 'America/Toronto', 1, '2013-07-19 23:00:00', '2013-07-19 23:00:00'),
(6118158, 'CA', 'Red Deer', 'Red Deer', 52.2668, -113.802, 'P', 'PPL', 'CA.01', NULL, 73593, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6119109, 'CA', 'Regina', 'Regina', 50.4501, -104.618, 'P', 'PPLA', 'CA.11', NULL, 176183, 'America/Regina', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(6119448, 'CA', 'Renfrew', 'Renfrew', 45.4668, -76.6827, 'P', 'PPL', 'CA.08', NULL, 8018, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6119518, 'CA', 'Repentigny', 'Repentigny', 45.7422, -73.4501, 'P', 'PPL', 'CA.10', 'CA.10.14', 76237, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6121621, 'CA', 'Revelstoke', 'Revelstoke', 50.9971, -118.195, 'P', 'PPL', 'CA.02', 'CA.02.5939', 7533, 'America/Vancouver', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6122037, 'CA', 'Richelieu', 'Richelieu', 45.4434, -73.246, 'P', 'PPL', 'CA.10', 'CA.10.16', 5208, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6122085, 'CA', 'Richmond', 'Richmond', 49.17, -123.137, 'P', 'PPL', 'CA.02', NULL, 182000, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6122091, 'CA', 'Richmond Hill', 'Richmond Hill', 43.8711, -79.4372, 'P', 'PPL', 'CA.08', 'CA.08.3519', 185541, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6125653, 'CA', 'Roberval', 'Roberval', 48.5168, -72.2324, 'P', 'PPL', 'CA.10', 'CA.10.02', 9287, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6126305, 'CA', 'Rock Forest', 'Rock Forest', 45.357, -71.9968, 'P', 'PPLX', 'CA.10', 'CA.10.05', 35500, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6126749, 'CA', 'Rocky Mountain House', 'Rocky Mountain House', 52.3668, -114.919, 'P', 'PPL', 'CA.01', NULL, 6527, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6127681, 'CA', 'Rosemère', 'Rosemere', 45.6334, -73.7992, 'P', 'PPL', 'CA.10', 'CA.10.15', 14173, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6128577, 'CA', 'Rouyn-Noranda', 'Rouyn-Noranda', 48.2366, -79.0231, 'P', 'PPL', 'CA.10', 'CA.10.08', 24023, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137063, 'CA', 'Sackville', 'Sackville', 45.9188, -64.3846, 'P', 'PPL', 'CA.04', NULL, 5411, 'America/Moncton', 1, '2010-06-07 23:00:00', '2010-06-07 23:00:00'),
(6137270, 'CA', 'Saguenay', 'Saguenay', 48.4168, -71.0657, 'P', 'PPL', 'CA.10', 'CA.10.02', 143692, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137489, 'CA', 'Saint-Basile-le-Grand', 'Saint-Basile-le-Grand', 45.5334, -73.2825, 'P', 'PPL', 'CA.10', 'CA.10.16', 15605, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137540, 'CA', 'Saint-Bruno-de-Montarville', 'Saint-Bruno-de-Montarville', 45.5334, -73.3492, 'P', 'PPL', 'CA.10', NULL, 24388, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6137633, 'CA', 'Saint-Constant', 'Saint-Constant', 45.3668, -73.5659, 'P', 'PPL', 'CA.10', 'CA.10.16', 23957, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137696, 'CA', 'Sainte-Adèle', 'Sainte-Adele', 45.9501, -74.1325, 'P', 'PPL', 'CA.10', 'CA.10.15', 10634, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6137702, 'CA', 'Sainte-Agathe-des-Monts', 'Sainte-Agathe-des-Monts', 46.0501, -74.2825, 'P', 'PPL', 'CA.10', 'CA.10.15', 5706, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6137733, 'CA', 'Sainte-Anne-de-Bellevue', 'Sainte-Anne-de-Bellevue', 45.4062, -73.9456, 'P', 'PPL', 'CA.10', NULL, 5197, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6137749, 'CA', 'Sainte-Anne-des-Monts', 'Sainte-Anne-des-Monts', 49.124, -66.4924, 'P', 'PPL', 'CA.10', 'CA.10.11', 5602, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137753, 'CA', 'Sainte-Anne-des-Plaines', 'Sainte-Anne-des-Plaines', 45.7647, -73.8116, 'P', 'PPL', 'CA.10', 'CA.10.15', 10680, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137780, 'CA', 'Sainte-Catherine', 'Sainte-Catherine', 45.4001, -73.5825, 'P', 'PPL', 'CA.10', 'CA.10.16', 16762, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6137781, 'CA', 'Sainte-Catherine', 'Sainte-Catherine', 46.3184, -72.5663, 'P', 'PPL', 'CA.10', 'CA.10.04', 16211, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137941, 'CA', 'Sainte-Julie', 'Sainte-Julie', 45.5834, -73.3325, 'P', 'PPL', 'CA.10', 'CA.10.16', 29019, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138032, 'CA', 'Sainte-Marthe-sur-le-Lac', 'Sainte-Marthe-sur-le-Lac', 45.5334, -73.9325, 'P', 'PPL', 'CA.10', 'CA.10.15', 11311, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138121, 'CA', 'Sainte-Thérèse', 'Sainte-Therese', 45.6392, -73.8276, 'P', 'PPL', 'CA.10', 'CA.10.15', 25224, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138175, 'CA', 'Saint-Eustache', 'Saint-Eustache', 45.565, -73.9055, 'P', 'PPL', 'CA.10', 'CA.10.15', 42062, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138201, 'CA', 'Saint-Félicien', 'Saint-Felicien', 48.6501, -72.4491, 'P', 'PPL', 'CA.10', 'CA.10.02', 8088, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6138210, 'CA', 'Saint-Félix-de-Valois', 'Saint-Felix-de-Valois', 46.1698, -73.4252, 'P', 'PPL', 'CA.10', 'CA.10.14', 6029, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6138352, 'CA', 'Saint-Hippolyte', 'Saint-Hippolyte', 45.9334, -74.0159, 'P', 'PPL', 'CA.10', 'CA.10.15', 8083, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138374, 'CA', 'Saint-Hyacinthe', 'Saint-Hyacinthe', 45.6308, -72.957, 'P', 'PPL', 'CA.10', 'CA.10.16', 50326, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138495, 'CA', 'Saint-Jean-sur-Richelieu', 'Saint-Jean-sur-Richelieu', 45.3071, -73.2626, 'P', 'PPL', 'CA.10', 'CA.10.16', 71613, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138501, 'CA', 'Saint-Jérôme', 'Saint-Jerome', 45.7804, -74.0036, 'P', 'PPL', 'CA.10', 'CA.10.15', 54948, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138517, 'CA', 'Saint John', 'Saint John', 45.2727, -66.0677, 'P', 'PPL', 'CA.04', 'CA.04.1301', 87857, 'America/Moncton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6138573, 'CA', 'Saint-Joseph-du-Lac', 'Saint-Joseph-du-Lac', 45.5334, -73.9992, 'P', 'PPL', 'CA.10', 'CA.10.15', 6195, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138610, 'CA', 'Saint-Laurent', 'Saint-Laurent', 45.5001, -73.6658, 'P', 'PPLX', 'CA.10', 'CA.10.06', 77391, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138617, 'CA', 'Saint-Lazare', 'Saint-Lazare', 45.4001, -74.1326, 'P', 'PPL', 'CA.10', 'CA.10.16', 17016, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138625, 'CA', 'Saint-Léonard', 'Saint-Leonard', 45.5877, -73.595, 'P', 'PPLX', 'CA.10', 'CA.10.06', 73423, 'America/Toronto', 1, '2013-07-17 23:00:00', '2013-07-17 23:00:00'),
(6138643, 'CA', 'Saint-Lin-Laurentides', 'Saint-Lin-Laurentides', 45.8501, -73.7659, 'P', 'PPL', 'CA.10', 'CA.10.14', 14159, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138916, 'CA', 'Saint-Pie', 'Saint-Pie', 45.5028, -72.9089, 'P', 'PPLA3', 'CA.10', 'CA.10.16', 5438, 'America/Toronto', 1, '2016-06-30 23:00:00', '2016-06-30 23:00:00'),
(6138980, 'CA', 'Saint-Raymond', 'Saint-Raymond', 45.467, -73.6095, 'P', 'PPL', 'CA.10', NULL, 9273, 'America/Toronto', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(6139045, 'CA', 'Saint-Sauveur', 'Saint-Sauveur', 45.8869, -74.1794, 'P', 'PPL', 'CA.10', 'CA.10.15', 9191, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139216, 'CA', 'Saint-Zotique', 'Saint-Zotique', 45.2501, -74.2492, 'P', 'PPL', 'CA.10', 'CA.10.16', 6773, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139289, 'CA', 'Salaberry-de-Valleyfield', 'Salaberry-de-Valleyfield', 45.2501, -74.1325, 'P', 'PPL', 'CA.10', 'CA.10.16', 38662, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139416, 'CA', 'Salmon Arm', 'Salmon Arm', 50.6998, -119.302, 'P', 'PPL', 'CA.02', NULL, 16205, 'America/Vancouver', 1, '2008-05-12 23:00:00', '2008-05-12 23:00:00'),
(6141190, 'CA', 'Sarnia', 'Sarnia', 42.9787, -82.4041, 'P', 'PPL', 'CA.08', 'CA.08.3538', 82998, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6141256, 'CA', 'Saskatoon', 'Saskatoon', 52.1324, -106.669, 'P', 'PPL', 'CA.11', NULL, 198958, 'America/Regina', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6141439, 'CA', 'Sault Ste. Marie', 'Sault Ste. Marie', 46.5168, -84.3333, 'P', 'PPLA2', 'CA.08', 'CA.08.3557', 74948, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6143367, 'CA', 'Sechelt', 'Sechelt', 49.4751, -123.759, 'P', 'PPL', 'CA.02', 'CA.02.5929', 5977, 'America/Vancouver', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6144054, 'CA', 'Selkirk', 'Selkirk', 50.1436, -96.8845, 'P', 'PPL', 'CA.03', NULL, 9653, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6144312, 'CA', 'Sept-Îles', 'Sept-Iles', 50.2001, -66.3821, 'P', 'PPL', 'CA.10', 'CA.10.09', 22582, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6145489, 'CA', 'Shawinigan', 'Shawinigan', 46.5667, -72.7491, 'P', 'PPLA3', 'CA.10', 'CA.10.04', 49161, 'America/Toronto', 1, '2016-11-12 23:00:00', '2016-11-12 23:00:00'),
(6146143, 'CA', 'Sherbrooke', 'Sherbrooke', 45.4001, -71.8991, 'P', 'PPL', 'CA.10', 'CA.10.05', 129447, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6146279, 'CA', 'Sherwood Park', 'Sherwood Park', 53.5168, -113.319, 'P', 'PPL', 'CA.01', NULL, 55063, 'America/Edmonton', 1, '2007-02-12 23:00:00', '2007-02-12 23:00:00'),
(6147962, 'CA', 'Simcoe', 'Simcoe', 42.8334, -80.2997, 'P', 'PPL', 'CA.08', NULL, 13922, 'America/Toronto', 1, '2017-12-12 23:00:00', '2017-12-12 23:00:00'),
(6149374, 'CA', 'Slave Lake', 'Slave Lake', 55.2834, -114.769, 'P', 'PPL', 'CA.01', NULL, 7661, 'America/Edmonton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6149996, 'CA', 'Smithers', 'Smithers', 54.7804, -127.174, 'P', 'PPL', 'CA.02', NULL, 5438, 'America/Vancouver', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6150174, 'CA', 'Smiths Falls', 'Smiths Falls', 44.9045, -76.0233, 'P', 'PPL', 'CA.08', 'CA.08.3509', 10553, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6151264, 'CA', 'Sooke', 'Sooke', 48.3746, -123.728, 'P', 'PPL', 'CA.02', NULL, 6145, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6152244, 'CA', 'South Huron', 'South Huron', 43.3168, -81.5165, 'P', 'PPL', 'CA.08', NULL, 9982, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6154383, 'CA', 'Spruce Grove', 'Spruce Grove', 53.5334, -113.919, 'P', 'PPL', 'CA.01', NULL, 17767, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6155033, 'CA', 'St. Albert', 'St. Albert', 53.6334, -113.635, 'P', 'PPL', 'CA.01', NULL, 57719, 'America/Edmonton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6155721, 'CA', 'St. Catharines', 'St. Catharines', 43.1713, -79.2427, 'P', 'PPL', 'CA.08', 'CA.08.3526', 131989, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6156102, 'CA', 'Steinbach', 'Steinbach', 49.5258, -96.6845, 'P', 'PPL', 'CA.03', NULL, 9607, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6156244, 'CA', 'Stephenville', 'Stephenville', 48.55, -58.5818, 'P', 'PPL', 'CA.05', NULL, 6278, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6156307, 'CA', 'Stettler', 'Stettler', 52.3168, -112.719, 'P', 'PPL', 'CA.01', NULL, 5494, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6157536, 'CA', 'Stony Plain', 'Stony Plain', 53.5334, -114.002, 'P', 'PPL', 'CA.01', NULL, 8939, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6157977, 'CA', 'Stratford', 'Stratford', 43.3668, -80.9497, 'P', 'PPL', 'CA.08', NULL, 30233, 'America/Toronto', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6158023, 'CA', 'Strathmore', 'Strathmore', 51.0501, -113.385, 'P', 'PPL', 'CA.01', NULL, 10009, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6158357, 'CA', 'St. Thomas', 'St. Thomas', 42.7736, -81.1804, 'P', 'PPL', 'CA.08', NULL, 36110, 'America/Toronto', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6159232, 'CA', 'Summerland', 'Summerland', 49.5998, -119.669, 'P', 'PPL', 'CA.02', NULL, 6292, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6159244, 'CA', 'Summerside', 'Summerside', 46.3959, -63.7876, 'P', 'PPL', 'CA.09', 'CA.09.1103', 14808, 'America/Halifax', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6159905, 'CA', 'Surrey', 'Surrey', 49.1063, -122.825, 'P', 'PPL', 'CA.02', NULL, 394976, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6160603, 'CA', 'Swift Current', 'Swift Current', 50.2834, -107.801, 'P', 'PPL', 'CA.11', NULL, 14703, 'America/Swift_Current', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6160806, 'CA', 'Sylvan Lake', 'Sylvan Lake', 52.311, -114.084, 'P', 'PPL', 'CA.01', 'CA.01.4808012', 10518, 'America/Edmonton', 1, '2018-01-15 23:00:00', '2018-01-15 23:00:00'),
(6160919, 'CA', 'Taber', 'Taber', 49.787, -112.146, 'P', 'PPL', 'CA.01', NULL, 8163, 'America/Edmonton', 1, '2012-07-23 23:00:00', '2012-07-23 23:00:00'),
(6162659, 'CA', 'Temiskaming Shores', 'Temiskaming Shores', 47.4938, -79.7153, 'P', 'PPL', 'CA.08', NULL, 10442, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6162949, 'CA', 'Terrace', 'Terrace', 54.5163, -128.603, 'P', 'PPL', 'CA.02', NULL, 19443, 'America/Vancouver', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6163012, 'CA', 'Terrebonne', 'Terrebonne', 45.7, -73.6473, 'P', 'PPL', 'CA.10', 'CA.10.14', 94703, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6164499, 'CA', 'The Pas', 'The Pas', 53.8251, -101.254, 'P', 'PPL', 'CA.03', NULL, 6055, 'America/Winnipeg', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6165406, 'CA', 'Thompson', 'Thompson', 55.7435, -97.8558, 'P', 'PPL', 'CA.03', NULL, 12467, 'America/Winnipeg', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6165719, 'CA', 'Thorold', 'Thorold', 43.1168, -79.1996, 'P', 'PPL', 'CA.08', NULL, 18224, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6166142, 'CA', 'Thunder Bay', 'Thunder Bay', 48.382, -89.2502, 'P', 'PPL', 'CA.08', 'CA.08.3558', 99334, 'America/Thunder_Bay', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6166739, 'CA', 'Timmins', 'Timmins', 48.4669, -81.3331, 'P', 'PPL', 'CA.08', NULL, 42997, 'America/Toronto', 1, '2017-11-11 23:00:00', '2017-11-11 23:00:00'),
(6167865, 'CA', 'Toronto', 'Toronto', 43.7001, -79.4163, 'P', 'PPLA', 'CA.08', NULL, 2600000, 'America/Toronto', 1, '2015-04-23 23:00:00', '2015-04-23 23:00:00'),
(6168326, 'CA', 'Trail', 'Trail', 49.0998, -117.702, 'P', 'PPL', 'CA.02', NULL, 9707, 'America/Vancouver', 1, '2018-01-02 23:00:00', '2018-01-02 23:00:00'),
(6169141, 'CA', 'Trois-Rivières', 'Trois-Rivieres', 46.3451, -72.5477, 'P', 'PPL', 'CA.10', 'CA.10.04', 119693, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6169587, 'CA', 'Truro', 'Truro', 45.3669, -63.2654, 'P', 'PPL', 'CA.07', NULL, 20650, 'America/Halifax', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6172932, 'CA', 'Uxbridge', 'Uxbridge', 44.1001, -79.1163, 'P', 'PPL', 'CA.08', NULL, 11531, 'America/Toronto', 1, '2014-12-31 23:00:00', '2014-12-31 23:00:00'),
(6173012, 'CA', 'Val-des-Monts', 'Val-des-Monts', 45.6501, -75.666, 'P', 'PPL', 'CA.10', 'CA.10.07', 9539, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6173017, 'CA', 'Val-d\'Or', 'Val-d\'Or', 48.0974, -77.7974, 'P', 'PPL', 'CA.10', 'CA.10.08', 31123, 'America/Toronto', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(6173331, 'CA', 'Vancouver', 'Vancouver', 49.2497, -123.119, 'P', 'PPL', 'CA.02', NULL, 600000, 'America/Vancouver', 1, '2016-07-17 23:00:00', '2016-07-17 23:00:00'),
(6173508, 'CA', 'Varennes', 'Varennes', 45.6834, -73.4325, 'P', 'PPL', 'CA.10', 'CA.10.16', 20950, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6173570, 'CA', 'Vaudreuil-Dorion', 'Vaudreuil-Dorion', 45.4001, -74.0325, 'P', 'PPL', 'CA.10', 'CA.10.16', 25789, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6173577, 'CA', 'Vaughan', 'Vaughan', 43.8361, -79.4983, 'P', 'PPL', 'CA.08', NULL, 238866, 'America/Toronto', 1, '2011-12-06 23:00:00', '2011-12-06 23:00:00'),
(6173635, 'CA', 'Vegreville', 'Vegreville', 53.5001, -112.052, 'P', 'PPL', 'CA.01', NULL, 5678, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6173864, 'CA', 'Vernon', 'Vernon', 50.2673, -119.273, 'P', 'PPL', 'CA.02', 'CA.02.5937', 47274, 'America/Vancouver', 1, '2015-01-10 23:00:00', '2015-01-10 23:00:00'),
(6174041, 'CA', 'Victoria', 'Victoria', 48.4329, -123.369, 'P', 'PPLA', 'CA.02', NULL, 289625, 'America/Vancouver', 1, '2015-06-03 23:00:00', '2015-06-03 23:00:00'),
(6174151, 'CA', 'Victoriaville', 'Victoriaville', 46.0501, -71.9658, 'P', 'PPL', 'CA.10', 'CA.10.17', 34426, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6175059, 'CA', 'Wainwright', 'Wainwright', 52.8348, -110.853, 'P', 'PPL', 'CA.01', NULL, 5380, 'America/Edmonton', 1, '2016-12-10 23:00:00', '2016-12-10 23:00:00'),
(6176421, 'CA', 'Wasaga Beach', 'Wasaga Beach', 44.5168, -80.0164, 'P', 'PPL', 'CA.08', NULL, 7567, 'America/Toronto', 1, '2010-03-10 23:00:00', '2010-03-10 23:00:00'),
(6176823, 'CA', 'Waterloo', 'Waterloo', 43.4668, -80.5164, 'P', 'PPL', 'CA.08', NULL, 97475, 'America/Toronto', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6177869, 'CA', 'Welland', 'Welland', 42.9834, -79.2496, 'P', 'PPL', 'CA.08', NULL, 50331, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6178582, 'CA', 'West End', 'West End', 49.2833, -123.133, 'P', 'PPL', 'CA.02', NULL, 44560, 'America/Vancouver', 1, '2013-09-08 23:00:00', '2013-09-08 23:00:00'),
(6179138, 'CA', 'Westlock', 'Westlock', 54.1502, -113.869, 'P', 'PPL', 'CA.01', NULL, 5067, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6179226, 'CA', 'Westmount', 'Westmount', 45.4834, -73.5992, 'P', 'PPL', 'CA.10', NULL, 20494, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6179602, 'CA', 'Wetaskiwin', 'Wetaskiwin', 52.9668, -113.369, 'P', 'PPL', 'CA.01', NULL, 11302, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6179652, 'CA', 'Weyburn', 'Weyburn', 49.6668, -103.851, 'P', 'PPL', 'CA.11', NULL, 9362, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6180144, 'CA', 'Whistler', 'Whistler', 50.1164, -122.969, 'P', 'PPL', 'CA.02', NULL, 10600, 'America/Vancouver', 1, '2015-05-22 23:00:00', '2015-05-22 23:00:00'),
(6180285, 'CA', 'Whitecourt', 'Whitecourt', 54.1502, -115.685, 'P', 'PPL', 'CA.01', NULL, 8763, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6180550, 'CA', 'Whitehorse', 'Whitehorse', 60.7161, -135.054, 'P', 'PPLA', 'CA.12', NULL, 23272, 'America/Whitehorse', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(6180961, 'CA', 'White Rock', 'White Rock', 49.0164, -122.803, 'P', 'PPL', 'CA.02', 'CA.02.5915', 66450, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(6182212, 'CA', 'Williams Lake', 'Williams Lake', 52.1415, -122.145, 'P', 'PPL', 'CA.02', 'CA.02.5941', 14168, 'America/Vancouver', 1, '2017-12-22 23:00:00', '2017-12-22 23:00:00'),
(6182959, 'CA', 'Windsor', 'Windsor', 45.5668, -71.9991, 'P', 'PPL', 'CA.10', 'CA.10.05', 5408, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6182962, 'CA', 'Windsor', 'Windsor', 42.3001, -83.0165, 'P', 'PPL', 'CA.08', NULL, 278013, 'America/Toronto', 1, '2012-05-03 23:00:00', '2012-05-03 23:00:00'),
(6183204, 'CA', 'Winkler', 'Winkler', 49.1817, -97.941, 'P', 'PPL', 'CA.03', NULL, 8270, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6183235, 'CA', 'Winnipeg', 'Winnipeg', 49.8844, -97.147, 'P', 'PPLA', 'CA.03', NULL, 632063, 'America/Winnipeg', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6184365, 'CA', 'Woodstock', 'Woodstock', 43.1334, -80.7497, 'P', 'PPLA2', 'CA.08', 'CA.08.3532', 33892, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6185217, 'CA', 'Yarmouth', 'Yarmouth', 43.8335, -66.1156, 'P', 'PPL', 'CA.07', NULL, 7500, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6185377, 'CA', 'Yellowknife', 'Yellowknife', 62.4541, -114.372, 'P', 'PPLA', 'CA.13', NULL, 15865, 'America/Yellowknife', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6185607, 'CA', 'Yorkton', 'Yorkton', 51.2167, -102.468, 'P', 'PPL', 'CA.11', NULL, 15669, 'America/Regina', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6295855, 'CA', 'Beauceville', 'Beauceville', 46.2178, -70.7787, 'P', 'PPL', 'CA.10', 'CA.10.12', 6226, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6324729, 'CA', 'Halifax', 'Halifax', 44.6453, -63.5724, 'P', 'PPLA', 'CA.07', NULL, 359111, 'America/Halifax', 1, '2014-07-17 23:00:00', '2014-07-17 23:00:00'),
(6324733, 'CA', 'St. John\'s', 'St. John\'s', 47.5649, -52.7093, 'P', 'PPLA', 'CA.05', NULL, 99182, 'America/St_Johns', 1, '2014-07-20 23:00:00', '2014-07-20 23:00:00'),
(6325494, 'CA', 'Québec', 'Quebec', 46.8123, -71.2145, 'P', 'PPLA', 'CA.10', NULL, 528595, 'America/Toronto', 1, '2014-11-05 23:00:00', '2014-11-05 23:00:00'),
(6325521, 'CA', 'Lévis', 'Levis', 46.8033, -71.1779, 'P', 'PPL', 'CA.10', 'CA.10.12', 126396, 'America/Blanc-Sablon', 1, '2015-09-03 23:00:00', '2015-09-03 23:00:00'),
(6325529, 'CA', 'Montmagny', 'Montmagny', 46.9804, -70.5549, 'P', 'PPL', 'CA.10', 'CA.10.12', 11724, 'America/Toronto', 1, '2017-04-02 23:00:00', '2017-04-02 23:00:00'),
(6354895, 'CA', 'Rimouski', 'Rimouski', 48.4488, -68.524, 'P', 'PPL', 'CA.10', 'CA.10.01', 42240, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6354897, 'CA', 'Rivière-du-Loup', 'Riviere-du-Loup', 47.827, -69.5424, 'P', 'PPL', 'CA.10', 'CA.10.01', 18586, 'America/Toronto', 1, '2013-08-23 23:00:00', '2013-08-23 23:00:00'),
(6354908, 'CA', 'Sydney', 'Sydney', 46.1351, -60.1831, 'P', 'PPL', 'CA.07', 'CA.07.CAPE BRETON CO', 105968, 'America/Glace_Bay', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(6534203, 'CA', 'L\'Ancienne-Lorette', 'L\'Ancienne-Lorette', 46.7939, -71.3519, 'P', 'PPL', 'CA.10', NULL, 16516, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6545023, 'CA', 'Edmundston', 'Edmundston', 47.3737, -68.3251, 'P', 'PPL', 'CA.04', NULL, 16643, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6620953, 'CA', 'Saint-Georges', 'Saint-Georges', 46.1135, -70.6653, 'P', 'PPL', 'CA.10', 'CA.10.12', 31173, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6639619, 'CA', 'Sainte Catherine de la Jacques Cartier', 'Sainte Catherine de la Jacques Cartier', 46.8524, -71.6206, 'P', 'PPL', 'CA.10', 'CA.10.03', 5021, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6690232, 'CA', 'Baie-Saint-Paul', 'Baie-Saint-Paul', 47.4411, -70.4986, 'P', 'PPL', 'CA.10', 'CA.10.03', 7288, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6693228, 'AR', 'Balvanera', 'Balvanera', -34.6103, -58.3977, 'P', 'PPLX', 'AR.07', 'AR.07.02003', 152198, 'America/Argentina/Buenos_Aires', 1, '2017-12-05 23:00:00', '2017-12-05 23:00:00'),
(6693230, 'AR', 'Villa Santa Rita', 'Villa Santa Rita', -34.6108, -58.481, 'P', 'PPLX', 'AR.07', 'AR.07.02011', 34000, 'America/Argentina/Buenos_Aires', 1, '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(6696258, 'CA', 'Campbellton', 'Campbellton', 48.0075, -66.6727, 'P', 'PPL', 'CA.04', 'CA.04.11', 7384, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6696259, 'CA', 'Bathurst', 'Bathurst', 47.6181, -65.6511, 'P', 'PPL', 'CA.04', NULL, 12714, 'America/Moncton', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(6696260, 'CA', 'Matane', 'Matane', 48.8286, -67.522, 'P', 'PPL', 'CA.10', 'CA.10.01', 14812, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6942553, 'CA', 'Paris', 'Paris', 43.2, -80.3833, 'P', 'PPL', 'CA.08', NULL, 11177, 'America/Toronto', 1, '2009-06-24 23:00:00', '2009-06-24 23:00:00'),
(6943488, 'CA', 'Amqui', 'Amqui', 48.4638, -67.4313, 'P', 'PPL', 'CA.10', 'CA.10.01', 6261, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00');
INSERT INTO `ciudades` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(6943811, 'CA', 'Chandler', 'Chandler', 48.3493, -64.6793, 'P', 'PPL', 'CA.10', 'CA.10.11', 7914, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6943827, 'CA', 'Thetford-Mines', 'Thetford-Mines', 46.0937, -71.3054, 'P', 'PPL', 'CA.10', 'CA.10.12', 25704, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6944113, 'CA', 'Mont-Joli', 'Mont-Joli', 48.5839, -68.1921, 'P', 'PPL', 'CA.10', 'CA.10.01', 6568, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6945986, 'CA', 'La Malbaie', 'La Malbaie', 47.654, -70.1527, 'P', 'PPL', 'CA.10', 'CA.10.03', 8959, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6945989, 'CA', 'Sainte-Marie', 'Sainte-Marie', 46.434, -71.0117, 'P', 'PPL', 'CA.10', 'CA.10.12', 11584, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6945991, 'CA', 'Plessisville', 'Plessisville', 46.2186, -71.762, 'P', 'PPL', 'CA.10', 'CA.10.04', 6677, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6948711, 'CA', 'Scarborough', 'Scarborough', 43.7722, -79.2567, 'P', 'PPL', 'CA.08', NULL, 600000, 'America/Toronto', 1, '2015-01-30 23:00:00', '2015-01-30 23:00:00'),
(7116866, 'AR', 'Villa Mercedes', 'Villa Mercedes', -33.6757, -65.4578, 'P', 'PPL', 'AR.19', 'AR.19.74035', 96781, 'America/Argentina/San_Luis', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(7280414, 'CA', 'Cole Harbour', 'Cole Harbour', 44.6724, -63.4751, 'P', 'PPLX', 'CA.07', NULL, 20000, 'America/Halifax', 1, '2010-03-04 23:00:00', '2010-03-04 23:00:00'),
(7281931, 'CA', 'Okanagan', 'Okanagan', 50.3639, -119.35, 'P', 'PPLQ', 'CA.02', NULL, 297601, 'America/Vancouver', 1, '2012-01-16 23:00:00', '2012-01-16 23:00:00'),
(7281936, 'CA', 'West Kelowna', 'West Kelowna', 49.8625, -119.583, 'P', 'PPL', 'CA.02', NULL, 28793, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7284819, 'AR', 'La Punta', 'La Punta', -33.1837, -66.3127, 'P', 'PPLL', 'AR.19', 'AR.19.74056', 15000, 'America/Argentina/San_Luis', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(7303783, 'CA', 'Sydney Mines', 'Sydney Mines', 46.2367, -60.2177, 'P', 'PPL', 'CA.07', NULL, 7312, 'America/Glace_Bay', 1, '2010-07-17 23:00:00', '2010-07-17 23:00:00'),
(7303786, 'CA', 'Jonquière', 'Jonquiere', 48.4165, -71.2488, 'P', 'PPLX', 'CA.10', 'CA.10.02', 54842, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(7535681, 'CA', 'Saint-Augustin-de-Desmaures', 'Saint-Augustin-de-Desmaures', 46.7406, -71.4513, 'P', 'PPL', 'CA.10', 'CA.10.03', 17281, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(7535690, 'CA', 'Donnacona', 'Donnacona', 46.6804, -71.7239, 'P', 'PPL', 'CA.10', 'CA.10.03', 5564, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(7602078, 'CA', 'Ladner', 'Ladner', 49.0894, -123.082, 'P', 'PPL', 'CA.02', NULL, 200000, 'America/Vancouver', 1, '2010-11-14 23:00:00', '2010-11-14 23:00:00'),
(7626291, 'PE', 'La Rinconada', 'La Rinconada', -14.6313, -69.4464, 'P', 'PPLS', 'PE.21', 'PE.21.2110', 29678, 'America/Lima', 1, '2012-07-18 23:00:00', '2012-07-18 23:00:00'),
(7647007, 'AR', 'San Carlos de Bariloche', 'San Carlos de Bariloche', -41.1456, -71.3082, 'P', 'PPLA3', 'AR.16', 'AR.16.62021', 95394, 'America/Argentina/Salta', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(7669012, 'CA', 'Walnut Grove', 'Walnut Grove', 49.1647, -122.64, 'P', 'PPLX', 'CA.02', NULL, 25683, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7669018, 'CA', 'Aldergrove', 'Aldergrove', 49.058, -122.471, 'P', 'PPLX', 'CA.02', NULL, 12363, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7870925, 'CA', 'East York', 'East York', 43.6905, -79.3279, 'P', 'PPL', 'CA.08', NULL, 115365, 'America/Toronto', 1, '2016-07-05 23:00:00', '2016-07-05 23:00:00'),
(8285452, 'CA', 'Ancaster', 'Ancaster', 43.2181, -79.9872, 'P', 'PPL', 'CA.08', NULL, 33232, 'America/Toronto', 1, '2012-05-06 23:00:00', '2012-05-06 23:00:00'),
(8354533, 'CA', 'Shannon', 'Shannon', 46.8803, -71.5146, 'P', 'PPL', 'CA.10', 'CA.10.03', 5086, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(8354586, 'CA', 'Saint-Henri', 'Saint-Henri', 46.6931, -71.0693, 'P', 'PPL', 'CA.10', 'CA.10.12', 5023, 'America/Toronto', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(8379100, 'CA', 'Pont-Rouge', 'Pont-Rouge', 46.7547, -71.6957, 'P', 'PPL', 'CA.10', 'CA.10.03', 8723, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(8379101, 'CA', 'Princeville', 'Princeville', 46.1716, -71.8746, 'P', 'PPL', 'CA.10', 'CA.10.17', 5693, 'America/Toronto', 1, '2016-02-22 23:00:00', '2016-02-22 23:00:00'),
(8521759, 'AR', 'Río Turbio', 'Rio Turbio', -51.5359, -72.3367, 'P', 'PPL', 'AR.20', 'AR.20.78021', 6650, 'America/Argentina/Rio_Gallegos', 1, '2016-01-29 23:00:00', '2016-01-29 23:00:00'),
(8533869, 'CA', 'West Vancouver', 'West Vancouver', 49.3667, -123.167, 'P', 'PPLL', 'CA.02', NULL, 42694, 'America/Vancouver', 1, '2013-06-04 23:00:00', '2013-06-04 23:00:00'),
(8558534, 'CA', 'Willowdale', 'Willowdale', 43.7667, -79.3991, 'P', 'PPLL', 'CA.08', NULL, 79440, 'America/Toronto', 1, '2013-07-07 23:00:00', '2013-07-07 23:00:00'),
(10098279, 'UY', 'Barros Blancos', 'Barros Blancos', -34.7524, -56.0026, 'P', 'PPL', 'UY.02', NULL, 31650, 'America/Montevideo', 1, '2017-12-13 23:00:00', '2017-12-13 23:00:00'),
(10172104, 'AR', 'Adrogué', 'Adrogue', -34.8004, -58.3838, 'P', 'PPL', 'AR.01', 'AR.01.06028', 28265, 'America/Argentina/Buenos_Aires', 1, '2015-04-21 23:00:00', '2015-04-21 23:00:00'),
(10277901, 'EC', 'Tutamandahostel', 'Tutamandahostel', -0.19727, -78.4975, 'P', 'PPLL', 'EC.18', 'EC.18.1701', 140000, 'America/Guayaquil', 1, '2017-02-06 23:00:00', '2017-02-06 23:00:00'),
(10287505, 'CA', 'Lower Sackville', 'Lower Sackville', 44.776, -63.6786, 'P', 'PPL', 'CA.07', NULL, 21379, 'America/Halifax', 1, '2016-10-17 23:00:00', '2016-10-17 23:00:00'),
(10627796, 'CA', 'le Plateau', 'le Plateau', 45.4351, -75.7803, 'P', 'PPL', 'CA.10', 'CA.10.07', 15000, 'America/Toronto', 1, '2015-08-17 23:00:00', '2015-08-17 23:00:00'),
(11203927, 'CA', 'Wild Rose', 'Wild Rose', 53.4708, -113.381, 'P', 'PPLX', 'CA.01', NULL, 8031, 'America/Edmonton', 1, '2018-01-08 23:00:00', '2018-01-08 23:00:00'),
(11203928, 'CA', 'Silver Berry', 'Silver Berry', 53.4579, -113.382, 'P', 'PPLX', 'CA.01', NULL, 8089, 'America/Edmonton', 1, '2018-01-08 23:00:00', '2018-01-08 23:00:00'),
(11694745, 'CO', 'House\' s Joe Arroyo', 'House\' s Joe Arroyo', 10.986, -74.8217, 'P', 'PPLL', 'CO.04', 'CO.04.08001', 1410433, 'America/Bogota', 1, '2017-09-11 23:00:00', '2017-09-11 23:00:00'),
(15000000, 'PE', 'San Miiguel', 'San Miiguel', -76.634, -5.6712, NULL, NULL, 'PE.LMA', NULL, NULL, '-5.0', 1, '2019-11-20 04:34:45', '2019-11-20 04:34:45'),
(15000001, 'PE', 'Callao', 'Callao', -12.0523, -77.1391, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:47:27', '2019-11-20 04:47:27'),
(15000002, 'PE', 'Bellavista', 'Bellavista', -12.0624, -77.1286, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:49:18', '2019-11-20 04:49:18'),
(15000003, 'PE', 'Carmen de la Legua', 'Carmen de la Legua', 12.0394, -77.0953, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:50:12', '2019-11-20 04:50:12'),
(15000004, 'PE', 'La Perla', 'La Perla', -12.066, -77.1081, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:51:04', '2019-11-20 04:51:04'),
(15000005, 'PE', 'La Punta', 'La Punta', -12.0714, -77.1625, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:52:01', '2019-11-20 04:52:01'),
(15000006, 'PE', 'Ventanilla', 'Ventanilla', -11.8556, -77.0736, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:52:56', '2019-11-20 04:52:56'),
(15000007, 'PE', 'Mi Perú', 'Mi Perú', -11.8542, -77.1225, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:54:03', '2019-11-20 04:54:03'),
(15000008, 'PE', 'Ancón', 'Ancón', -11.7333, -77.15, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:54:46', '2019-11-20 04:54:46'),
(15000009, 'PE', 'Ate', 'Ate', -12.0103, -76.87, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:55:20', '2019-11-20 04:55:20'),
(15000010, 'PE', 'Barranco', 'Barranco', -12.1417, -77.0167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:57:27', '2019-11-20 04:57:27'),
(15000011, 'PE', 'Breña', 'Breña', -12.0592, -77.0506, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:58:07', '2019-11-20 04:58:07'),
(15000012, 'PE', 'Carabayllo', 'Carabayllo', -11.85, -77.0333, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 04:59:41', '2019-11-20 04:59:41'),
(15000013, 'PE', 'Cieneguilla', 'Cieneguilla', -12.0917, -76.775, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:00:16', '2019-11-20 05:00:16'),
(15000014, 'PE', 'Chaclacayo', 'Chaclacayo', -11.9833, -76.7667, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:01:00', '2019-11-20 05:01:00'),
(15000015, 'PE', 'Chorrillos', 'Chorrillos', -12.1864, -77.0211, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:01:34', '2019-11-20 05:01:34'),
(15000016, 'PE', 'Comas', 'Comas', -11.9333, -77.0667, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:02:12', '2019-11-20 05:02:12'),
(15000017, 'PE', 'El Agustino', 'El Agustino', -12.0667, -77.0167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:02:52', '2019-11-20 05:02:52'),
(15000018, 'PE', 'Independencia', 'Independencia', -11.9917, -77.05, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:03:32', '2019-11-20 05:03:32'),
(15000019, 'PE', 'Jesús María', 'Jesús María', -12.0783, -77.0481, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:04:43', '2019-11-20 05:04:43'),
(15000020, 'PE', 'La Molina', 'La Molina', -12.0778, -76.9111, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:05:20', '2019-11-20 05:05:20'),
(15000021, 'PE', 'La Victoria', 'La Victoria', -12.065, -76.0311, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:06:07', '2019-11-20 05:06:07'),
(15000022, 'PE', 'Lince', 'Lince', -12.1, -77.05, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:06:52', '2019-11-20 05:06:52'),
(15000023, 'PE', 'Los Olivos', 'Los Olivos', -11.9703, -77.0739, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:09:11', '2019-11-20 05:09:11'),
(15000024, 'PE', 'Lurigancho', 'Lurigancho', -12.0333, -77.0167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:09:46', '2019-11-20 05:09:46'),
(15000025, 'PE', 'Lurín', 'Lurín', -12.2792, -76.875, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:10:27', '2019-11-20 05:10:27'),
(15000026, 'PE', 'Magdalena del Mar', 'Magdalena del Mar', -12.0906, -77.07, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:11:05', '2019-11-20 05:11:05'),
(15000027, 'PE', 'Miraflores', 'Miraflores', -12.1175, -77.0431, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:11:53', '2019-11-20 05:11:53'),
(15000028, 'PE', 'Pachacámac', 'Pachacámac', -12.23, -76.8592, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:12:35', '2019-11-20 05:12:35'),
(15000029, 'PE', 'Pucusana', 'Pucusana', -12.4167, -76.7833, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:13:16', '2019-11-20 05:13:16'),
(15000030, 'PE', 'Pueblo Libre', 'Pueblo Libre', -12.0703, -77.0625, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:15:16', '2019-11-20 05:15:16'),
(15000031, 'PE', 'Puente Piedra', 'Puente Piedra', -11.875, -77.0653, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:15:52', '2019-11-20 05:15:52'),
(15000032, 'PE', 'Punta Hermosa', 'Punta Hermosa', -12.3333, -76.8167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:16:58', '2019-11-20 05:16:58'),
(15000033, 'PE', 'Punta Negra', 'Punta Negra', -12.3681, -76.7972, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:17:34', '2019-11-20 05:17:34'),
(15000034, 'PE', 'Rímac', 'Rímac', -12.0353, -77.0272, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:18:11', '2019-11-20 05:18:11'),
(15000035, 'PE', 'San Bartolo', 'San Bartolo', -12.4167, -76.7833, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:19:01', '2019-11-20 05:19:01'),
(15000036, 'PE', 'San Borja', 'San Borja', -12.1, -77.0167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:19:36', '2019-11-20 05:19:36'),
(15000037, 'PE', 'San Isidro', 'San Isidro', -12.0992, -77.0347, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:20:15', '2019-11-20 05:20:15'),
(15000038, 'PE', 'San Juan de Lurigancho', 'San Juan de Lurigancho', -12.0022, -77.0083, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:20:51', '2019-11-20 05:20:51'),
(15000039, 'PE', 'San Juan de Miraflores', 'San Juan de Miraflores', -12.1514, -76.97, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:22:02', '2019-11-20 05:22:02'),
(15000040, 'PE', 'San Luis', 'San Luis', -12.0756, -76.9961, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:22:44', '2019-11-20 05:22:44'),
(15000041, 'PE', 'San Martín de Porres', 'San Martín de Porres', -11.9806, -77.0972, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:23:21', '2019-11-20 05:23:21'),
(15000042, 'PE', 'Santa Anita', 'Santa Anita', -12.0431, -76.9583, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:24:04', '2019-11-20 05:24:04'),
(15000043, 'PE', 'Santa María del Mar', 'Santa María del Mar', -12.4167, -76.7833, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:25:11', '2019-11-20 05:25:11'),
(15000044, 'PE', 'Santa Rosa', 'Santa Rosa', -11.8064, -77.1656, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:25:48', '2019-11-20 05:25:48'),
(15000045, 'PE', 'Santiago de Surco', 'Santiago de Surco', -12.15, -77.0167, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:26:35', '2019-11-20 05:26:35'),
(15000046, 'PE', 'Surquillo', 'Surquillo', -12.1172, -77.0206, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:27:13', '2019-11-20 05:27:13'),
(15000047, 'PE', 'Villa El Salvador', 'Villa El Salvador', -12.2094, -76.9356, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:27:58', '2019-11-20 05:27:58'),
(15000048, 'PE', 'Villa María del Triunfo', 'Villa María del Triunfo', -12.1569, -76.9314, NULL, NULL, 'PE.LMA', NULL, NULL, 'PE', 1, '2019-11-20 05:28:34', '2019-11-20 05:28:34'),
(15000049, 'CO', 'Antioquia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000050, 'CO', 'Atlantico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000051, 'CO', 'D. C. Santa Fe de Bogotá', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000052, 'CO', 'Bolivar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000053, 'CO', 'Boyaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000054, 'CO', 'Caldas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000055, 'CO', 'Caqueta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000056, 'CO', 'Cauca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000057, 'CO', 'Cesar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000058, 'CO', 'Cordova', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000059, 'CO', 'Cundinamarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000060, 'CO', 'Choco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000061, 'CO', 'Huila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000062, 'CO', 'La Guajira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000063, 'CO', 'Magdalena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000064, 'CO', 'Meta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000065, 'CO', 'Nariño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000066, 'CO', 'Norte de Santander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000067, 'CO', 'Quindio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000068, 'CO', 'Risaralda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000069, 'CO', 'Santander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000070, 'CO', 'Sucre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000071, 'CO', 'Tolima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000072, 'CO', 'Valle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000073, 'CO', 'Arauca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000074, 'CO', 'Casanare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000075, 'CO', 'Putumayo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000076, 'CO', 'San Andres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000077, 'CO', 'Amazonas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000078, 'CO', 'Guainia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000079, 'CO', 'Guaviare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000080, 'CO', 'Vaupes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000081, 'CO', 'Vichada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000082, 'CR', 'San José', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000083, 'CR', 'Alajuela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000084, 'CR', 'Cartago	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000085, 'CR', 'Heredia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000086, 'CR', 'Guanacaste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000087, 'CR', 'Puntarenas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000088, 'CR', 'Limon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000089, 'Cu', 'Las Tunas ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000090, 'Cu', 'Camagüey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000091, 'Cu', 'Ciego de Ávila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000092, 'Cu', 'Cienfuegos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000093, 'Cu', 'Granma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000094, 'Cu', 'Guantanamo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000095, 'Cu', 'La Habana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000096, 'Cu', 'Artemisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000097, 'Cu', 'Matanzas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000098, 'Cu', 'Mayabeque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000099, 'Cu', 'Pinal del Rio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000100, 'Cu', 'Sancti Spíritus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000101, 'Cu', 'Santiago de Cuba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000102, 'Cu', 'Villa Clara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000103, 'ES', 'Alava', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000104, 'ES', 'Albacete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000105, 'ES', 'Alicante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000106, 'ES', 'Almeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000107, 'ES', 'avila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000108, 'ES', 'Badajoz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000109, 'ES', 'Baleares (Illes)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000110, 'ES', 'Barcelona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000111, 'ES', 'Burgos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000112, 'ES', 'Caceres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000113, 'ES', 'Cadiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000114, 'ES', 'Castellon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000115, 'ES', 'Ciudad Real', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000116, 'ES', 'Cordoba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000117, 'ES', 'A Coruna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000118, 'ES', 'Cuenca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000119, 'ES', 'Girona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000120, 'ES', 'Granada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000121, 'ES', 'Guadalajara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000122, 'ES', 'Guipuzcoa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000123, 'ES', 'Huelva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000124, 'ES', 'Huesca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000125, 'ES', 'Jaen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000126, 'ES', 'Leon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000127, 'ES', 'Lleida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000128, 'ES', 'La Rioja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000129, 'ES', 'Lugo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000130, 'ES', 'Madrid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000131, 'ES', 'Malaga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000132, 'ES', 'Murcia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000133, 'ES', 'Navarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000134, 'ES', 'Ourense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000135, 'ES', 'Asturias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000136, 'ES', 'Palencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000137, 'ES', 'Las Palmas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000138, 'ES', 'Pontevedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000139, 'ES', 'Salamanca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000140, 'ES', 'Santa Cruz de Tenerife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000141, 'ES', 'Cantabria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000142, 'ES', 'Segovia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000143, 'ES', 'Sevilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000144, 'ES', 'Soria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000145, 'ES', 'Tarragona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000146, 'ES', 'Teruel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000147, 'ES', 'Toledo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000148, 'ES', 'Valencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000149, 'ES', 'Valladolid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000150, 'ES', 'Vizcaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000151, 'ES', 'Zamora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000152, 'ES', 'Zaragoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000153, 'ES', 'Ceuta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000154, 'ES', 'Melilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000155, 'ET', 'Addis Abeba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000156, 'ET', 'Dire Dawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000157, 'ET', 'Mekele', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000158, 'ET', 'Nazrēt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000159, 'ET', 'Bahir Dar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000160, 'ET', 'Gondar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000161, 'ET', 'Desē', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000162, 'ET', 'Hawassa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000163, 'ET', 'Jimma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000164, 'ET', 'Bishoftu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000165, 'FR', 'París', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000166, 'FR', 'Marsella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000167, 'FR', 'Lyon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000168, 'FR', 'Tolosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000169, 'FR', 'Niza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000170, 'FR', 'Nantes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000171, 'FR', 'Estrasburgo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000172, 'FR', 'Montpellier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000173, 'FR', 'Burdeos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000174, 'FR', 'Lila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000175, 'FR', 'Rennes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000176, 'FR', 'Reims', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000177, 'FR', 'El Havre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000178, 'FR', 'Saint-Étienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000179, 'FR', 'Tolón', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000180, 'FR', 'Grenoble', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000181, 'FR', 'Dijon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000182, 'FR', 'Angers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000183, 'FR', 'Aix-en-Provence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000184, 'FR', 'Nimes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000185, 'FR', 'Limoges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000186, 'FR', 'Amiens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000187, 'FR', 'Tours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000188, 'FR', 'Le Mans', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000189, 'FR', 'Brest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000190, 'FR', 'Clermont-Ferrand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000191, 'GT', 'Ciudad de Guatemala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000192, 'GT', 'Santa Catarina Pinula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000193, 'GT', 'San Miguel Petapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000194, 'GT', 'Ciudad de Mixco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000195, 'GT', 'Ciudad de Villa Nueva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000196, 'GT', 'Fraijanes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000197, 'GT', 'Antigua Guatemala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000198, 'GT', 'San Lucas Sacatepéquez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000199, 'GT', 'Villa Canales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000200, 'GT', 'San José Pinula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000201, 'GT', 'Amatitlán', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000202, 'GT', 'Jocotenango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000203, 'GT', 'San Pedro Sacatepéquez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000204, 'GT', 'San José del Golfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000205, 'GT', 'Chinautla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000206, 'GT', 'San Bartolomé Milpas Altas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000207, 'GT', 'Quetzaltenango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000208, 'GT', 'Salcajá', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000209, 'GT', 'San Raymundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000210, 'GT', 'Santa Lucía Milpas Altas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000211, 'HN', 'Tegucigalpa y Comayagüela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000212, 'HN', 'San Pedro Sula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000213, 'HN', 'Choloma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000214, 'HN', 'La Ceiba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000215, 'HN', 'El Progreso (Honduras)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000216, 'HN', 'Villanueva (Honduras)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000217, 'HN', 'Choluteca (ciudad)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000218, 'HN', 'Comayagua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000219, 'HN', 'Puerto Cortés', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000220, 'HN', 'Danlí', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000221, 'HN', 'Siguatepeque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000222, 'HN', 'Juticalpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000223, 'IT', 'Abruzos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000224, 'IT', 'Apulia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000225, 'IT', 'Basilicata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000226, 'IT', 'Calabria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000227, 'IT', 'Campania', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000228, 'IT', 'Cerdeña	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000229, 'IT', 'Emilia-Romaña', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000230, 'IT', 'Friuli-Venecia Julia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000231, 'IT', 'Lacio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000232, 'IT', 'Liguria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000233, 'IT', 'Lombardía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000234, 'IT', 'Marcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000235, 'IT', 'Molise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000236, 'IT', 'Piamonte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000237, 'IT', 'Sicilia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000238, 'IT', 'Toscana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000239, 'IT', 'Trentino-Alto Adigio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000240, 'IT', 'Umbría', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000241, 'IT', 'Valle de Aosta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000242, 'IT', 'Véneto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000243, 'LT', 'Alytaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000244, 'LT', 'Kauno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000245, 'LT', 'Klaipėdos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000246, 'LT', 'Marijampolės', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000247, 'LT', 'Panevėžio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000248, 'LT', 'Šiaulių', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000249, 'LT', 'Tauragės', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000250, 'LT', 'Telšių', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000251, 'LT', 'Utenos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000252, 'LT', 'Vilniaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000253, 'PA', 'Bocas del Toro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000254, 'PA', 'Coclé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000255, 'PA', 'Colón', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000256, 'PA', 'Chiriquí', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000257, 'PA', 'Darién', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000258, 'PA', 'Herrera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000259, 'PA', 'Los Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000260, 'PA', 'Panamá', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000261, 'PA', 'Veraguas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000262, 'PA', 'Panamá Oeste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000263, 'VE', 'Panamá Oeste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000264, 'VE', 'Amazonas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000265, 'VE', 'Anzoátegui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000266, 'VE', 'Apure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000267, 'VE', 'Aragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000268, 'VE', 'Barinas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000269, 'VE', 'Bolívar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000270, 'VE', 'Carabobo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000271, 'VE', 'Cojedes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000272, 'VE', 'Delta Amacuro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000273, 'VE', 'Caracas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000274, 'VE', 'Falcón', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000275, 'VE', 'Guárico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000276, 'VE', 'Lara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000277, 'VE', 'Mérida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000278, 'VE', 'Miranda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000279, 'VE', 'Monagas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000280, 'VE', 'Nueva Esparta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000281, 'VE', 'Portuguesa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000282, 'VE', 'Sucre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000283, 'VE', 'Táchira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000284, 'VE', 'Trujillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000285, 'VE', 'Vargas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000286, 'VE', 'Yaracuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000287, 'VE', 'Zulia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000288, 'NL', 'Amsterdam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000289, 'NL', 'Rotterdam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000290, 'NL', 'Delft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000291, 'NL', 'Den Haag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000292, 'NL', 'Gouda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000293, 'NL', 'Utrecht', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000294, 'NL', 'Maastricht', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000295, 'NL', 'Eindhoven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000296, 'NL', 'Groningen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000297, 'MZ', 'Cabo Delgado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000298, 'MZ', 'Gaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000299, 'MZ', 'Inhambane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000300, 'MZ', 'Manica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000301, 'MZ', 'Maputo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000302, 'MZ', 'Nampula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000303, 'MZ', 'Niassa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000304, 'MZ', 'Sofala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000305, 'MZ', 'Tete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15000306, 'MZ', 'Zambezia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_areas`
--

CREATE TABLE `contenido_areas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `area` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contenido_areas`
--

INSERT INTO `contenido_areas` (`id`, `descripcion`, `area`, `created_at`, `updated_at`) VALUES
(1, 'Retrete', 2, '2020-02-03', '2020-02-03'),
(2, 'ducha', 2, '2020-02-05', '2020-02-05'),
(3, 'ddsdfd', 2, '2020-12-13', '2020-12-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conventos_anteriores`
--

CREATE TABLE `conventos_anteriores` (
  `id` int(11) NOT NULL,
  `convento` varchar(45) NOT NULL,
  `hermana_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `hermana_id` int(11) DEFAULT NULL,
  `empleado_id` int(11) DEFAULT NULL,
  `acogido_id` int(11) DEFAULT NULL,
  `sacerdote_id` int(11) DEFAULT NULL,
  `religioso_id` int(11) DEFAULT NULL,
  `laico_id` int(11) DEFAULT NULL,
  `martita_id` int(11) DEFAULT NULL,
  `oblato_id` int(11) DEFAULT NULL,
  `maria_id` int(11) DEFAULT NULL,
  `otro_id` int(11) DEFAULT NULL,
  `casa_id` int(11) DEFAULT NULL,
  `usuario` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `documento`, `tipo_documento`, `hermana_id`, `empleado_id`, `acogido_id`, `sacerdote_id`, `religioso_id`, `laico_id`, `martita_id`, `oblato_id`, `maria_id`, `otro_id`, `casa_id`, `usuario`, `created_at`, `updated_at`) VALUES
(4, 'MARIA ISABEL Psicologaa.pdf', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MyM', '2020-12-02', '2020-12-02'),
(5, 'e-book_30PreguntasQueCambiaranTuVisionEmpresarial.pdf', '1', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MyM', '2020-12-02', '2020-12-02'),
(6, 'COMPROBANTE PAGO CASCOS DE VIDA.pdf', '2', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MyM', '2020-12-02', '2020-12-02'),
(7, 'Orden ingresada - Falabella compras DANNA.pdf', '2', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MyM', '2020-12-02', '2020-12-02'),
(8, 'Certificación Laboral Oscar Montealegre.pdf', '1', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Congregación admin', '2020-12-07', '2020-12-07'),
(9, 'AJUSTES Y MODIFICACIONES 09102020_4toSeguimiento (1).docx', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Heriberto', '2020-12-07', '2020-12-07'),
(10, 'CIM_Guia Modelo de Negocio Canvas.docx', '3', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 'Congregación admin', '2020-12-10', '2020-12-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `cedula_ciudadania` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `genero` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `estado_civil` int(11) NOT NULL,
  `num_hijos` int(11) DEFAULT NULL,
  `actividad_que_realiza` varchar(45) DEFAULT NULL,
  `salario` int(11) NOT NULL,
  `casa` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `observaciones` text,
  `profesion` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `cedula_ciudadania`, `nombre`, `nacionalidad`, `fecha_nacimiento`, `genero`, `direccion`, `telefono`, `estado_civil`, `num_hijos`, `actividad_que_realiza`, `salario`, `casa`, `fecha_ingreso`, `fecha_retiro`, `observaciones`, `profesion`, `cargo`, `created_at`, `updated_at`) VALUES
(2, '948784798', 'mi corazon', '', '', 1, 'dfgege484', '44985497', 2, 70, 'nada', 14, 3, '2000-05-05', '2200-05-06', '', '', '', '2020-02-11', '2020-02-11'),
(3, '234', 'DF', '', '', 1, 'WER', '45', 1, NULL, 'sd', 33, 3, '2019-12-31', NULL, '', '', '', '2020-02-13', '2020-02-13'),
(4, '1', 'pruebae3', 'Peruana', '2020-01-01', 1, 'we', '1', 1, 1, '12345123', 1, 3, '2020-01-01', NULL, 'qww', 'w', 'w', '2020-11-20', '2020-11-20'),
(5, '7709641', 'Oscar', 'Colombiano', '1978-10-25', 1, 'Calle 127D', '5986985', 1, NULL, 'Ing', 5000000, 3, '2014-11-24', NULL, 'Obs', NULL, NULL, '2020-12-02', '2020-12-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `hermana_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `pais`, `ciudad`, `fecha`, `cargo`, `hermana_id`) VALUES
(1, 11, 3427213, '2020-01-07', 'MISIONERA', 1),
(2, 2, 15000211, '2002-03-01', 'Superior', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equiposhermanas`
--

CREATE TABLE `equiposhermanas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equiposhermanas`
--

INSERT INTO `equiposhermanas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'las', '2020-02-03', '2020-02-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL,
  `estado_civil` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `estado_civil`) VALUES
(1, 'Soltero(a)'),
(2, 'Casado(a)'),
(3, 'Union Libre'),
(4, 'Divorciado(a)/Separado(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiares`
--

CREATE TABLE `familiares` (
  `id` int(11) NOT NULL,
  `parentesco` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `hermana_id` int(11) NOT NULL,
  `CreatedAt` date NOT NULL,
  `UpdatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `genero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `genero`) VALUES
(1, 'M'),
(2, 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermanas`
--

CREATE TABLE `hermanas` (
  `id` int(11) NOT NULL,
  `id_hermana` int(11) DEFAULT NULL,
  `cedula_ciudadania` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `ciudad_actual` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `fecha_ingreso_convento` date NOT NULL,
  `fecha_ingreso_aspirantado` date DEFAULT NULL,
  `fecha_ingreso_postulado` date DEFAULT NULL,
  `fecha_ingreso_noviciado` date DEFAULT NULL,
  `fecha_retiro_convento` date DEFAULT NULL,
  `primera_profesion` varchar(45) NOT NULL,
  `profesion_perpetua` varchar(45) DEFAULT NULL,
  `convento_actual` int(11) NOT NULL,
  `actividad_que_realiza` varchar(255) DEFAULT NULL,
  `equipo_hermanas_perteneciente` varchar(45) NOT NULL,
  `observaciones` text,
  `estudios_realizados` longtext,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hermanas`
--

INSERT INTO `hermanas` (`id`, `id_hermana`, `cedula_ciudadania`, `nombre`, `fecha_nacimiento`, `lugar_origen`, `ciudad_actual`, `pais`, `nacionalidad`, `fecha_ingreso_convento`, `fecha_ingreso_aspirantado`, `fecha_ingreso_postulado`, `fecha_ingreso_noviciado`, `fecha_retiro_convento`, `primera_profesion`, `profesion_perpetua`, `convento_actual`, `actividad_que_realiza`, `equipo_hermanas_perteneciente`, `observaciones`, `estudios_realizados`, `created_at`, `updated_at`) VALUES
(1, NULL, '3123444342', 'maria del refugios', '1997-06-11', 'COLOMBIA', 3866935, 9, 'COLOMBIANA', '2020-02-04', NULL, NULL, NULL, NULL, 'SDSADD', NULL, 3, 'SDSADSADASDASDSADASD', '1', NULL, NULL, '2020-02-05', '2020-11-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` int(11) NOT NULL,
  `id_casa` int(11) NOT NULL,
  `tipo_inventario` varchar(45) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_contenido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `tiene_factura` varchar(45) DEFAULT NULL,
  `documento_soporte` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id`, `id_casa`, `tipo_inventario`, `id_area`, `id_contenido`, `cantidad`, `valor`, `tiene_factura`, `documento_soporte`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 2, 2, 1, 1000000, 'jj22', 'Captura de Pantalla 2020-02-04 a la(s) 9.30.31 p. m..png', '2020-02-04', '2020-02-05', '2020-02-05'),
(2, 3, '2', 2, 1, 12, 23, '23', 'Empleados.xlsx', '2020-12-31', '2020-02-13', '2020-02-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laicos`
--

CREATE TABLE `laicos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `estudios_realizados` text,
  `actividad` text,
  `observaciones` text,
  `genero` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `numero_hijos` int(11) DEFAULT NULL,
  `fecha_ingreso` varchar(45) NOT NULL,
  `fecha_retiro` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laicos`
--

INSERT INTO `laicos` (`id`, `nombre`, `cedula`, `nacionalidad`, `lugar_origen`, `fecha_nacimiento`, `casa`, `estudios_realizados`, `actividad`, `observaciones`, `genero`, `direccion`, `telefono`, `estado_civil`, `numero_hijos`, `fecha_ingreso`, `fecha_retiro`, `created_at`, `updated_at`) VALUES
(2, 'Laico', '12345', 'Colombiano', 'Republica', '2019-12-31', 3, 'Sacerdote', 'Sacerdote', NULL, '1', '12wsdf', '8297727870', '1', 1, '2020-12-31', NULL, '2020-11-10', '2020-11-20'),
(3, 'Jesús Montealegre', '19362563', 'Venezolana', 'Caracas', '1970-04-03', 3, 'Algunos cuántos', 'Varias cosas', 'Muchas', '1', 'Calle 12', '3002654879', '1', NULL, '1989-05-03', NULL, '2020-12-07', '2020-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL,
  `cantidad` tinyint(3) UNSIGNED NOT NULL,
  `editorial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_casa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `titulo`, `isbn`, `autor`, `area`, `cantidad`, `editorial`, `foto`, `id_casa`, `created_at`, `updated_at`) VALUES
(1, 'yh', 'ghjgh', 'hjhjgh', 1, 65, 'hgjgh', 'Dt8Lj6EMQD0zzRWFbYy4.jpg', 3, '2020-02-04 05:26:07', '2020-11-20 01:10:49'),
(2, 'Cien años de soledad', 'ICBN345', 'gabriel garcia marquez', 2, 100, 'norma', 'Dt8Lj6EMQD0zzRWFbYy4.jpg', 3, '2020-02-05 09:24:27', '2020-02-05 09:24:27'),
(4, 'wsd', NULL, 's', 1, 3, 's', 'Q0H6jCTuBYNTVpE0FKMx.jpg', 3, '2020-11-20 01:11:07', '2020-12-08 02:54:29'),
(5, 'w', NULL, 'w', 1, 1, 'w', 'W9ncHgNJR7PMYmYQJ3W5.jpg', 3, '2020-12-04 04:27:44', '2020-12-04 23:44:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_prestamo`
--

CREATE TABLE `libro_prestamo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `prestado_a` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `fecha_devolucion` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libro_prestamo`
--

INSERT INTO `libro_prestamo` (`id`, `usuario_id`, `libro_id`, `fecha_prestamo`, `prestado_a`, `estado`, `fecha_devolucion`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2020-02-03', 'Usuario Externo: sdasds', 0, NULL, '2020-02-04 07:29:55', '2020-02-04 07:29:55'),
(2, 5, 2, '2020-02-04', 'Hermana: maria', 1, '2020-02-05', '2020-02-05 09:25:38', '2020-02-05 09:25:46'),
(3, 5, 1, '2019-12-31', 'Hermana: maria', 1, '2020-12-02', '2020-02-13 17:56:37', '2020-12-02 10:08:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marias`
--

CREATE TABLE `marias` (
  `id` int(11) NOT NULL,
  `cedula_ciudadania` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `fecha_ingreso_convento` date NOT NULL,
  `fecha_ingreso_aspirantado` date DEFAULT NULL,
  `fecha_ingreso_postulado` date DEFAULT NULL,
  `fecha_ingreso_noviciado` date DEFAULT NULL,
  `primera_profesion` varchar(45) NOT NULL,
  `profesion_perpetua` varchar(45) DEFAULT NULL,
  `renovacion` varchar(45) NOT NULL DEFAULT '0',
  `convento_actual` int(11) NOT NULL,
  `actividad_que_realiza` varchar(255) DEFAULT NULL,
  `equipo_hermanas_perteneciente` varchar(45) NOT NULL,
  `observaciones` text,
  `estudios_realizados` longtext,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marias`
--

INSERT INTO `marias` (`id`, `cedula_ciudadania`, `nombre`, `fecha_nacimiento`, `lugar_origen`, `nacionalidad`, `fecha_ingreso_convento`, `fecha_ingreso_aspirantado`, `fecha_ingreso_postulado`, `fecha_ingreso_noviciado`, `primera_profesion`, `profesion_perpetua`, `renovacion`, `convento_actual`, `actividad_que_realiza`, `equipo_hermanas_perteneciente`, `observaciones`, `estudios_realizados`, `created_at`, `updated_at`) VALUES
(1, '3123444342', 'maria del refugio', '1997-06-11', 'Republica', 'COLOMBIANA', '2020-02-04', NULL, NULL, NULL, 'SDSADD', NULL, '1', 3, 'SDSADSADASDASDSADASD', '1', NULL, NULL, '2020-02-05', '2020-11-11'),
(3, '12', 'pruebae3', '1997-01-01', 'Republica', 'Peruana', '2011-01-01', NULL, NULL, NULL, '2020-01-01', '2020-01-01', '1', 3, '12345123', '1', 's', 's', '2020-11-19', '2020-11-19'),
(4, '1', 'pruebae3', '2006-12-31', 'alla', 'Peruana', '2019-12-31', NULL, NULL, NULL, '2009-01-01', NULL, 'ddwws', 3, NULL, '1', NULL, NULL, '2020-11-26', '2020-11-26'),
(5, '12563564', 'Maria de Betania', '1970-06-01', 'Nicaragua', 'Nicaraguense', '1990-02-01', NULL, NULL, NULL, '1994-03-01', '1991-03-01', '02-05-1990 Nicaragua', 3, NULL, '1', NULL, NULL, '2020-12-01', '2020-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `martitas`
--

CREATE TABLE `martitas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `estudios_realizados` text,
  `actividad` text,
  `observaciones` text,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `numero_hijos` int(11) DEFAULT NULL,
  `fecha_ingreso` varchar(45) NOT NULL,
  `fecha_retiro` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `martitas`
--

INSERT INTO `martitas` (`id`, `nombre`, `cedula`, `nacionalidad`, `lugar_origen`, `fecha_nacimiento`, `casa`, `estudios_realizados`, `actividad`, `observaciones`, `direccion`, `telefono`, `numero_hijos`, `fecha_ingreso`, `fecha_retiro`, `created_at`, `updated_at`) VALUES
(4, 'Marta', '12345678', 'martense', 'alla', '2018-12-31', 3, 'Sacerdote', 'Sacerdote', NULL, '12wsdf', '1213456', 1, '2020-01-01', NULL, '2020-11-11', '2020-11-20'),
(5, 'MP', '12345678', 'Peruana', 'alla', '2019-01-01', 3, NULL, NULL, NULL, '12wsdf', '8888888', NULL, '2020-01-01', NULL, '2020-12-07', '2020-12-07'),
(6, 'Martha de Betania', '25364589', 'Betania', 'Betania', '1960-02-05', 3, 'Algunos', 'Varios', 'Muchas', 'Calle 23', '5698678', 0, '1980-02-01', NULL, '2020-12-10', '2020-12-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `nombre`, `url`, `orden`, `icono`, `created_at`, `updated_at`) VALUES
(1, 0, 'Biblioteca', 'dashboard/crear', 2, NULL, '2019-10-23 21:43:14', '2019-10-24 03:50:11'),
(2, 1, 'Listar Biblioteca', 'biblioteca/listar', 2, NULL, '2019-10-23 21:47:06', '2019-10-24 03:50:11'),
(3, 1, 'Crear Biblioteca', 'biblioteca/create', 1, NULL, '2019-10-23 21:56:01', '2019-10-24 03:50:11'),
(4, 0, 'Administracion', 'administracion', 1, NULL, '2019-10-24 03:13:34', '2019-10-24 03:50:11'),
(5, 4, 'Usuarios', 'usuarios', 1, NULL, '2019-10-24 03:13:50', '2019-10-24 03:50:11'),
(6, 5, 'Crear Usuario', 'usuario/create', 1, NULL, '2019-10-24 03:14:08', '2019-10-24 03:50:11'),
(7, 5, 'LIstar Usuario', 'usuario/index', 2, NULL, '2019-10-24 03:14:36', '2019-10-24 03:50:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_rol`
--

CREATE TABLE `menu_rol` (
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_rol`
--

INSERT INTO `menu_rol` (`rol_id`, `menu_id`) VALUES
(1, 4),
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2019_10_15_210209_create_usuario_table', 1),
(62, '2019_10_15_211403_create_rol_table', 1),
(63, '2019_10_15_211424_create_permiso_table', 1),
(64, '2019_10_15_211551_create_usuario_rol_table', 1),
(65, '2019_10_15_222309_create_permiso_rol_table', 1),
(66, '2019_10_15_224037_create_libro_table', 1),
(67, '2019_10_15_224405_create_libro_prestamo_table', 1),
(68, '2019_10_18_201531_create_menu_table', 1),
(69, '2019_10_18_204619_create_menu_rol_table', 1),
(70, '2019_10_22_214558_create_casa_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oblatos`
--

CREATE TABLE `oblatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `estudios_realizados` text,
  `actividad` text,
  `observaciones` text,
  `genero` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `fecha_ingreso` varchar(45) NOT NULL,
  `fecha_retiro` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oblatos`
--

INSERT INTO `oblatos` (`id`, `nombre`, `cedula`, `nacionalidad`, `lugar_origen`, `fecha_nacimiento`, `casa`, `estudios_realizados`, `actividad`, `observaciones`, `genero`, `direccion`, `telefono`, `estado_civil`, `fecha_ingreso`, `fecha_retiro`, `created_at`, `updated_at`) VALUES
(5, 'oblato', '123', 'c', 'Republica', '2006-12-31', 3, 'd', 's', NULL, '1', '12wsdf', '8297727870', '1', '2018-01-01', NULL, '2020-11-11', '2020-11-20'),
(6, 'Nestor H', '89695874', 'C', 'Q', '1960-08-02', 3, NULL, NULL, NULL, '1', 'Cra 78', '156987', '2', '1996-06-02', NULL, '2020-12-07', '2020-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `estudios_realizados` text,
  `actividad` text,
  `observaciones` text,
  `genero` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `fecha_ingreso` varchar(45) NOT NULL,
  `fecha_retiro` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `otros`
--

INSERT INTO `otros` (`id`, `nombre`, `cedula`, `nacionalidad`, `lugar_origen`, `fecha_nacimiento`, `casa`, `estudios_realizados`, `actividad`, `observaciones`, `genero`, `direccion`, `telefono`, `estado_civil`, `fecha_ingreso`, `fecha_retiro`, `created_at`, `updated_at`) VALUES
(4, 'Marta', '12345678', 'martense', 'Republica', '2018-12-31', 3, 'Sacerdote', NULL, NULL, '1', '12wsdf', '1213456', '1', '2020-01-01', NULL, '2020-11-11', '2020-11-20'),
(5, 'Juan Monte', '1077227041', 'Bta', 'Nva', '1990-08-14', 3, NULL, NULL, NULL, '1', 'cra23', '2536987', '1', '2001-12-05', NULL, '2020-12-07', '2020-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso3` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` int(10) UNSIGNED DEFAULT NULL,
  `fips` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `area` int(10) UNSIGNED DEFAULT NULL,
  `population` int(10) UNSIGNED DEFAULT NULL,
  `continent_code` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tld` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_format` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_regex` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighbours` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equivalent_fips_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_type` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `admin_field_active` tinyint(1) UNSIGNED DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `code`, `iso3`, `iso_numeric`, `fips`, `name`, `asciiname`, `capital`, `region`, `area`, `population`, `continent_code`, `tld`, `currency_code`, `phone`, `postal_code_format`, `postal_code_regex`, `languages`, `neighbours`, `equivalent_fips_code`, `background_image`, `admin_type`, `admin_field_active`, `active`, `created_at`, `updated_at`) VALUES
(1, 'GT', 'GTM', 320, 'GT', 'Guatemala', 'Guatemala', 'Guatemala City', 1, 108890, 13550440, 'NA', '.gt', 'GTQ', '502', '#####', '^(d{5})$', 'es-GT', 'MX,HN,BZ,SV', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:17:57'),
(2, 'HN', 'HND', 340, 'HO', 'Honduras', 'Honduras', 'Tegucigalpa', 1, 112090, 7989415, 'NA', '.hn', 'HNL', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', 'GT,NI,SV', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:17:54'),
(3, 'CU', 'CUB', 192, 'CU', 'Cuba', 'Cuba', 'Havana', 1, 110860, 11423000, 'NA', '.cu', 'CUP', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', 'US', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:23:41'),
(4, 'PA', 'PAN', 591, 'PM', 'Panamá', 'Panama', 'Panama City', 1, 78200, 3410676, 'NA', '.pa', 'PAB', '507', '', '', 'es-PA,en', 'CR,CO', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:18:00'),
(5, 'CR', 'CRI', 188, 'CS', 'Costa Rica', 'Costa Rica', 'San Jose', 1, 51100, 4516220, 'NA', '.cr', 'CRC', '506', '####', '^(d{4})$', 'es-CR,en', 'PA,NI', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:23:44'),
(6, 'EC', 'ECU', 218, 'EC', 'Ecuador', 'Ecuador', 'Quito', 1, 283560, 14790608, 'SA', '.ec', 'USD', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', 'PE,CO', '', NULL, '0', 0, 1, NULL, '2019-06-09 03:55:13'),
(7, 'PE', 'PER', 604, 'PE', 'Perú', 'Peru', 'Lima', 1, 1285220, 29907003, 'SA', '.pe', 'PEN', '51', '', '', 'es-PE,qu,ay', 'EC,CL,BO,BR,CO', '', NULL, '0', 0, 1, NULL, NULL),
(8, 'UY', 'URY', 858, 'UY', 'Uruguay', 'Uruguay', 'Montevideo', 1, 176220, 3477000, 'SA', '.uy', 'UYU', '598', '#####', '^(d{5})$', 'es-UY', 'BR,AR', '', NULL, '0', 0, 1, NULL, '2019-11-13 01:21:16'),
(9, 'CO', NULL, NULL, NULL, 'Colombia', NULL, 'Bogota', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 1, NULL, NULL),
(10, 'CA', 'CAN', 152, 'CI', 'Canada', 'Canada', 'Toronto', 1, 756950, 16746491, 'SA', '.cl', 'CLP', '56', '#######', '^(d{7})$', 'es-CL', 'PE,BO,AR', '', NULL, '0', 0, 1, NULL, '2019-06-09 03:54:19'),
(11, 'ES', 'ESP', 724, 'SP', 'España', 'Spain', 'Madrid', 2, 504782, 46505963, 'EU', '.es', 'EUR', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu,oc', 'AD,PT,GI,FR,MA', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:23:23'),
(12, 'ET', 'ETH', 231, 'ET', 'Etiopia', 'Ethiopia', 'Addis Ababa', 2, 1127127, 88013491, 'AF', '.et', 'ETB', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'ER,KE,SD,SS,SO,DJ', '', NULL, '0', 0, 0, NULL, NULL),
(13, 'NL', 'NLD', 528, 'NL', 'Holanda', 'Netherlands', 'Amsterdam', 2, 41526, 16645000, 'EU', '.nl', 'EUR', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', 'DE,BE', NULL, NULL, '0', 0, 1, NULL, NULL),
(14, 'LT', 'LTU', 440, 'LH', 'Lituania', 'Lithuania', 'Vilnius', 2, 65200, 2944459, 'EU', '.lt', 'EUR', '370', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', 'PL,BY,RU,LV', '', NULL, '0', 0, 0, NULL, NULL),
(15, 'FR', 'FRA', 250, 'FR', 'Francia', 'France', 'Paris', 2, 547030, 64768389, 'EU', '.fr', 'EUR', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu,oc', 'CH,DE,BE,LU,IT,AD,MC,ES', '', NULL, '0', 0, 0, NULL, NULL),
(16, 'MZ', 'MOZ', 508, 'MZ', 'Mozambique\r\n', '\r\nMozambique\r\n', 'Maputo', 2, 801590, 22061451, 'AF', '.mz', 'MZN', '258', '####', '^(d{4})$', 'pt-MZ,vmw', 'ZW,TZ,SZ,ZA,ZM,MW', NULL, NULL, '0', 0, 1, NULL, NULL),
(17, 'VE', 'VEN', 862, 'VE', 'Venezuela', 'Venezuela', 'Caracas', 3, 912050, 27223228, 'SA', '.ve', 'VEF', '58', '####', '^(d{4})$', 'es-VE', 'GY,BR,CO', '', NULL, '0', 0, 0, NULL, '2019-06-24 08:18:09'),
(18, 'IT', 'ITA', 380, 'IT', 'Italia', 'Italy', 'Rome', 4, 301230, 60340328, 'EU', '.it', 'EUR', '39', '#####', '^(d{5})$', 'it-IT,en,de-IT,fr-IT,sc,ca,co,sl', 'CH,VA,SI,SM,FR,AT', '', NULL, '0', 0, 0, NULL, NULL),
(19, 'AR', 'ARG', 32, 'AR', 'Argentina', 'Argentina', 'Buenos Aires', 5, 2766890, 41343201, 'SA', '.ar', 'ARS', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr,gn', 'CL,BO,UY,PY,BR', '', NULL, '0', 0, 1, NULL, '2019-06-09 03:53:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentescos`
--

CREATE TABLE `parentescos` (
  `id` int(11) NOT NULL,
  `parentesco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parentescos`
--

INSERT INTO `parentescos` (`id`, `parentesco`) VALUES
(1, 'padre'),
(2, 'madre'),
(3, 'hermano/a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_rol`
--

CREATE TABLE `permiso_rol` (
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `permiso_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestos`
--

CREATE TABLE `presupuestos` (
  `id` int(11) NOT NULL,
  `casa` int(11) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `presupuestos`
--

INSERT INTO `presupuestos` (`id`, `casa`, `documento`, `ano`, `usuario`, `created_at`, `updated_at`) VALUES
(1, 3, 'packages.sql', 2015, 'MyM', '2020-02-10', '2020-02-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `region` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `region`) VALUES
(1, 'Guatemala'),
(2, 'España'),
(3, 'Venezuela'),
(4, 'Italia'),
(5, 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `religiosos`
--

CREATE TABLE `religiosos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `genero` int(11) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `fecha_ingreso_convento` varchar(45) NOT NULL,
  `estudios_realizados` text,
  `actividad_que_realiza` text,
  `fecha_retiro_convento` varchar(45) DEFAULT NULL,
  `observaciones` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `religiosos`
--

INSERT INTO `religiosos` (`id`, `nombre`, `cedula`, `nacionalidad`, `genero`, `direccion`, `telefono`, `lugar_origen`, `fecha_nacimiento`, `casa`, `fecha_ingreso_convento`, `estudios_realizados`, `actividad_que_realiza`, `fecha_retiro_convento`, `observaciones`, `created_at`, `updated_at`) VALUES
(3, 'Laico', '12345', 'laiquensas', 1, '12wsdf', '8297727870', 'alla', '2019-01-01', 3, '2019-12-31', 'w', 'q', NULL, NULL, '2020-10-30', '2020-12-03'),
(4, 'pruebae3', '12345678', 'Peruana', 1, 'q', 'q', 'alla', '1998-12-31', 3, '2018-12-31', 'q', 'q', NULL, 'q', '2020-12-03', '2020-12-03'),
(5, 'pruebae3', '12345678', 'Peruana', 1, '12wsdf', '8297727870', 'alla', '2002-12-31', 3, '2019-12-31', NULL, NULL, NULL, NULL, '2020-12-03', '2020-12-03'),
(6, 'Raul', '12100500', 'Colombiano', 1, 'Calle 1d', '23654879', 'Colombia', '1950-04-01', 3, '1999-02-01', 'Algunos', 'Varios', NULL, NULL, '2020-12-07', '2020-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renovaciones`
--

CREATE TABLE `renovaciones` (
  `id` int(11) NOT NULL,
  `id_hermana` int(11) NOT NULL,
  `num_renovacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `renovaciones`
--

INSERT INTO `renovaciones` (`id`, `id_hermana`, `num_renovacion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-02-04', '2020-02-05', '2020-02-05'),
(2, 1, 2, '2018-10-02', '2020-12-02', '2020-12-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2020-12-14 04:25:24', '2020-12-14 04:25:24'),
(2, 'Consulta', '2020-12-15 00:03:59', '2020-12-15 00:03:59'),
(3, 'Biblioteca', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sacerdotes`
--

CREATE TABLE `sacerdotes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `lugar_origen` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `casa` int(11) NOT NULL,
  `fecha_ingreso_convento` varchar(45) NOT NULL,
  `estudios_realizados` text NOT NULL,
  `actividad_que_realiza` text NOT NULL,
  `fecha_retiro_convento` varchar(45) DEFAULT NULL,
  `observaciones` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sacerdotes`
--

INSERT INTO `sacerdotes` (`id`, `nombre`, `cedula`, `nacionalidad`, `lugar_origen`, `fecha_nacimiento`, `casa`, `fecha_ingreso_convento`, `estudios_realizados`, `actividad_que_realiza`, `fecha_retiro_convento`, `observaciones`, `created_at`, `updated_at`) VALUES
(3, 'Sarcerdote', '1234', 'Colombiano', 'Santo Domingo', '1984-12-31', 3, '2018-12-31', 'Sacerdote', 'Capellan', NULL, NULL, '2020-11-11', '2020-11-20'),
(4, 'Albert Marin', '52456362', 'Venezolono', 'Venezuela', '1991-02-01', 3, '2005-03-01', 'Estudios realizados', 'Actividades', NULL, 'Observaciones', '2020-12-01', '2020-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Cédula de Ciudadanía', '2020-11-12', '2020-12-01'),
(2, 'Pasaporte', '2020-12-01', '2020-12-01'),
(3, 'Escritura Pública', '2020-12-01', '2020-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `nombre`, `estado`, `password`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'congregacion', 'admin', 1, '$2y$10$ah.QCB8j2mxV4PCd3HqlE.EKNIACeFdyMpa7UaDklfGZDnpXzeLYq', 1, NULL, '2019-11-27 00:10:04'),
(2, 'administrador', 'ADM', 1, '$2y$10$ah.QCB8j2mxV4PCd3HqlE.EKNIACeFdyMpa7UaDklfGZDnpXzeLYq', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `usuario`, `password`, `rol`, `estado`, `created_at`, `updated_at`) VALUES
(2, 'Heriberto', 'heriberto', '$2y$10$wJfr6aqQYmgB39QrPOhPVu9F63kwJLBZZd.XC5/B5yIrSbBKtIzKq', 1, 1, '2019-12-24 20:24:34', '2019-12-24 20:24:34'),
(5, 'jhoven montealegre', 'jhovenm', '$2y$10$O15WFv8KxwweI1efWTXcl.EueOphiP3eklkcAcl8iIINOFCQ8L5Ce', 1, 1, '2020-01-27 02:42:59', '2020-12-05 04:57:30'),
(7, 'ARMANDO', 'LOPEZARMANDO@HOTMAIL.COM', '$2y$10$.SpP/H273spSETKx3zsXT.NbyDBpqJORJaVQNxYNvND3h0P7q1.ve', 2, 1, '2020-01-29 02:50:09', '2020-01-29 02:50:09'),
(9, 'Tomás Saab Toledo', 'Ninja Tigre', '$2y$10$wnL.vChWmrUuiFQyeyuTAONNj4azwFUoue.MP52jk/GbJuuwajEUu', 1, 1, '2020-01-31 05:54:12', '2020-01-31 05:54:49'),
(10, 'Congregación admin', 'admincongregacion', '$2y$10$bl9Tz8RtdQqNrHyeOyq8D.MyXIwjWTkrwUjM0q8fdL.htBidnmZN2', 1, 1, '2020-12-05 01:43:04', '2020-12-05 05:28:21'),
(11, 'Admin', 'admin1', '$2y$10$iJFiI/iLlRxClM4usoG0l.zBxsAnTRAJlT/LuSx.RmU3WUxbaKKQi', 1, 1, '2020-12-05 04:00:41', '2020-12-05 04:10:17'),
(12, 'maria del mar', 'delmar', '$2y$10$xcTMiftNyA3PA.wyt2mYAuH/sKUPjtNCZHZEk5LuKDOMmhRjyVwIm', 3, 1, '2020-12-05 05:02:11', '2020-12-05 05:02:11'),
(13, 'Encargado Biblioteca', 'biblioteca', '$2y$10$gQbuSPfVi0kY6zmZg0AWPO6qXGmw0N6r8REcdDnDHEA9FMwTvjhEi', 3, 1, '2020-12-05 05:07:36', '2020-12-05 05:07:36'),
(14, 'Angela Eugenia Silva Sanchez', 'MFundadora', '$2y$10$JmZ.AGypOtqMrZBRTT4b4umHUTLgyREu6HNngUmfeYDg6ZSsGDBoW', 1, 1, '2020-12-10 23:16:05', '2020-12-10 23:16:05'),
(15, 'sarita', 'sarita', '$2y$10$Y3cmUuiGk5k.Q9IBRPPvDeDV7dSJI46nWzf.rIgpO3IiUPECRr1/2', 3, 1, '2020-12-15 00:05:07', '2020-12-15 00:05:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_externo`
--

CREATE TABLE `usuario_externo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_externo`
--

INSERT INTO `usuario_externo` (`id`, `nombre`, `cedula`, `created_at`, `updated_at`) VALUES
(1, 'Juan Perez', '40228152134', '2019-12-30', '2019-12-30'),
(2, 'Juan Perez', '40228152134', '2020-01-06', '2020-01-06'),
(3, 'gxhxfhxfhfhfdhf', '12132424242424', '2020-01-30', '2020-01-30'),
(4, 'Juan jose montealegre', '1110529017', '2020-02-01', '2020-02-01'),
(5, 'Holaf', '5564654655', '2020-02-03', '2020-02-03'),
(6, 'sdasds', 'dsada', '2020-02-04', '2020-02-04'),
(7, 'xsc', '123456', '2020-12-04', '2020-12-04'),
(8, 'xsc', '1234567', '2020-12-04', '2020-12-04'),
(9, 'es', '123', '2020-12-04', '2020-12-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acogidos`
--
ALTER TABLE `acogidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_acogidos_casa` (`casa`),
  ADD KEY `fk_acogidos_genero` (`genero`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas_libros`
--
ALTER TABLE `areas_libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_casa_pais` (`pais`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `name` (`name`),
  ADD KEY `subadmin1_code` (`subadmin1_code`),
  ADD KEY `subadmin2_code` (`subadmin2_code`),
  ADD KEY `active` (`active`);

--
-- Indices de la tabla `contenido_areas`
--
ALTER TABLE `contenido_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contenido_area` (`area`);

--
-- Indices de la tabla `conventos_anteriores`
--
ALTER TABLE `conventos_anteriores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_convento_hermana` (`hermana_id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documento_hermana` (`hermana_id`),
  ADD KEY `tipo_documento` (`tipo_documento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_empleados_casa` (`casa`),
  ADD KEY `fk_empleado_estadocivil` (`estado_civil`),
  ADD KEY `fk_empleado_general` (`genero`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equiposhermanas`
--
ALTER TABLE `equiposhermanas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familiares`
--
ALTER TABLE `familiares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_familiares_hermana` (`hermana_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hermanas`
--
ALTER TABLE `hermanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hermana_pais` (`pais`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invetario_area` (`id_area`),
  ADD KEY `fk_inventario_casa` (`id_casa`),
  ADD KEY `fk_inventario_contenido` (`id_contenido`);

--
-- Indices de la tabla `laicos`
--
ALTER TABLE `laicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_libro_casa` (`id_casa`);

--
-- Indices de la tabla `libro_prestamo`
--
ALTER TABLE `libro_prestamo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro_prestamo_usuario_id_foreign` (`usuario_id`),
  ADD KEY `libro_prestamo_libro_id_foreign` (`libro_id`);

--
-- Indices de la tabla `marias`
--
ALTER TABLE `marias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `martitas`
--
ALTER TABLE `martitas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD KEY `menu_rol_rol_id_foreign` (`rol_id`),
  ADD KEY `menu_rol_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oblatos`
--
ALTER TABLE `oblatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `active` (`active`),
  ADD KEY `fk_region_pais` (`region`);

--
-- Indices de la tabla `parentescos`
--
ALTER TABLE `parentescos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD KEY `permiso_rol_rol_id_foreign` (`rol_id`),
  ADD KEY `permiso_rol_permiso_id_foreign` (`permiso_id`);

--
-- Indices de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `religiosos`
--
ALTER TABLE `religiosos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `renovaciones`
--
ALTER TABLE `renovaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_renovacion_hermana` (`id_hermana`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rol_nombre_unique` (`nombre`);

--
-- Indices de la tabla `sacerdotes`
--
ALTER TABLE `sacerdotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_rol` (`rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_rol` (`rol`);

--
-- Indices de la tabla `usuario_externo`
--
ALTER TABLE `usuario_externo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acogidos`
--
ALTER TABLE `acogidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `areas_libros`
--
ALTER TABLE `areas_libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `casa`
--
ALTER TABLE `casa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15000307;

--
-- AUTO_INCREMENT de la tabla `contenido_areas`
--
ALTER TABLE `contenido_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `conventos_anteriores`
--
ALTER TABLE `conventos_anteriores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equiposhermanas`
--
ALTER TABLE `equiposhermanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `familiares`
--
ALTER TABLE `familiares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hermanas`
--
ALTER TABLE `hermanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `laicos`
--
ALTER TABLE `laicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libro_prestamo`
--
ALTER TABLE `libro_prestamo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marias`
--
ALTER TABLE `marias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `martitas`
--
ALTER TABLE `martitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `oblatos`
--
ALTER TABLE `oblatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `otros`
--
ALTER TABLE `otros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `parentescos`
--
ALTER TABLE `parentescos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `religiosos`
--
ALTER TABLE `religiosos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `renovaciones`
--
ALTER TABLE `renovaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sacerdotes`
--
ALTER TABLE `sacerdotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario_externo`
--
ALTER TABLE `usuario_externo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acogidos`
--
ALTER TABLE `acogidos`
  ADD CONSTRAINT `fk_acogidos_casa` FOREIGN KEY (`casa`) REFERENCES `casa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_acogidos_genero` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `fk_ciudad_pais` FOREIGN KEY (`country_code`) REFERENCES `paises` (`code`);

--
-- Filtros para la tabla `conventos_anteriores`
--
ALTER TABLE `conventos_anteriores`
  ADD CONSTRAINT `fk_convento_hermana` FOREIGN KEY (`hermana_id`) REFERENCES `hermanas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `paises`
--
ALTER TABLE `paises`
  ADD CONSTRAINT `fk_region_pais` FOREIGN KEY (`region`) REFERENCES `regiones` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol`) REFERENCES `rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
