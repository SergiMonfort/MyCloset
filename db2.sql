-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.15 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para my_closet
CREATE DATABASE IF NOT EXISTS `my_closet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `my_closet`;

-- Volcando estructura para tabla my_closet.armario
CREATE TABLE IF NOT EXISTS `armario` (
  `id_armario` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `id_prenda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_armario`),
  KEY `key_usuario` (`id_usuario`),
  KEY `key_prenda` (`id_prenda`),
  CONSTRAINT `fk_armario_prenda` FOREIGN KEY (`id_prenda`) REFERENCES `prenda` (`id_prenda`),
  CONSTRAINT `fk_armario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.armario: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `armario` DISABLE KEYS */;
INSERT INTO `armario` (`id_armario`, `id_usuario`, `id_prenda`) VALUES
	(1, 1, 4),
	(5, 1, 59),
	(8, 1, 59),
	(9, 1, 43),
	(10, 6, 39),
	(11, 6, 52),
	(12, 6, 27);
/*!40000 ALTER TABLE `armario` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.color
CREATE TABLE IF NOT EXISTS `color` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_color` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_color`),
  KEY `nombre_color` (`nombre_color`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.color: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` (`id_color`, `nombre_color`) VALUES
	(3, 'Amarillo'),
	(13, 'Azul claro'),
	(8, 'Azul oscuro'),
	(9, 'Beige'),
	(1, 'Blanco'),
	(10, 'Gris'),
	(11, 'Marrón'),
	(12, 'Morado'),
	(4, 'Naranja'),
	(2, 'Negro'),
	(5, 'Rojo'),
	(6, 'Rosa'),
	(14, 'Turquesa'),
	(16, 'Vaquero'),
	(15, 'Verde claro'),
	(7, 'Verde oscuro');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.detalle_prenda
CREATE TABLE IF NOT EXISTS `detalle_prenda` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.detalle_prenda: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_prenda` DISABLE KEYS */;
INSERT INTO `detalle_prenda` (`id_detalle`, `detalle`) VALUES
	(1, 'Corto/a'),
	(2, 'Largo/a'),
	(3, 'Sin Manga'),
	(4, 'Capucha'),
	(5, 'Sin Capucha'),
	(6, 'Clásico'),
	(7, 'Deporte'),
	(8, 'Casual'),
	(9, 'Ayrton'),
	(10, 'Ayrton');
