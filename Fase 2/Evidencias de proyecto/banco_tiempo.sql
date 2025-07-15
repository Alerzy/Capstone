-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2025 a las 04:25:34
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
-- Base de datos: `banco_tiempo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intercambios`
--

CREATE TABLE `intercambios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `servicio_ofrecido` varchar(100) NOT NULL,
  `horas_ofrecidas` int(11) NOT NULL,
  `horas_deseadas` int(11) NOT NULL,
  `servicio_deseado` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(20) NOT NULL DEFAULT 'pendiente',
  `aceptado_por` varchar(100) DEFAULT NULL,
  `confirmado_por_ofertante` tinyint(1) NOT NULL DEFAULT 0,
  `confirmado_por_aceptante` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `intercambios`
--

INSERT INTO `intercambios` (`id`, `usuario`, `servicio_ofrecido`, `horas_ofrecidas`, `horas_deseadas`, `servicio_deseado`, `descripcion`, `fecha_creacion`, `estado`, `aceptado_por`, `confirmado_por_ofertante`, `confirmado_por_aceptante`) VALUES
(12, 'tobias', 'Folclore', 3, 1, 'Caja', 'asdafssd', '2025-07-10 07:06:18', 'finalizado', 'luis', 1, 1),
(13, 'tobias', 'Prueba', 2, 3, 'Prueba2', 'SOLO PRUEBA', '2025-07-10 07:53:36', 'finalizado', 'alexis', 1, 1),
(17, 'Jorge', 'Clases de Carpinteria basica', 2, 2, 'Clases de magia', 'Necesito ser el mejor mago', '2025-07-10 08:59:24', 'finalizado', 'Diego', 1, 1),
(18, 'fernando', 'Clases de computacion', 2, 2, 'Computacion avanzada', 'Quiero aprender mas de computacion', '2025-07-10 09:19:27', 'finalizado', 'barbi', 1, 1),
(20, 'barbi', 'Clase de veterinaria', 3, 2, 'Clase de tinku', 'Quiero aprender a bailar caporal', '2025-07-10 11:15:09', 'finalizado', 'tobias', 1, 1),
(21, 'pepita', 'clases de auto ayuda', 2, 2, 'Clase de baile', 'solo rellenar', '2025-07-10 21:39:18', 'finalizado', 'alexis', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `intercambio_id` int(11) NOT NULL,
  `emisor` varchar(100) NOT NULL,
  `receptor` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `intercambio_id`, `emisor`, `receptor`, `mensaje`, `fecha`) VALUES
(4, 7, 'luis', 'alexis', 'Hola!', '2025-07-10 06:19:34'),
(5, 8, 'alexis', 'barbara', 'Hola barbara!', '2025-07-10 06:31:49'),
(6, 12, 'Luis', 'tobias', 'hola', '2025-07-10 07:08:38'),
(7, 12, 'Luis', 'tobias', 'Hola!', '2025-07-10 07:17:09'),
(8, 12, 'tobias', 'luis', 'Hola como estas?', '2025-07-10 07:20:05'),
(9, 17, 'Diego', 'Jorge', 'Hola', '2025-07-10 09:04:22'),
(10, 17, 'Diego', 'Jorge', 'Hola', '2025-07-10 09:04:23'),
(11, 17, 'Diego', 'Jorge', 'mm..', '2025-07-10 09:04:29'),
(12, 19, 'fernando', 'alexis', 'oa', '2025-07-10 10:20:27'),
(13, 19, 'fernando', 'alexis', 'oa', '2025-07-10 10:20:29'),
(14, 19, 'alexis', 'fernando', 'Hola como estas', '2025-07-10 10:21:26'),
(15, 19, 'alexis', 'fernando', 'Hola como estas', '2025-07-10 10:21:27'),
(16, 19, 'alexis', 'fernando', 'Hola como estas', '2025-07-10 10:21:27'),
(17, 19, 'alexis', 'fernando', 'Hola como estas', '2025-07-10 10:21:27'),
(18, 20, 'tobias', 'barbi', 'Hola barbi', '2025-07-10 11:18:12'),
(19, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:09'),
(20, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(21, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(22, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(23, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(24, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(25, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:10'),
(26, 20, 'barbi', 'tobias', 'oa', '2025-07-10 11:19:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `usuario_destino` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `leida` tinyint(1) DEFAULT 0,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `usuario_destino`, `mensaje`, `leida`, `fecha`) VALUES
(7, 'luis', '<span class=\'chat-noti\' data-intercambio=\'12\' data-receptor=\'\'>Nuevo mensaje de <strong>tobias</strong> en el chat</span>', 1, '2025-07-10 03:20:05'),
(8, 'tobias', 'El usuario luis ha confirmado la finalización del intercambio.', 1, '2025-07-10 03:48:17'),
(9, 'tobias', 'Tu intercambio ha sido aceptado por alexis', 1, '2025-07-10 03:55:44'),
(10, 'alexis', 'Tu intercambio ha sido aceptado por barbi', 1, '2025-07-10 04:35:07'),
(11, 'alexis', 'El usuario barbi ha confirmado la finalización del intercambio.', 1, '2025-07-10 04:35:21'),
(12, 'barbi', 'El usuario alexis ha confirmado la finalización del intercambio.', 1, '2025-07-10 04:35:45'),
(13, 'tobias', 'El usuario alexis ha confirmado la finalización del intercambio.', 1, '2025-07-10 04:43:36'),
(14, 'alexis', 'El usuario tobias ha confirmado la finalización del intercambio.', 1, '2025-07-10 04:44:01'),
(15, 'alexis', 'Tu intercambio ha sido aceptado por luis', 1, '2025-07-10 04:55:42'),
(16, 'Jorge', 'Tu intercambio ha sido aceptado por Diego', 1, '2025-07-10 05:00:08'),
(17, 'Jorge', '<span class=\'chat-noti\' data-intercambio=\'17\' data-receptor=\'\'>Nuevo mensaje de <strong>Diego</strong> en el chat</span>', 1, '2025-07-10 05:04:22'),
(18, 'Jorge', '<span class=\'chat-noti\' data-intercambio=\'17\' data-receptor=\'\'>Nuevo mensaje de <strong>Diego</strong> en el chat</span>', 1, '2025-07-10 05:04:23'),
(19, 'Jorge', '<span class=\'chat-noti\' data-intercambio=\'17\' data-receptor=\'\'>Nuevo mensaje de <strong>Diego</strong> en el chat</span>', 1, '2025-07-10 05:04:29'),
(20, 'Jorge', 'El usuario Diego ha confirmado la finalización del intercambio.', 1, '2025-07-10 05:12:21'),
(21, 'Diego', 'El usuario Jorge ha confirmado la finalización del intercambio.', 1, '2025-07-10 05:13:05'),
(22, 'fernando', 'Tu intercambio ha sido aceptado por barbi', 1, '2025-07-10 05:20:01'),
(23, 'fernando', 'El usuario barbi ha cancelado la aceptación de tu intercambio.', 1, '2025-07-10 05:25:21'),
(24, 'fernando', 'Tu intercambio ha sido aceptado por barbi', 1, '2025-07-10 05:26:23'),
(25, 'fernando', 'El usuario barbi ha cancelado la aceptación de tu intercambio.', 1, '2025-07-10 05:26:28'),
(26, 'fernando', 'Tu intercambio ha sido aceptado por barbi', 1, '2025-07-10 05:26:41'),
(27, 'fernando', 'El usuario barbi ha cancelado la aceptación de tu intercambio.', 1, '2025-07-10 05:26:56'),
(28, 'fernando', 'Tu intercambio ha sido aceptado por barbi', 1, '2025-07-10 05:27:32'),
(29, 'fernando', 'El usuario barbi ha confirmado la finalización del intercambio.', 1, '2025-07-10 05:27:40'),
(30, 'barbi', 'El usuario fernando ha confirmado la finalización del intercambio.', 1, '2025-07-10 05:28:10'),
(31, 'alexis', 'Tu intercambio ha sido aceptado por fernando', 1, '2025-07-10 06:20:10'),
(32, 'alexis', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>fernando</strong> en el chat</span>', 1, '2025-07-10 06:20:27'),
(33, 'alexis', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>fernando</strong> en el chat</span>', 1, '2025-07-10 06:20:29'),
(34, 'fernando', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>alexis</strong> en el chat</span>', 0, '2025-07-10 06:21:26'),
(35, 'fernando', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>alexis</strong> en el chat</span>', 0, '2025-07-10 06:21:27'),
(36, 'fernando', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>alexis</strong> en el chat</span>', 0, '2025-07-10 06:21:27'),
(37, 'fernando', '<span class=\'chat-noti\' data-intercambio=\'19\' data-receptor=\'\'>Nuevo mensaje de <strong>alexis</strong> en el chat</span>', 0, '2025-07-10 06:21:27'),
(38, 'barbi', 'Tu intercambio ha sido aceptado por tobias', 1, '2025-07-10 07:17:54'),
(39, 'barbi', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>tobias</strong> en el chat</span>', 1, '2025-07-10 07:18:12'),
(40, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:09'),
(41, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(42, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(43, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(44, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(45, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(46, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:10'),
(47, 'tobias', '<span class=\'chat-noti\' data-intercambio=\'20\' data-receptor=\'\'>Nuevo mensaje de <strong>barbi</strong> en el chat</span>', 0, '2025-07-10 07:19:11'),
(48, 'barbi', 'El usuario tobias ha cancelado la aceptación de tu intercambio.', 1, '2025-07-10 07:19:39'),
(49, 'barbi', 'Tu intercambio ha sido aceptado por tobias', 1, '2025-07-10 07:19:50'),
(50, 'barbi', 'El usuario tobias ha confirmado la finalización del intercambio.', 1, '2025-07-10 07:19:57'),
(51, 'tobias', 'El usuario barbi ha confirmado la finalización del intercambio.', 0, '2025-07-10 07:20:22'),
(52, 'pepita', 'Tu intercambio ha sido aceptado por alexis', 0, '2025-07-10 17:40:24'),
(53, 'pepita', 'El usuario alexis ha confirmado la finalización del intercambio.', 0, '2025-07-10 17:40:47'),
(54, 'alexis', 'El usuario pepita ha confirmado la finalización del intercambio.', 0, '2025-07-10 17:41:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `reportante` varchar(50) NOT NULL,
  `usuario_reportado` varchar(50) DEFAULT NULL,
  `intercambio_id` int(11) DEFAULT NULL,
  `motivo` text NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `horas_disponibles` int(11) NOT NULL DEFAULT 0,
  `ultimo_cambio_nombre` datetime DEFAULT NULL,
  `cambios_nombre` int(11) DEFAULT 0,
  `es_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`, `horas_disponibles`, `ultimo_cambio_nombre`, `cambios_nombre`, `es_admin`) VALUES
(11, 'alexis', '$2y$10$2QieWWnusbyQfRZt.oy3e..dK.HKjuUDsf9doPdM/VHyuJ.RpZMyq', 0, NULL, 0, 0),
(13, 'barbi', '$2y$10$cYJ1UXFMukDj0qHDJppulu3OTrDr7bPdWleuI/nkfJnwB0/6SZYNO', 6, '2025-07-10 03:45:00', 1, 0),
(14, 'tobias', '$2y$10$tqHa1jUTKZU/HfJrRgehaOhsz0Gx.ERSBvOdpUhtTOnkLqqyJ6HJa', 7, NULL, 0, 0),
(15, 'luis', '$2y$10$7EjpfjW.g0jJsy7WRE2feOdzOKIgyUKAtILD1C4hmY2lLRe4A2B8u', 5, NULL, 0, 0),
(16, 'jorge', '$2y$10$44pI9HSj2KVPMoaEoZDNSe7N5nMyQHdq5E5A6M1p99J962OY.z1WC', 7, NULL, 0, 0),
(17, 'diego', '$2y$10$ccFXt/qWcnWlVgvjFzC/D.otfaeA.VQdRWqsLseyB4adezM/DE50C', 3, NULL, 0, 0),
(18, 'fernando', '$2y$10$.ieTAmI138aFK/geMJY23erbfLJT86A7HLlAp9T/yXoOKHWURnBX.', 7, NULL, 0, 0),
(19, 'juan', '$2y$10$3h9lkrmHyIYWmGmKjWFg6.QaF2JmOROhuXtoYCMLOHzEz76IFkE5q', 5, NULL, 0, 0),
(20, 'solis', '$2y$10$BdjzJjw1fo7lHZZHq5N2ROphz/1HbGxPNSizgag84.AX3phMO3n/u', 5, NULL, 0, 1),
(21, 'pepita', '$2y$10$ZAIkqR03jfHV4jbPszgKgOfJWahxYCXINGNHeRGsq7xa/n4KrBlIO', 7, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `id` int(11) NOT NULL,
  `intercambio_id` int(11) NOT NULL,
  `evaluador` varchar(50) NOT NULL,
  `evaluado` varchar(50) NOT NULL,
  `puntuacion` tinyint(4) NOT NULL CHECK (`puntuacion` between 1 and 5),
  `comentario` text DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valoraciones`
