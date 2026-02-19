-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2026 a las 16:05:16
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`id_atencion`, `id_reserva`, `id_empleado`, `fecha`, `nota`) VALUES
(1, 2, 6, '2012-02-26', 'Pepito fue muy amable y cordial, realizo su servicio de manera eficaz'),
(2, 3, 4, '2013-02-26', 'Su servicio fue muy pobre, dejo las sabanas sucias y oliendo mal. 0 estrellas, deberian cambiarla.'),
(3, 5, 1, '2025-12-25', 'Pudo ser mejor. Dejo limpio pero se robo los jabones por un buen tiempo y luego los regreso gastados'),
(4, 7, 2, '2020-02-26', 'Muy buen servicio y atención al cliente. Me atendió de manera cordial.'),
(5, 8, 3, '2027-02-25', 'Muy buen servicio, dejo todo muy limpio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Alison Duarte', 'aliduartem0@gmail.com', '6676505000', '2014-02-26'),
(2, 'Kristoff Bernal', 'kristoff.de.alis@gmail.com', '6675403146', '2014-02-26'),
(3, 'Leslie Osuna', 'leli.osunaa@gmail.com', '6674901497', '2012-12-25'),
(4, 'Alejandra Lopez', 'alesita.lopez@gmail.com', '6673051593', '2004-01-26'),
(5, 'Mirlen Leyva', 'mirly.guapa@gmail.com', '8145473846', '2026-01-26'),
(6, 'Otilio Bernal Duarte', 'caldo.depollo@gmail.com', '6675879503', '2013-02-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_hotel`, `nombre`, `puesto`, `email`) VALUES
(1, 2, 'Santiago Najar', 'intendente', 'santiago.najar@gmail.com'),
(2, 2, 'Graciela Montes', 'Gerente', 'graciela.montes@gmail.com'),
(3, 2, 'Otilia Perez', 'camarera', 'otilia.perez@gmail.com'),
(4, 2, 'Juana la cubana', 'lavandera', '@juana.la.cubana69@gmail.com'),
(6, 2, 'Pepito Ruiz', 'Chef', 'pepito.esta.triste@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `id_habitacion` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `precio_noche` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id_habitacion`, `id_hotel`, `numero`, `tipo`, `precio_noche`, `estado`) VALUES
(1, 2, '111', 'Suite', 10000, 'Ocupada'),
(2, 2, '87', 'Habitación Regular', 3500, 'Disponible'),
(3, 2, '46', 'Habitación Regular', 3500, 'Ocupada'),
(4, 2, '145', 'Suite', 10000, 'Disponible'),
(5, 2, '222', 'Delux', 5000, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nombre`, `ciudad`, `telefono`) VALUES
(1, 'Olas Altas', 'Mazatlán', '6675849302'),
(2, 'Krislis Resort', 'Culiacan', '6676505000'),
(3, 'Xcaret', 'Cancun', '8005125060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` double NOT NULL,
  `metodo` varchar(50) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `estado_pago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_pago`, `id_reserva`, `fecha_pago`, `monto`, `metodo`, `referencia`, `estado_pago`) VALUES
(1, 2, '2017-02-26', 3500, 'Tarjeta', '0485739687', 'Pagada'),
(2, 3, '2027-01-26', 5500, 'Efectivo', '2748690445', 'En espera de pago'),
(3, 4, '2014-02-26', 10000, 'Tarjeta', '4783969957', 'En espera de pago'),
(4, 5, '2025-02-26', 3500, 'Tarjeta', '3746587934', 'Pagada'),
(5, 7, '2014-02-26', 10000, 'Efectivo', '5748392354', 'Pagada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `num_huespedes` int(11) NOT NULL,
  `estado_reserva` varchar(50) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_habitacion`, `fecha_entrada`, `fecha_salida`, `num_huespedes`, `estado_reserva`, `fecha_creacion`) VALUES
(1, 4, 2, '2012-02-26', '2019-02-26', 1, 'Cancelada', '2004-01-26'),
(2, 3, 4, '2020-12-25', '2026-12-25', 5, 'Activa', '2017-12-25'),
(3, 5, 5, '2027-01-26', '2029-01-26', 2, 'Activa', '2026-01-26'),
(4, 2, 1, '2014-02-26', '2020-02-26', 2, 'Activa', '2014-02-26'),
(5, 4, 2, '2025-02-26', '2001-03-26', 1, 'Pagada', '2024-02-26'),
(6, 1, 1, '2014-02-26', '2014-02-26', 2, 'Cancelada', '2012-02-26'),
(7, 1, 1, '2014-02-26', '2020-02-26', 2, 'Pagada', '2013-02-26'),
(8, 3, 4, '2030-03-26', '0004-04-26', 7, 'Activa', '2028-03-26'),
(9, 5, 3, '2002-02-26', '2002-03-26', 1, 'Pagada', '2001-02-26'),
(10, 6, 2, '2013-02-26', '2022-02-26', 1, 'Activa', '2013-02-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `id_reserva` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`id_reserva`, `id_servicio`, `cantidad`, `precio_unitario`) VALUES
(2, 1, 1, 500),
(2, 2, 1, 100),
(3, 3, 1, 750),
(3, 2, 2, 100),
(4, 4, 1, 200),
(4, 5, 2, 200),
(5, 1, 3, 500),
(5, 5, 15, 200),
(7, 1, 1, 200),
(7, 3, 2, 750),
(10, 4, 5, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `precio_base`) VALUES
(1, 'Servicio al cuarto', 500),
(2, 'Lavanderia', 100),
(3, 'Gimnasio', 750),
(4, 'Area de piscina', 200),
(5, 'Limpieza al cuarto', 200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id_habitacion`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_hotel_2` (`id_hotel`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indices de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  ADD CONSTRAINT `atencion_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`id_habitacion`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  ADD CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
