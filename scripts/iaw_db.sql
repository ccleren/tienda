-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: bbdd
-- Tiempo de generación: 14-03-2022 a las 11:43:57
-- Versión del servidor: 8.0.28
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iaw_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--
DROP TABLE IF EXISTS iaw_db.clientes;

CREATE TABLE `clientes` (
  `nombre` varchar(20) NOT NULL,
  `pApellido` varchar(20) NOT NULL,
  `sApellido` varchar(20) NOT NULL,
  `DNI` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estructura de tabla para la tabla `productos`
--
DROP TABLE IF EXISTS iaw_db.productos;

CREATE TABLE `productos` (
  `codigo` int NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `rebaja` int NOT NULL,
  `estarebajas` int NOT NULL,
  `precio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estructura de tabla para la tabla `proveedores`
--
DROP TABLE IF EXISTS iaw_db.proveedores;

CREATE TABLE `proveedores` (
  `nombre` varchar(50) NOT NULL,
  `cif` varchar(9) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`cif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