--

INSERT INTO `valoraciones` (`id`, `intercambio_id`, `evaluador`, `evaluado`, `puntuacion`, `comentario`, `fecha`) VALUES
(1, 12, 'luis', 'tobias', 4, 'Buen compañero!', '2025-07-10 03:48:49'),
(2, 12, 'luis', 'tobias', 5, 'Buena persona', '2025-07-10 04:48:03'),
(3, 12, 'luis', 'tobias', 5, 'Buen servicio!', '2025-07-10 04:49:06'),
(4, 12, 'tobias', 'luis', 4, 'Buenisima persona', '2025-07-10 04:50:06'),
(5, 13, 'tobias', 'alexis', 5, 'Me gusto!', '2025-07-10 04:52:44'),
(6, 17, 'Jorge', 'Diego', 5, 'Buenisima persona!', '2025-07-10 05:13:19'),
(7, 17, 'Diego', 'Jorge', 5, 'Buen compañero!', '2025-07-10 05:13:48'),
(8, 18, 'fernando', 'barbi', 5, 'Buenisima persona!', '2025-07-10 05:28:23'),
(9, 18, 'barbi', 'fernando', 5, 'Buena persona!', '2025-07-10 05:28:47'),
(10, 20, 'barbi', 'tobias', 5, 'Buen servicio!', '2025-07-10 07:20:51'),
(11, 20, 'tobias', 'barbi', 5, 'Buena bailando tinku!', '2025-07-10 07:21:31'),
(12, 21, 'pepita', 'alexis', 5, 'muy bueno', '2025-07-10 17:45:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `intercambios`
--
ALTER TABLE `intercambios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intercambio_id` (`intercambio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `intercambios`
--
ALTER TABLE `intercambios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT `valoraciones_ibfk_1` FOREIGN KEY (`intercambio_id`) REFERENCES `intercambios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
