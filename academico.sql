-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2020 a las 15:58:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` int(12) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `residencia` varchar(40) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre`, `fechanac`, `residencia`, `codigo`) VALUES
(6080015, 'juan', '1999-10-20', 'Santa Cruz', 7),
(7001255, 'ana', '1990-12-24', 'Oruro', 4),
(7083015, 'abigail', '1994-12-25', 'La Paz', 2),
(7875781, 'julia', '1998-11-12', 'La Paz', 2),
(9228804, 'wali', '1993-11-16', 'Chuquisaca', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `ci` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nota` int(3) DEFAULT NULL,
  `materia` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`ci`, `codigo`, `nota`, `materia`) VALUES
(6080015, 7, 78, 'INF-324'),
(7001255, 4, 45, 'INF-323'),
(7083015, 2, 68, 'INF-333'),
(7875781, 2, 77, 'INF-316'),
(9228804, 1, 99, 'INF-332');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `clave` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`) VALUES
(7083015, 'abi2003'),
(6080015, 'juan123'),
(7001255, 'ana123'),
(7875781, 'julia123'),
(9228804, 'wali123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD KEY `ci` (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `ci` (`ci`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
