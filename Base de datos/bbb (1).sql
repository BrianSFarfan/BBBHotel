-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2021 a las 02:10:17
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos_extra`
--

CREATE TABLE IF NOT EXISTS `cargos_extra` (
  `IDCargos` int(11) NOT NULL,
  `nombreCargo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcionCargo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precioCar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `ID` int(11) NOT NULL,
  `calle` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `localidad` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `Legajo` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `DNI` int(18) NOT NULL,
  `Direccion` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rol` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE IF NOT EXISTS `habitaciones` (
  `IDHabitaciones` int(11) NOT NULL,
  `nombre_h` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `disponibilidad` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `servicios` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `reseña` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cargosEx` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio_hab` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `IDPago` int(11) NOT NULL,
  `Reserva` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `IVA` int(5) NOT NULL,
  `impuestos` int(5) NOT NULL,
  `metodoPago` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cantCuotas` int(5) NOT NULL,
  `precioFinal` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE IF NOT EXISTS `reserva` (
  `IDReserva` int(11) NOT NULL,
  `fecha_Inicio` date NOT NULL,
  `fecha_Fin` date NOT NULL,
  `cant_Dias` int(3) NOT NULL,
  `Habitaciones` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Usuario` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE IF NOT EXISTS `reseña` (
  `IDReseña` int(11) NOT NULL,
  `usuario` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `puntuacion` int(5) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `IDServicios` int(11) NOT NULL,
  `nombre_h` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `responsable` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `IDTipo` int(11) NOT NULL,
  `nomTipo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcionTipo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precioTipo` int(10) NOT NULL,
  `cantPersonas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `NumCliente` int(11) NOT NULL,
  `nombreUsuario` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidoUsuario` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `DNI` int(18) NOT NULL,
  `Direccion` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `HabFavoritas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos_extra`
--
ALTER TABLE `cargos_extra`
  ADD PRIMARY KEY (`IDCargos`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Legajo`),
  ADD KEY `Direccion` (`Direccion`(191));

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`IDHabitaciones`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`IDPago`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`IDReserva`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`IDReseña`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`IDServicios`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`IDTipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`NumCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos_extra`
--
ALTER TABLE `cargos_extra`
  MODIFY `IDCargos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Legajo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `IDHabitaciones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `IDPago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `IDReserva` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `IDReseña` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `IDServicios` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `IDTipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `NumCliente` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
