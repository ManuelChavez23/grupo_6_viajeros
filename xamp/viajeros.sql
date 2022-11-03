-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2022 a las 22:10:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajeros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destiny`
--

CREATE TABLE `destiny` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `detail` text NOT NULL,
  `destiny_category_id` int(10) NOT NULL,
  `img` text NOT NULL,
  `status_id` int(10) NOT NULL,
  `extras` int(10) NOT NULL,
  `transport_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `meals_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destiny`
--

INSERT INTO `destiny` (`ID`, `name`, `date`, `price`, `detail`, `destiny_category_id`, `img`, `status_id`, `extras`, `transport_id`, `group_id`, `meals_id`) VALUES
(1, 'Brasil', '2020-05-20', '3000', 'Brasilia cap', 2, 'img-1667505912053.jpg', 2, 0, 3, 2, 3),
(8, 'Cordoba', '2024-08-08', '4500', 'Cordoba!', 1, 'img-1667508650263.jpg', 1, 0, 2, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_category_id` int(10) NOT NULL,
  `img` text NOT NULL,
  `phone_number` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `user`, `password`, `user_category_id`, `img`, `phone_number`) VALUES
(6, 'Franco', 'Ambort', 'ambortfranco94@gmail.com', 'FrancoAmbort', '$2a$10$E2Odm6ZcvMT3bXIPNV8Qf.BY3zjTX32MSqiWi/QCgwzJmxilPIHgW', 0, '1667485227398_img.jpg', 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destiny`
--
ALTER TABLE `destiny`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destiny`
--
ALTER TABLE `destiny`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
