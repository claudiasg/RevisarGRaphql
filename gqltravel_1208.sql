-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2019 a las 05:05:25
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gqltravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `people`
--

INSERT INTO `people` (`id`, `name`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'Claudia', 'Colombia 1', '2019-08-11 16:10:57', '2019-08-11 16:10:57'),
(2, 'Paola', 'Ecuador 1', '2019-08-11 16:11:10', '2019-08-11 16:11:10'),
(3, 'Andres Peres', 'Salvador 11', '2019-08-11 16:11:24', '2019-08-11 16:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `travels`
--

CREATE TABLE `travels` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `travels`
--

INSERT INTO `travels` (`id`, `description`, `days`, `personId`, `createdAt`, `updatedAt`) VALUES
(2, 'Paraguay peru', 5, 1, '2019-08-11 16:11:34', '2019-08-11 16:11:34'),
(3, 'EE UU -  Peru', 8, 2, '2019-08-11 16:12:01', '2019-08-11 16:12:01'),
(4, 'Brasil - Panama', 5, 3, '2019-08-11 16:12:22', '2019-08-11 16:12:22'),
(5, 'Argentina - Panama', 5, 3, '2019-08-11 16:12:30', '2019-08-11 16:12:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `createdAt`, `updatedAt`) VALUES
(2, 'claudia', 'claudia', '$2b$10$f1kvHtCITu3B5K989E/oMulDoLiTBhBSC/Fowbr57l0iZKyrOncVi', '2019-08-11 16:09:00', '2019-08-11 16:09:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personId` (`personId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `travels`
--
ALTER TABLE `travels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `travels_ibfk_1` FOREIGN KEY (`personId`) REFERENCES `people` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
