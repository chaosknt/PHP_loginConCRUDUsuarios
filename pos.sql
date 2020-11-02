-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2019 a las 15:55:04
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2018-09-19 14:13:42'),
(2, 'Taladros', '2018-09-19 14:13:49'),
(3, 'Andamios', '2018-09-19 14:13:54'),
(5, 'Equipos para construcción', '2018-09-19 14:14:18'),
(6, 'Martillos mecánicos', '2018-09-20 18:29:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(13, '0', 14555985, 'edu@hotmail.com', '(011) 4875-9652', 'belgrano #543', '1980-08-08', 30, '2018-10-16 20:45:16', '2018-10-16 22:45:56'),
(14, '0', 50444784, 'juan@gmail.com', '(011) 1588-7748', 'florida #1234', '1989-02-10', 72, '2019-02-28 12:23:54', '2018-10-16 22:46:27'),
(15, '0', 33666585, 'angelica@gmail.com', '(011) 5254-5856', 'chacabuco 1943', '2001-08-21', 1, '2018-10-16 19:53:02', '2018-10-16 22:47:08'),
(16, '0', 34666916, 'pedro@hotmail.com', '(012) 5585-8588', 'la paz 1985', '1989-02-12', 10, '2018-10-16 20:42:07', '2018-10-16 23:40:39'),
(17, '0', 123121312, 'chaosknt@gmail.com', '(011) 1111-1111', 'g.mendez 2700', '2011-02-03', 0, '0000-00-00 00:00:00', '2019-06-23 02:01:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/499.png', 9, 1500, 2100, 14, '2019-02-23 19:31:56'),
(2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/286.jpg', 13, 4500, 6300, 10, '2019-02-23 19:32:03'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/742.jpg', 10, 3000, 4200, 14, '2018-10-16 23:45:16'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/166.jpg', 13, 4000, 5600, 17, '2018-10-16 23:45:16'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/820.jpg', 6, 1540, 2156, 14, '2018-10-16 23:45:16'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/100.jpg', 0, 1100, 1540, 23, '2019-02-28 15:23:54'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/682.jpg', 14, 1540, 2156, 6, '2018-10-16 22:56:06'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/938.jpg', 0, 1540, 2156, 20, '2019-02-28 15:23:54'),
(9, 1, '109', 'Hidrolavadora Electrica ', 'vistas/img/productos/109/336.jpg', 18, 2600, 3640, 2, '2018-10-16 02:15:59'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/351.jpg', 9, 2210, 3094, 12, '2018-10-16 22:56:06'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 17, 2860, 4004, 0, '2018-09-26 18:43:48'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2018-09-21 17:15:27'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2018-09-21 17:15:27'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2018-09-21 17:15:27'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 19, 1980, 2772, 1, '2018-10-03 18:58:15'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 19, 4200, 5880, 1, '2018-10-03 18:58:15'),
(17, 1, '117', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2018-09-21 17:15:27'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2018-09-21 17:15:27'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2018-09-21 17:15:27'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2018-09-21 17:15:27'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2018-09-21 17:15:27'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2018-09-21 17:16:03'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 19, 3900, 5460, 1, '2018-10-03 18:57:27'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 19, 4600, 6440, 1, '2018-10-03 18:57:27'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 19, 1440, 2016, 1, '2018-10-03 18:57:27'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2018-09-21 17:15:27'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 19, 900, 1260, 1, '2018-10-03 18:57:27'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 19, 100, 140, 1, '2018-10-03 18:57:27'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 17, 162, 226, 3, '2018-10-03 18:58:32'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 18, 270, 378, 2, '2018-10-03 18:58:31'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 19, 75, 105, 1, '2018-10-03 18:57:01'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2018-09-21 17:15:27'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 18, 1750, 2450, 2, '2018-10-16 23:38:52'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 18, 175, 245, 2, '2018-10-16 23:38:52'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 18, 420, 588, 2, '2018-10-16 23:38:52'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 18, 3500, 4900, 2, '2018-10-16 02:15:59'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 18, 3550, 4970, 2, '2018-10-16 02:15:59'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 19, 3600, 5040, 1, '2018-10-16 02:15:59'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 17, 3650, 5110, 3, '2018-10-16 23:41:40'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 18, 3700, 5180, 2, '2018-10-16 23:38:52'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2018-09-21 17:15:27'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2018-09-21 17:15:27'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 19, 3850, 5390, 1, '2018-10-03 18:58:51'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2018-09-21 17:15:27'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 19, 370, 518, 1, '2018-10-03 18:58:51'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 18, 380, 532, 2, '2018-10-03 18:58:51'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 18, 380, 532, 2, '2018-10-16 23:41:20'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 19, 480, 672, 1, '2018-10-16 22:47:58'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 18, 600, 840, 2, '2018-10-16 23:41:20'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 19, 900, 1260, 1, '2018-10-16 23:41:20'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2018-09-21 17:15:27'),
(52, 5, '509', 'Bascula ', 'vistas/img/productos/default/anonymous.png', 20, 130, 182, 0, '2018-09-21 17:15:27'),
(53, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/default/anonymous.png', 18, 770, 1078, 2, '2018-10-03 18:59:11'),
(54, 5, '511', 'Chapeta', 'vistas/img/productos/default/anonymous.png', 18, 660, 924, 2, '2018-10-03 18:59:11'),
(55, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/default/anonymous.png', 19, 400, 560, 1, '2018-10-03 18:59:11'),
(56, 5, '513', 'Cizalla de Palanca', 'vistas/img/productos/default/anonymous.png', 19, 450, 630, 1, '2018-10-03 18:56:32'),
(57, 5, '514', 'Cizalla de Tijera', 'vistas/img/productos/default/anonymous.png', 20, 580, 812, 0, '2018-09-27 14:46:50'),
(58, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2018-09-21 17:15:27'),
(59, 5, '516', 'Cono slump', 'vistas/img/productos/default/anonymous.png', 20, 140, 196, 0, '2018-09-21 17:15:27'),
(60, 5, '517', 'Cortadora de Baldosin', 'vistas/img/productos/default/anonymous.png', 14, 930, 1302, 6, '2018-10-03 18:56:32'),
(61, 1, '118', 'Martillo Electronico', 'vistas/img/productos/default/anonymous.png', 0, 1, 1.4, 1, '2018-10-16 23:41:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(20, 'Mariano Pagani', 'mariano', '$2a$07$asxx54ahjppf45sd87a5auNtnIYwjVK0V.ig4bM8Zqqb840ehNzBy', 'Administrador', 'vistas/img/usuarios/mariano/154.png', 1, '2019-07-01 10:17:21', '2019-07-01 13:17:21'),
(44, 'pato', 'pato', '$2a$07$asxx54ahjppf45sd87a5auW6HqgNKzp4s8upYdglY2sJKKst7dvCS', 'Especial', '', 1, '2019-07-01 10:15:34', '2019-07-01 13:15:34'),
(45, 'sofi', 'sofia', '$2a$07$asxx54ahjppf45sd87a5aubw4tAyVku.2JHwsEEklS3/z5ijSxSYi', 'Vendedor', '', 1, '2019-07-01 10:43:08', '2019-07-01 13:43:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(50, 10003, 14, 37, '[{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"}]', 0, 2156, 2156, 'TC-15985874', '2018-10-16 22:52:43'),
(51, 10004, 15, 37, '[{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094\",\"total\":\"3094\"}]', 0, 3094, 3094, 'TC-15478548', '2018-09-16 22:53:02'),
(52, 10005, 12, 40, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"23\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"4200\",\"total\":\"4200\"}]', 0, 13496, 13496, 'TD-25254145', '2018-04-16 22:54:54'),
(53, 10006, 14, 40, '[{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"2156\",\"total\":\"10780\"},{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"3094\",\"total\":\"30940\"},{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"12\",\"stock\":\"8\",\"precio\":\"2100\",\"total\":\"25200\"}]', 0, 66920, 66920, 'Efectivo', '2018-02-16 22:56:06'),
(54, 10007, 14, 40, '[{\"id\":\"40\",\"descripcion\":\"Planta Electrica Diesel 60 Kva\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5180\",\"total\":\"5180\"},{\"id\":\"35\",\"descripcion\":\"Plataforma Met?lica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"34\",\"descripcion\":\"Eslinga para arnes\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"245\",\"total\":\"245\"},{\"id\":\"33\",\"descripcion\":\"Arnes de seguridad\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2450\",\"total\":\"2450\"}]', 0, 8463, 8463, 'Efectivo', '2018-05-16 23:38:52'),
(55, 10008, 16, 39, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"2156\"}]', 452.76, 2156, 2608.76, 'TD-352525225', '2018-10-16 23:41:03'),
(56, 10009, 16, 39, '[{\"id\":\"50\",\"descripcion\":\"Polea 2 canales\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1260\",\"total\":\"1260\"},{\"id\":\"49\",\"descripcion\":\"Manila por Metro\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"840\",\"total\":\"840\"},{\"id\":\"47\",\"descripcion\":\"Lamina Cubre Brecha \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"532\",\"total\":\"532\"}]', 0, 2632, 2632, 'Efectivo', '2018-10-16 23:41:20'),
(57, 10010, 14, 39, '[{\"id\":\"61\",\"descripcion\":\"Martillo Electronico\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1.4\",\"total\":\"1.4\"},{\"id\":\"39\",\"descripcion\":\"Planta Electrica Diesel 30 Kva\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"5110\",\"total\":\"5110\"}]', 0, 5111.4, 5111.4, 'Efectivo', '2018-08-16 23:41:40'),
(58, 10011, 16, 39, '[{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"6\",\"stock\":\"12\",\"precio\":\"6300\",\"total\":\"37800\"}]', 7938, 37800, 45738, 'Efectivo', '2018-03-16 23:42:07'),
(59, 10012, 13, 20, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"10\",\"stock\":\"10\",\"precio\":\"4200\",\"total\":\"42000\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"10\",\"stock\":\"13\",\"precio\":\"5600\",\"total\":\"56000\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"10\",\"stock\":\"6\",\"precio\":\"2156\",\"total\":\"21560\"}]', 29890, 119560, 149450, 'Efectivo', '2018-10-16 23:45:16'),
(60, 10013, 14, 42, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"18\",\"stock\":\"0\",\"precio\":\"2156\",\"total\":\"38808\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"20\",\"stock\":\"0\",\"precio\":\"1540\",\"total\":\"30800\"}]', 0, 69608, 69608, 'TC-123213123123123', '2019-02-28 15:23:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
