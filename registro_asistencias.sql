-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2024 a las 00:10:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_asistencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_empleado` int(5) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DNI` char(8) NOT NULL,
  `Turno` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Entrada` time NOT NULL,
  `Hora_Salida` time NOT NULL,
  `Horas_Trabajas` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_empleado`, `Nombre`, `DNI`, `Turno`, `Fecha`, `Hora_Entrada`, `Hora_Salida`, `Horas_Trabajas`) VALUES
(10001, 'jefferson ccosi', '74440659', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10002, 'ivan sarmiento', '74440645', 'tarde ', '2024-03-06', '14:00:00', '20:00:00', 6),
(10003, 'julian velazques', '74440658', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10004, 'rosa nina', '74440669', 'tarde ', '2024-03-06', '12:00:00', '20:00:00', 8),
(10005, 'wariz escarza', '74440614', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10001, 'jefferson ccosi', '74440659', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10002, 'ivan sarmiento', '74440645', 'tarde ', '2024-03-06', '14:00:00', '20:00:00', 6),
(10003, 'julian velazques', '74440658', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10004, 'rosa nina', '74440669', 'tarde ', '2024-03-06', '12:00:00', '20:00:00', 8),
(10005, 'wariz escarza', '74440614', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10001, 'jefferson ccosi', '74440659', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10002, 'ivan sarmiento', '74440645', 'tarde ', '2024-03-06', '14:00:00', '20:00:00', 6),
(10003, 'julian velazques', '74440658', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10004, 'rosa nina', '74440669', 'tarde ', '2024-03-06', '12:00:00', '20:00:00', 8),
(10005, 'wariz escarza', '74440614', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10001, 'jefferson ccosi', '74440659', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10002, 'ivan sarmiento', '74440645', 'tarde ', '2024-03-06', '14:00:00', '20:00:00', 6),
(10003, 'julian velazques', '74440658', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5),
(10004, 'rosa nina', '74440669', 'tarde ', '2024-03-06', '12:00:00', '20:00:00', 8),
(10005, 'wariz escarza', '74440614', 'ma?ana', '2024-03-06', '08:00:00', '12:00:00', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
