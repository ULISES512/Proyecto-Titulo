-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2025 a las 04:18:50
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
-- Base de datos: `admi_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docuementos_inscrip`
--

CREATE TABLE `docuementos_inscrip` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Recibo` longblob DEFAULT NULL,
  `Carta_decla` longblob DEFAULT NULL,
  `INE` longblob DEFAULT NULL,
  `Comprobante` longblob DEFAULT NULL,
  `Curp` longblob DEFAULT NULL,
  `Fecha_Inscripcion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docuementos_inscrip`
--

INSERT INTO `docuementos_inscrip` (`id`, `Nombre`, `Recibo`, `Carta_decla`, `INE`, `Comprobante`, `Curp`, `Fecha_Inscripcion`) VALUES
(1, 'Jose Ulises Jimenez Garcia', 0x416372656469746163696f6e20532e53202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x436572746966696361646f5f536563202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x43757270202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x416374615f4e6163202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x43757270202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, '2025-08-07 19:01:56'),
(2, 'Pedro Garcia Suarez', 0x416372656469746163696f6e20532e53202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x436572746966696361646f5f536563202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x43757270202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x416374615f4e6163202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x43757270202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, '2025-08-07 19:02:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_exa_admi`
--

CREATE TABLE `documentos_exa_admi` (
  `id` int(11) NOT NULL,
  `Acta_nac` longblob DEFAULT NULL,
  `Curp` longblob DEFAULT NULL,
  `Certificado` longblob DEFAULT NULL,
  `Comprobante` longblob DEFAULT NULL,
  `Fotografia` longblob DEFAULT NULL,
  `Tel_Casa` varchar(20) DEFAULT NULL,
  `Tel_tutor` varchar(25) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Opcion1` varchar(30) DEFAULT NULL,
  `Opcion2` varchar(30) DEFAULT NULL,
  `Opcion3` varchar(30) DEFAULT NULL,
  `Carta_Conf` longblob DEFAULT NULL,
  `Carta_Verac` longblob DEFAULT NULL,
  `fecha_subida` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentos_exa_admi`
--

INSERT INTO `documentos_exa_admi` (`id`, `Acta_nac`, `Curp`, `Certificado`, `Comprobante`, `Fotografia`, `Tel_Casa`, `Tel_tutor`, `Correo`, `Opcion1`, `Opcion2`, `Opcion3`, `Carta_Conf`, `Carta_Verac`, `fecha_subida`) VALUES
(1, 0x416374615f4e6163202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x43757270202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x436572746966696361646f5f536563202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x416372656469746163696f6e20532e53202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x466f746f6772616669612044656d205072756562612e6a7067, '2223124472', '2215248419', 'joseulisesjimenezgarcia7082@gmail.com', 'mecatronica', 'programacion', 'soporte', 0x4361727461204465205665726163696461642e706466, 0x4361727461204465204465636c61726163696f6e2e706466, '2025-08-06 16:25:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_reinscripcion`
--

CREATE TABLE `documentos_reinscripcion` (
  `id` int(11) NOT NULL,
  `Recibo` longblob DEFAULT NULL,
  `Carta_Bajo` longblob DEFAULT NULL,
  `Numero_Control` varchar(20) DEFAULT NULL,
  `Curp` longblob DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido_Paterno` varchar(50) DEFAULT NULL,
  `Apellido_Materno` varchar(50) DEFAULT NULL,
  `Semestre` varchar(20) DEFAULT NULL,
  `Fecha_Reinscripcion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentos_reinscripcion`
--

INSERT INTO `documentos_reinscripcion` (`id`, `Recibo`, `Carta_Bajo`, `Numero_Control`, `Curp`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `Semestre`, `Fecha_Reinscripcion`) VALUES
(1, 0x416372656469746163696f6e20532e53202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 0x436572746966696361646f5f536563202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, '1234567891', 0x416372656469746163696f6e20532e53202d204a696d656e657a20476172636961204a6f736520556c697365732e706466, 'Luis Miguel', 'Gallego', 'Basteri', '4', '2025-08-07 19:23:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docuementos_inscrip`
--
ALTER TABLE `docuementos_inscrip`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos_exa_admi`
--
ALTER TABLE `documentos_exa_admi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos_reinscripcion`
--
ALTER TABLE `documentos_reinscripcion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docuementos_inscrip`
--
ALTER TABLE `docuementos_inscrip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documentos_exa_admi`
--
ALTER TABLE `documentos_exa_admi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `documentos_reinscripcion`
--
ALTER TABLE `documentos_reinscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
