-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2022 a las 23:33:58
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
-- Estructura de tabla para la tabla `destiny_category`
--

CREATE TABLE `destiny_category` (
  `ID` int(10) NOT NULL,
  `categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destiny_category`
--

INSERT INTO `destiny_category` (`ID`, `categoria`) VALUES
(1, 'Nacional'),
(2, 'Internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destiny_user`
--

CREATE TABLE `destiny_user` (
  `ID` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `destiny_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `ID` int(10) NOT NULL,
  `group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`ID`, `group`) VALUES
(1, 'Single'),
(2, 'Grouping');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meals_id`
--

CREATE TABLE `meals_id` (
  `ID` int(10) NOT NULL,
  `meals` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `meals_id`
--

INSERT INTO `meals_id` (`ID`, `meals`) VALUES
(1, 'all inclusive'),
(2, 'half board included'),
(3, 'full board'),
(4, 'not include meals');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_id`
--

CREATE TABLE `status_id` (
  `ID` int(10) NOT NULL,
  `status` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_id`
--

INSERT INTO `status_id` (`ID`, `status`) VALUES
(1, 'outstanding'),
(2, 'offer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport_id`
--

CREATE TABLE `transport_id` (
  `ID` int(10) NOT NULL,
  `transport` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transport_id`
--

INSERT INTO `transport_id` (`ID`, `transport`) VALUES
(1, 'plane'),
(2, 'bus'),
(3, 'boat');

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
(6, 'Franco', 'Ambort', 'ambortfranco94@gmail.com', 'FrancoAmbort', '$2a$10$E2Odm6ZcvMT3bXIPNV8Qf.BY3zjTX32MSqiWi/QCgwzJmxilPIHgW', 0, '1667485227398_img.jpg', 2147483647),
(10, 'manu', 'chavez', 'manu@mail.com', 'manuChao', '$2a$10$4xcQxw4U7ByZijLvgMsmsOA5uY9Y0r8uihU3BVJULWGlXKPbgOp/y', 1, '1667512566126_img.jpg', 1231414123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_category`
--

CREATE TABLE `user_category` (
  `ID` int(10) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_category`
--

INSERT INTO `user_category` (`ID`, `category`) VALUES
(1, 'user'),
(2, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destiny`
--
ALTER TABLE `destiny`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `destiny_category`
--
ALTER TABLE `destiny_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `destiny_user`
--
ALTER TABLE `destiny_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `destiny_user_user_id_foreignkey` (`user_id`),
  ADD KEY `destiny_user_destiny_id_foreignkey` (`destiny_id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `meals_id`
--
ALTER TABLE `meals_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `status_id`
--
ALTER TABLE `status_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `transport_id`
--
ALTER TABLE `transport_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `user_category`
--
ALTER TABLE `user_category`
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
-- AUTO_INCREMENT de la tabla `destiny_category`
--
ALTER TABLE `destiny_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destiny_user`
--
ALTER TABLE `destiny_user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `meals_id`
--
ALTER TABLE `meals_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status_id`
--
ALTER TABLE `status_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `transport_id`
--
ALTER TABLE `transport_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user_category`
--
ALTER TABLE `user_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
