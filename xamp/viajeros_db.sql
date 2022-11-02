-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2022 a las 21:07:10
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
(1, 'destino', '2023-05-23', '0', 'rtghrtgwertgwerg', 2, 'img-1667417087154.jpg', 0, 0, 0, 0, 0),
(2, 'erotijerotkm', '2022-12-11', '0', 'asfdfasdfasdf', 0, 'img-1667417955027.jpg', 0, 0, 0, 0, 0);

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
  `grouping` int(10) NOT NULL,
  `single` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meals_id`
--

CREATE TABLE `meals_id` (
  `ID` int(10) NOT NULL,
  `all_inclusive` int(10) NOT NULL,
  `half board included` int(10) NOT NULL,
  `full_board` int(10) NOT NULL,
  `not_include_meals` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_id`
--

CREATE TABLE `status_id` (
  `ID` int(10) NOT NULL,
  `outstanding` int(10) NOT NULL,
  `offer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport_id`
--

CREATE TABLE `transport_id` (
  `ID` int(10) NOT NULL,
  `bus` int(10) NOT NULL,
  `plane` int(10) NOT NULL,
  `boat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_category`
--

CREATE TABLE `user_category` (
  `ID` int(10) NOT NULL,
  `admin` int(10) NOT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destiny`
--
ALTER TABLE `destiny`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `destiny_destiny_category_id_foreign` (`destiny_category_id`),
  ADD KEY `destiny_status_id_foreign` (`status_id`),
  ADD KEY `destiny_transport_id_foreign` (`transport_id`),
  ADD KEY `destiny_group_id_foreign` (`group_id`),
  ADD KEY `destiny_meals_id_foreign` (`meals_id`);

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `users_user_category_id_foreign` (`user_category_id`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meals_id`
--
ALTER TABLE `meals_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_id`
--
ALTER TABLE `status_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transport_id`
--
ALTER TABLE `transport_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_category`
--
ALTER TABLE `user_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