/*!40000 ALTER TABLE `detalle_prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.prenda
CREATE TABLE IF NOT EXISTS `prenda` (
  `id_prenda` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_prenda` int(11) NOT NULL DEFAULT '0',
  `id_color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_prenda`),
  KEY `indice_fk_id_tipo_prenda` (`id_tipo_prenda`),
  KEY `indice_fk_color` (`id_color`),
  CONSTRAINT `fk_id_color` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`),
  CONSTRAINT `fk_id_tipo_prenda` FOREIGN KEY (`id_tipo_prenda`) REFERENCES `tipo_prenda` (`id_tipo_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.prenda: ~181 rows (aproximadamente)
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` (`id_prenda`, `id_tipo_prenda`, `id_color`) VALUES
	(1, 2, 1),
	(2, 2, 2),
	(3, 2, 3),
	(4, 2, 4),
	(5, 2, 5),
	(6, 2, 6),
	(7, 2, 7),
	(8, 2, 8),
	(9, 2, 9),
	(10, 2, 10),
	(11, 2, 11),
	(12, 2, 12),
	(13, 2, 13),
	(14, 2, 14),
	(15, 2, 15),
	(16, 1, 1),
	(17, 1, 2),
	(18, 1, 3),
	(19, 1, 4),
	(20, 1, 5),
	(21, 1, 6),
	(22, 1, 7),
	(23, 1, 8),
	(24, 1, 9),
	(25, 1, 10),
	(26, 1, 11),
	(27, 1, 12),
	(28, 1, 13),
	(29, 1, 14),
	(30, 1, 15),
	(31, 3, 1),
	(32, 3, 2),
	(33, 3, 3),
	(34, 3, 4),
	(35, 3, 5),
	(36, 3, 6),
	(37, 3, 7),
	(38, 3, 8),
	(39, 3, 9),
	(40, 3, 10),
	(41, 3, 11),
	(42, 3, 12),
	(43, 3, 13),
	(44, 3, 14),
	(45, 3, 15),
	(46, 4, 1),
	(47, 4, 2),
	(48, 4, 3),
	(49, 4, 4),
	(50, 4, 5),
	(51, 4, 6),
	(52, 4, 7),
	(53, 4, 8),
	(54, 4, 9),
	(55, 4, 10),
	(56, 4, 11),
	(57, 4, 12),
	(58, 4, 13),
	(59, 4, 14),
	(60, 4, 15),
	(61, 5, 1),
	(62, 5, 2),
	(63, 5, 3),
	(64, 5, 4),
	(65, 5, 5),
	(66, 5, 6),
	(67, 5, 7),
	(68, 5, 8),
	(69, 5, 9),
	(70, 5, 10),
	(71, 5, 11),
	(72, 5, 12),
	(73, 5, 13),
	(74, 5, 14),
	(75, 5, 15),
	(76, 6, 1),
	(77, 6, 2),
	(78, 6, 3),
	(79, 6, 4),
	(80, 6, 5),
	(81, 6, 6),
	(82, 6, 7),
	(83, 6, 8),
	(84, 6, 9),
	(85, 6, 10),
	(86, 6, 11),
	(87, 6, 12),
	(88, 6, 13),
	(89, 6, 14),
	(90, 6, 15),
	(91, 7, 1),
	(92, 7, 2),
	(93, 7, 3),
	(94, 7, 4),
	(95, 7, 5),
	(96, 7, 6),
	(97, 7, 7),
	(98, 7, 8),
	(99, 7, 9),
	(100, 7, 10),
	(101, 7, 11),
	(102, 7, 12),
	(103, 7, 13),
	(104, 7, 14),
	(105, 7, 15),
	(106, 8, 1),
	(107, 8, 2),
	(108, 8, 3),
	(109, 8, 4),
	(110, 8, 5),
	(111, 8, 6),
	(112, 8, 7),
	(113, 8, 8),
	(114, 8, 9),
	(115, 8, 10),
	(116, 8, 11),
	(117, 8, 12),
	(118, 8, 13),
	(119, 8, 14),
	(120, 8, 15),
	(121, 9, 1),
	(122, 9, 2),
	(123, 10, 1),
	(124, 10, 2),
	(125, 10, 3),
	(126, 10, 4),
	(127, 10, 5),
	(128, 10, 6),
	(129, 10, 7),
	(130, 10, 8),
	(131, 10, 9),
	(132, 10, 10),
	(133, 10, 11),
	(134, 10, 12),
	(135, 10, 13),
	(136, 10, 14),
	(137, 10, 15),
	(138, 11, 1),
	(139, 11, 2),
	(140, 11, 3),
	(141, 11, 4),
	(142, 11, 5),
	(143, 11, 6),
	(144, 11, 7),
	(145, 11, 8),
	(146, 11, 9),
	(147, 11, 10),
	(148, 11, 11),
	(149, 11, 12),
	(150, 11, 13),
	(151, 11, 14),
	(152, 11, 15),
	(153, 12, 1),
	(154, 12, 2),
	(155, 12, 3),
	(156, 12, 1),
	(157, 12, 4),
	(158, 12, 5),
	(159, 12, 6),
	(160, 12, 7),
	(161, 12, 8),
	(162, 12, 9),
	(163, 12, 10),
	(164, 12, 11),
	(165, 12, 12),
	(166, 12, 13),
	(167, 12, 14),
	(168, 12, 15),
	(169, 9, 3),
	(170, 9, 4),
	(171, 9, 5),
	(172, 9, 6),
	(173, 9, 7),
	(174, 9, 8),
	(175, 9, 9),
	(176, 9, 10),
	(177, 9, 11),
	(178, 9, 12),
	(179, 9, 13),
	(180, 9, 14),
	(181, 9, 15);
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.tipo_prenda
CREATE TABLE IF NOT EXISTS `tipo_prenda` (
  `id_tipo_prenda` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.tipo_prenda: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_prenda` DISABLE KEYS */;
INSERT INTO `tipo_prenda` (`id_tipo_prenda`, `descripcion`) VALUES
	(1, 'Camiseta manga corta'),
	(2, 'Camiseta manga larga'),
	(3, 'Pantalón'),
	(4, 'Zapatos'),
	(5, 'Zapatillas'),
	(6, 'Camisa manga larga'),
	(7, 'Polo manga corta'),
	(8, 'Jersey'),
	(9, 'Jeans'),
	(10, 'Chinos (pantalón)'),
	(11, 'Zapato Casual'),
	(12, 'Sandalias');
/*!40000 ALTER TABLE `tipo_prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(11) NOT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasenia` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `Índice 2` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.usuario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellidos`, `usuario`, `contrasenia`, `email`) VALUES
	(1, 'Dasha', 'Lynnyk', 'dashuna', 'darya', 'prueba@gmail.com'),
	(2, 'Ayrton', NULL, 'kamusfox', 'probando', 'prueba2@hotmail.com'),
	(3, '', NULL, '', '', ''),
	(4, 'erer', 'erer', 'ererererere', 'fddffd', 'uireeuirure@hotmail.com'),
	(6, 'sdsdsdsdsd', 'sdsdsd', 'sfsdsdsdsd', 'doncdd', 'r@hotmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
