-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2024 a las 22:53:14
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
-- Base de datos: `basededatlunisay`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `documento` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `documento`, `password`) VALUES
(1, 'Segunda fotografía', 1233344, '$2y$10$WPBPmEZ7ypRTEU3APFBJnu7lgzAnf5hh6sD51xZ0R6pX8ajqNLFcm'),
(4, 'ggggg', 3445, '$2y$10$8KQ5IIYVUmYE9VYLyBP/TueSGMcoTaPZgLe.fQM50EtKcxb6LjogW'),
(6, 'fgh', 456, '$2y$10$597oAU/OvPLns4JYw9YWfOlxELkemx08NmLt8G.ByWLjSxaVuTYZG'),
(8, 'ffff', 3455, '$2y$10$LwPcG0py0mu.z84asJH4a./NDpxA.MILOsuy7Ov3GdyM6pgE/3SeS'),
(9, 'ghghhh', 677, '$2y$10$L7pr89kd5950EPnNtxKK4u//klPAh64HIG0CS8nXLnXTnIeeWvDsy'),
(10, 'ffffff', 234, '$2y$10$/LfJPcHoByrYYNr7RfHTwe8jX1f7wBDhVjMthzxofJFUgVhm2fuVC'),
(12, 'cindy', 12345, '$2y$10$O/qyxfP/Q7DjG0NoCQUvvOwKmN8prdjy4o/zAR/08TrhLbvdbvl86'),
(14, 'cindyd', 123454, '$2y$10$tyg4Bsj3AJtYk1/Z7iwcSun/.PauvqxB10u6OuT9V6xk0p0Eb0ARu'),
(15, 'pppp', 22355, '$2y$10$irmz5VKfyM2oe9MQTifUluDaVB821lc6GbrTzIEwQSwwk9V6ji83.'),
(16, 'leidy', 22355544, '$2y$10$EOkK0INKknyyFB1i8Yn/J.4MifVBSHd6vp5JuBbwiarCpUQhMabQC'),
(17, 'sofia mamahuevoo', 2147483647, '$2y$10$AD10/AHbWpTXRp1eYFESE.A8Jm5kY9Fg97B9KoA2DifRe0LR8UnJ2'),
(19, 'sofia mamahuevoo', 132435, '$2y$10$V1ACKcgpeES0BvNhPpMG2uiq.6Yo6/PcdwUTqEVayk2jsi5Usc4Ka'),
(20, 'luisa', 1023414224, '$2y$10$UCCQhQJjKHJ/ebCBx55ntOT1ZjFFIej4ZuYL4/YsmcTUnf4/7goX.'),
(21, 'cindy tatiana', 10320206, '$2y$10$PNsX767/YkWYG1eyDl5r3enObEVxJwh2GXXo3cV85kJLnuto4JXb6'),
(24, 'leidy', 22344, '$2y$10$kLS1Io6573tO3X0R1gHrG.1zqBKSnaqoijwAGkoaVq/xMYL4MK4Ti');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
