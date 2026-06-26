-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:23:36
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
-- Base de datos: `zapateríamenjivar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(1, 'Juan', 'Perez', '7100-0001', 'San Salvador'),
(2, 'Maria', 'Lopez', '7100-0002', 'Santa Ana'),
(3, 'Carlos', 'Garcia', '7100-0003', 'Sonsonate'),
(4, 'Ana', 'Martinez', '7100-0004', 'La Libertad'),
(5, 'Luis', 'Hernandez', '7100-0005', 'San Miguel'),
(6, 'Carmen', 'Ruiz', '7100-0006', 'Usulutan'),
(7, 'Pedro', 'Torres', '7100-0007', 'Ahuachapan'),
(8, 'Lucia', 'Morales', '7100-0008', 'La Union'),
(9, 'Jorge', 'Castro', '7100-0009', 'Chalatenango'),
(10, 'Elena', 'Flores', '7100-0010', 'Cuscatlan'),
(11, 'Mario', 'Rivas', '7100-0011', 'San Vicente'),
(12, 'Patricia', 'Vega', '7100-0012', 'Morazan'),
(13, 'Kevin', 'Mendez', '7100-0013', 'Cabanas'),
(14, 'Rosa', 'Aguilar', '7100-0014', 'La Paz'),
(15, 'Diego', 'Navarro', '7100-0015', 'San Salvador'),
(16, 'Andrea', 'Campos', '7100-0016', 'Santa Ana'),
(17, 'Oscar', 'Reyes', '7100-0017', 'Sonsonate'),
(18, 'Daniela', 'Silva', '7100-0018', 'San Miguel'),
(19, 'Fernando', 'Alvarez', '7100-0019', 'Usulutan'),
(20, 'Gabriela', 'Luna', '7100-0020', 'La Libertad'),
(21, 'Ricardo', 'Herrera', '7100-0021', 'Ahuachapan'),
(22, 'Valeria', 'Mejia', '7100-0022', 'La Union'),
(23, 'Samuel', 'Pineda', '7100-0023', 'Cuscatlan'),
(24, 'Paola', 'Benitez', '7100-0024', 'Chalatenango'),
(25, 'Erick', 'Santos', '7100-0025', 'Morazan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(1, 1, 1, 1, 75.00),
(2, 2, 2, 1, 65.00),
(3, 3, 3, 1, 30.00),
(4, 4, 4, 1, 120.00),
(5, 5, 5, 1, 55.00),
(6, 6, 6, 1, 40.00),
(7, 7, 7, 1, 68.00),
(8, 8, 8, 1, 58.00),
(9, 9, 9, 1, 85.00),
(10, 10, 10, 1, 75.00),
(11, 11, 11, 1, 65.00),
(12, 12, 12, 1, 30.00),
(13, 13, 13, 1, 120.00),
(14, 14, 14, 1, 55.00),
(15, 15, 15, 1, 40.00),
(16, 16, 16, 1, 68.00),
(17, 17, 17, 1, 58.00),
(18, 18, 18, 1, 85.00),
(19, 19, 19, 1, 75.00),
(20, 20, 20, 1, 65.00),
(21, 21, 21, 1, 30.00),
(22, 22, 22, 1, 120.00),
(23, 23, 23, 1, 55.00),
(24, 24, 24, 1, 40.00),
(25, 25, 25, 1, 68.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `cargo`, `telefono`) VALUES
(1, 'Jose Ramirez', 'Vendedor', '7000-1001'),
(2, 'Karla Flores', 'Cajera', '7000-1002'),
(3, 'Miguel Castro', 'Vendedor', '7000-1003'),
(4, 'Sofia Rivera', 'Gerente', '7000-1004'),
(5, 'Daniel Cruz', 'Bodeguero', '7000-1005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `talla` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `marca`, `talla`, `precio`, `stock`) VALUES
(1, 'Tenis Running', 'Nike', 38, 75.00, 20),
(2, 'Tenis Running', 'Nike', 39, 75.00, 18),
(3, 'Tenis Running', 'Nike', 40, 75.00, 22),
(4, 'Zapato Formal', 'Flexi', 40, 65.00, 15),
(5, 'Zapato Formal', 'Flexi', 41, 65.00, 12),
(6, 'Zapato Formal', 'Flexi', 42, 65.00, 10),
(7, 'Sandalias', 'Adidas', 37, 30.00, 25),
(8, 'Sandalias', 'Adidas', 38, 30.00, 20),
(9, 'Sandalias', 'Adidas', 39, 30.00, 18),
(10, 'Botas', 'Timberland', 40, 120.00, 8),
(11, 'Botas', 'Timberland', 41, 120.00, 10),
(12, 'Botas', 'Timberland', 42, 120.00, 7),
(13, 'Tenis Casual', 'Puma', 38, 55.00, 14),
(14, 'Tenis Casual', 'Puma', 39, 55.00, 16),
(15, 'Tenis Casual', 'Puma', 40, 55.00, 12),
(16, 'Zapato Escolar', 'Bata', 35, 40.00, 30),
(17, 'Zapato Escolar', 'Bata', 36, 40.00, 28),
(18, 'Zapato Escolar', 'Bata', 37, 40.00, 25),
(19, 'Tenis Urbano', 'Reebok', 39, 68.00, 15),
(20, 'Tenis Urbano', 'Reebok', 40, 68.00, 14),
(21, 'Tenis Urbano', 'Reebok', 41, 68.00, 13),
(22, 'Mocasines', 'Clarks', 40, 58.00, 11),
(23, 'Mocasines', 'Clarks', 41, 58.00, 9),
(24, 'Zapato Deportivo', 'Under Armour', 42, 85.00, 10),
(25, 'Zapato Deportivo', 'Under Armour', 43, 85.00, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `total`, `id_cliente`, `id_empleados`) VALUES
(1, '2026-06-01', 75.00, 1, 1),
(2, '2026-06-02', 65.00, 2, 2),
(3, '2026-06-03', 30.00, 3, 3),
(4, '2026-06-04', 120.00, 4, 4),
(5, '2026-06-05', 55.00, 5, 5),
(6, '2026-06-06', 40.00, 6, 1),
(7, '2026-06-07', 68.00, 7, 2),
(8, '2026-06-08', 58.00, 8, 3),
(9, '2026-06-09', 85.00, 9, 4),
(10, '2026-06-10', 75.00, 10, 5),
(11, '2026-06-11', 65.00, 11, 1),
(12, '2026-06-12', 30.00, 12, 2),
(13, '2026-06-13', 120.00, 13, 3),
(14, '2026-06-14', 55.00, 14, 4),
(15, '2026-06-15', 40.00, 15, 5),
(16, '2026-06-16', 68.00, 16, 1),
(17, '2026-06-17', 58.00, 17, 2),
(18, '2026-06-18', 85.00, 18, 3),
(19, '2026-06-19', 75.00, 19, 4),
(20, '2026-06-20', 65.00, 20, 5),
(21, '2026-06-21', 30.00, 21, 1),
(22, '2026-06-22', 120.00, 22, 2),
(23, '2026-06-23', 55.00, 23, 3),
(24, '2026-06-24', 40.00, 24, 4),
(25, '2026-06-25', 68.00, 25, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleados` (`id_empleados`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
