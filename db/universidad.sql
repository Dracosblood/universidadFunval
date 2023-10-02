-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2023 a las 21:20:31
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `name`, `instructor_id`) VALUES
(33, 'Programacion basica', 19),
(34, 'Clase Algebra 1 ', 16),
(37, 'Desarrollo Backend', 16),
(38, 'Desarrollo Frontend', 19),
(39, 'Tailwind css', 19),
(40, 'Ingles', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`id`, `user_id`) VALUES
(16, 41),
(17, 42),
(19, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `description`) VALUES
(1, 'admin'),
(2, 'maestro'),
(3, 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`id`, `dni`, `user_id`) VALUES
(26, 31589458, 47),
(27, 32057892, 48),
(28, 32505879, 49),
(29, 32589752, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studet_clases`
--

CREATE TABLE `studet_clases` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `studet_clases`
--

INSERT INTO `studet_clases` (`id`, `id_student`, `id_clase`) VALUES
(90, 26, 33),
(98, 28, 33),
(99, 28, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `birthday` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstname`, `lastname`, `address`, `birthday`, `role_id`) VALUES
(3, 'admin@gmail.com', '$2y$10$K6XoXaChkpTCSW6R9quOPelrEaZ2gRkE3xusBW33TEunmvXonLtIu', 'Darwin', 'Tovar', 'Venezuela', '1994-01-19 16:39:29', 1),
(41, 'haroldc@gmail.com', '$2y$10$iQFgXDemdYsye8ZkCaSHbOEUWVbDfWp69qhabVV44TevgRQNVATye', 'Harold', 'Carazas', 'Peru', '2023-10-02 12:43:11', 2),
(42, 'cristiang@gmail.com', '$2y$10$7bkOOPIU1gg/7oQEbHF49uulebFC5hClvm/qvK.t4nkKu14WgiIuW', 'Cristian', 'Garzon', 'peru', '2023-10-02 04:00:00', 2),
(46, 'isaiasz@gmail.com', '$2y$10$UvK0yr76UFMyn1UFPqvLGe0.h/fr/EeZkRqlu42l8.XiBUYYyMyKa', 'Isaias', 'Zuñiga', 'Peru', '2023-10-02 13:10:10', 2),
(47, 'joseg@gmail.com', '$2y$10$2hGrVqkQ6XWnDgQhDetaSOyEcpjN/x0HdT7HL1.8g.fNgjA3mgNK.', 'Jose Gregorio', 'Perez', 'Venezuela', '2023-10-02 12:42:20', 3),
(48, 'joset@gmail.com', '$2y$10$S8kjSZlWBM5aHavtjvN0w.9BbjzCTDTqoFP6JhMmPHMUeNNZgWtya', 'Jose', 'Tucci', 'Venezuela', '2023-10-02 12:42:09', 3),
(49, 'danielg@gmail.com', '$2y$10$28zsIP7ZQXQO2QitMpzrG.dlS2kP1sd9ug4oxx1Zx/oRrm3k52vQG', 'Daniel', 'Gonzalez', 'Venezuela', '2023-10-02 12:42:48', 3),
(50, 'pedros@hotmail.com', '$2y$10$kwUyOOuNZ5xsJnsnw/KbBu1bzVAxGNnDRBDQ0ryO7aQH.RsQVIkLK', 'Pedro', 'Salinas', 'venezuela', '1990-02-13 04:00:00', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `studet_clases`
--
ALTER TABLE `studet_clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `studet_clases`
--
ALTER TABLE `studet_clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `studet_clases`
--
ALTER TABLE `studet_clases`
  ADD CONSTRAINT `studet_clases_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `studet_clases_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
