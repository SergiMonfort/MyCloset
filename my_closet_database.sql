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
DROP DATABASE IF EXISTS `my_closet`;
CREATE DATABASE IF NOT EXISTS `my_closet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `my_closet`;

-- Volcando estructura para tabla my_closet.armario
DROP TABLE IF EXISTS `armario`;
CREATE TABLE IF NOT EXISTS `armario` (
  `id_armario` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `id_prenda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_armario`),
  KEY `key_usuario` (`id_usuario`),
  KEY `key_prenda` (`id_prenda`),
  CONSTRAINT `fk_armario_prenda` FOREIGN KEY (`id_prenda`) REFERENCES `prenda` (`id_prenda`),
  CONSTRAINT `fk_armario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.armario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `armario` DISABLE KEYS */;
INSERT INTO `armario` (`id_armario`, `id_usuario`, `id_prenda`) VALUES
	(1, 1, 4);
/*!40000 ALTER TABLE `armario` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.color
DROP TABLE IF EXISTS `color`;
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
DROP TABLE IF EXISTS `detalle_prenda`;
CREATE TABLE IF NOT EXISTS `detalle_prenda` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.detalle_prenda: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_prenda` DISABLE KEYS */;
INSERT INTO `detalle_prenda` (`id_detalle`, `detalle`) VALUES
	(1, 'Corto/a'),
	(2, 'Largo/a'),
	(3, 'Sin Manga'),
	(4, 'Capucha'),
	(5, 'Sin Capucha'),
	(6, 'Clásico'),
	(7, 'Deporte'),
	(8, 'Casual');
/*!40000 ALTER TABLE `detalle_prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.prenda
DROP TABLE IF EXISTS `prenda`;
CREATE TABLE IF NOT EXISTS `prenda` (
  `id_prenda` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_prenda` int(11) NOT NULL DEFAULT '0',
  `nombre_prenda` varchar(15) NOT NULL DEFAULT '0',
  `id_detalle` int(11) NOT NULL DEFAULT '0',
  `id_color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_prenda`),
  KEY `indice_fk_id_tipo_prenda` (`id_tipo_prenda`),
  KEY `indice_fk_color` (`id_color`),
  KEY `indice_fk_id_detalle` (`id_detalle`),
  CONSTRAINT `fk_id_color` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`),
  CONSTRAINT `fk_id_tipo_prenda` FOREIGN KEY (`id_tipo_prenda`) REFERENCES `tipo_prenda` (`id_tipo_prenda`),
  CONSTRAINT `fk_prenda_id_detalle` FOREIGN KEY (`id_detalle`) REFERENCES `detalle_prenda` (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.prenda: ~324 rows (aproximadamente)
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` (`id_prenda`, `id_tipo_prenda`, `nombre_prenda`, `id_detalle`, `id_color`) VALUES
	(1, 2, 'Camiseta', 1, 1),
	(2, 2, 'Camiseta', 1, 2),
	(3, 2, 'Camiseta', 1, 3),
	(4, 2, 'Camiseta', 1, 4),
	(5, 2, 'Camiseta', 1, 5),
	(6, 2, 'Camiseta', 1, 6),
	(7, 2, 'Camiseta', 1, 7),
	(8, 2, 'Camiseta', 1, 8),
	(9, 2, 'Camiseta', 1, 9),
	(10, 2, 'Camiseta', 1, 10),
	(11, 2, 'Camiseta', 1, 11),
	(12, 2, 'Camiseta', 1, 12),
	(13, 2, 'Camiseta', 1, 13),
	(14, 2, 'Camiseta', 1, 14),
	(15, 2, 'Camiseta', 1, 15),
	(16, 2, 'Camiseta', 2, 1),
	(17, 2, 'Camiseta', 2, 2),
	(18, 2, 'Camiseta', 2, 3),
	(19, 2, 'Camiseta', 2, 4),
	(20, 2, 'Camiseta', 2, 5),
	(21, 2, 'Camiseta', 2, 6),
	(22, 2, 'Camiseta', 2, 7),
	(23, 2, 'Camiseta', 2, 8),
	(24, 2, 'Camiseta', 2, 9),
	(25, 2, 'Camiseta', 2, 10),
	(26, 2, 'Camiseta', 2, 11),
	(27, 2, 'Camiseta', 2, 12),
	(28, 2, 'Camiseta', 2, 13),
	(29, 2, 'Camiseta', 2, 14),
	(30, 2, 'Camiseta', 2, 15),
	(31, 2, 'Camiseta', 3, 1),
	(32, 2, 'Camiseta', 3, 2),
	(33, 2, 'Camiseta', 3, 3),
	(34, 2, 'Camiseta', 3, 4),
	(35, 2, 'Camiseta', 3, 5),
	(36, 2, 'Camiseta', 3, 6),
	(37, 2, 'Camiseta', 3, 7),
	(38, 2, 'Camiseta', 3, 8),
	(39, 2, 'Camiseta', 3, 9),
	(40, 2, 'Camiseta', 3, 10),
	(41, 2, 'Camiseta', 3, 11),
	(42, 2, 'Camiseta', 3, 12),
	(43, 2, 'Camiseta', 3, 13),
	(44, 2, 'Camiseta', 3, 14),
	(45, 2, 'Camiseta', 3, 15),
	(46, 2, 'Camisa', 1, 1),
	(47, 2, 'Camisa', 1, 2),
	(48, 2, 'Camisa', 1, 3),
	(49, 2, 'Camisa', 1, 4),
	(50, 2, 'Camisa', 1, 5),
	(51, 2, 'Camisa', 1, 6),
	(52, 2, 'Camisa', 1, 7),
	(53, 2, 'Camisa', 1, 8),
	(54, 2, 'Camisa', 1, 9),
	(55, 2, 'Camisa', 1, 10),
	(56, 2, 'Camisa', 1, 11),
	(57, 2, 'Camisa', 1, 12),
	(58, 2, 'Camisa', 1, 13),
	(59, 2, 'Camisa', 1, 14),
	(60, 2, 'Camisa', 1, 15),
	(61, 2, 'Camisa', 2, 1),
	(62, 2, 'Camisa', 2, 2),
	(63, 2, 'Camisa', 2, 3),
	(64, 2, 'Camisa', 2, 4),
	(65, 2, 'Camisa', 2, 5),
	(66, 2, 'Camisa', 2, 6),
	(67, 2, 'Camisa', 2, 7),
	(68, 2, 'Camisa', 2, 8),
	(69, 2, 'Camisa', 2, 9),
	(70, 2, 'Camisa', 2, 10),
	(71, 2, 'Camisa', 2, 11),
	(72, 2, 'Camisa', 2, 12),
	(73, 2, 'Camisa', 2, 13),
	(74, 2, 'Camisa', 2, 14),
	(75, 2, 'Camisa', 2, 15),
	(76, 2, 'Polo', 1, 1),
	(77, 2, 'Polo', 1, 2),
	(78, 2, 'Polo', 1, 3),
	(79, 2, 'Polo', 1, 4),
	(80, 2, 'Polo', 1, 5),
	(81, 2, 'Polo', 1, 6),
	(82, 2, 'Polo', 1, 7),
	(83, 2, 'Polo', 1, 8),
	(84, 2, 'Polo', 1, 9),
	(85, 2, 'Polo', 1, 10),
	(86, 2, 'Polo', 1, 11),
	(87, 2, 'Polo', 1, 12),
	(88, 2, 'Polo', 1, 13),
	(89, 2, 'Polo', 1, 14),
	(90, 2, 'Polo', 1, 15),
	(91, 2, 'Polo', 2, 1),
	(92, 2, 'Polo', 2, 2),
	(93, 2, 'Polo', 2, 3),
	(94, 2, 'Polo', 2, 4),
	(95, 2, 'Polo', 2, 5),
	(96, 2, 'Polo', 2, 6),
	(97, 2, 'Polo', 2, 7),
	(98, 2, 'Polo', 2, 8),
	(99, 2, 'Polo', 2, 9),
	(100, 2, 'Polo', 2, 10),
	(101, 2, 'Polo', 2, 11),
	(102, 2, 'Polo', 2, 12),
	(103, 2, 'Polo', 2, 13),
	(104, 2, 'Polo', 2, 14),
	(105, 2, 'Polo', 2, 15),
	(106, 2, 'Jersey', 2, 1),
	(107, 2, 'Jersey', 2, 2),
	(108, 2, 'Jersey', 2, 3),
	(109, 2, 'Jersey', 2, 4),
	(110, 2, 'Jersey', 2, 5),
	(111, 2, 'Jersey', 2, 6),
	(112, 2, 'Jersey', 2, 7),
	(113, 2, 'Jersey', 2, 8),
	(114, 2, 'Jersey', 2, 9),
	(115, 2, 'Jersey', 2, 10),
	(116, 2, 'Jersey', 2, 11),
	(117, 2, 'Jersey', 2, 12),
	(118, 2, 'Jersey', 2, 13),
	(119, 2, 'Jersey', 2, 14),
	(120, 2, 'Jersey', 2, 15),
	(121, 2, 'Cardigan', 2, 1),
	(122, 2, 'Cardigan', 2, 2),
	(123, 2, 'Cardigan', 2, 3),
	(124, 2, 'Cardigan', 2, 4),
	(125, 2, 'Cardigan', 2, 5),
	(126, 2, 'Cardigan', 2, 6),
	(127, 2, 'Cardigan', 2, 7),
	(128, 2, 'Cardigan', 2, 8),
	(129, 2, 'Cardigan', 2, 9),
	(130, 2, 'Cardigan', 2, 10),
	(131, 2, 'Cardigan', 2, 11),
	(132, 2, 'Cardigan', 2, 12),
	(133, 2, 'Cardigan', 2, 13),
	(134, 2, 'Cardigan', 2, 14),
	(135, 2, 'Cardigan', 2, 15),
	(136, 1, 'Abrigo', 2, 1),
	(137, 1, 'Abrigo', 2, 2),
	(138, 1, 'Abrigo', 2, 3),
	(139, 1, 'Abrigo', 2, 4),
	(140, 1, 'Abrigo', 2, 5),
	(141, 1, 'Abrigo', 2, 6),
	(142, 1, 'Abrigo', 2, 7),
	(143, 1, 'Abrigo', 2, 8),
	(144, 1, 'Abrigo', 2, 9),
	(145, 1, 'Abrigo', 2, 10),
	(146, 1, 'Abrigo', 2, 11),
	(147, 1, 'Abrigo', 2, 12),
	(148, 1, 'Abrigo', 2, 13),
	(149, 1, 'Abrigo', 2, 14),
	(150, 1, 'Abrigo', 2, 15),
	(151, 1, 'Chaqueta', 2, 1),
	(152, 1, 'Chaqueta', 2, 2),
	(153, 1, 'Chaqueta', 2, 16),
	(154, 1, 'Americana', 2, 1),
	(155, 1, 'Americana', 2, 2),
	(156, 1, 'Americana', 2, 3),
	(157, 1, 'Americana', 2, 4),
	(158, 1, 'Americana', 2, 5),
	(159, 1, 'Americana', 2, 6),
	(160, 1, 'Americana', 2, 7),
	(161, 1, 'Americana', 2, 8),
	(162, 1, 'Americana', 2, 9),
	(163, 1, 'Americana', 2, 10),
	(164, 1, 'Americana', 2, 11),
	(165, 1, 'Americana', 2, 12),
	(166, 1, 'Americana', 2, 13),
	(167, 1, 'Americana', 2, 14),
	(168, 1, 'Americana', 2, 15),
	(169, 1, 'Sudadera', 5, 1),
	(170, 1, 'Sudadera', 5, 2),
	(171, 1, 'Sudadera', 5, 3),
	(172, 1, 'Sudadera', 5, 4),
	(173, 1, 'Sudadera', 5, 5),
	(174, 1, 'Sudadera', 5, 6),
	(175, 1, 'Sudadera', 5, 7),
	(176, 1, 'Sudadera', 5, 8),
	(177, 1, 'Sudadera', 5, 9),
	(178, 1, 'Sudadera', 5, 10),
	(179, 1, 'Sudadera', 5, 11),
	(180, 1, 'Sudadera', 5, 12),
	(181, 1, 'Sudadera', 5, 13),
	(182, 1, 'Sudadera', 5, 14),
	(183, 1, 'Sudadera', 5, 15),
	(184, 1, 'Sudadera', 4, 1),
	(185, 1, 'Sudadera', 4, 2),
	(186, 1, 'Sudadera', 4, 3),
	(187, 1, 'Sudadera', 4, 4),
	(188, 1, 'Sudadera', 4, 5),
	(189, 1, 'Sudadera', 4, 6),
	(190, 1, 'Sudadera', 4, 7),
	(191, 1, 'Sudadera', 4, 8),
	(192, 1, 'Sudadera', 4, 9),
	(193, 1, 'Sudadera', 4, 10),
	(194, 1, 'Sudadera', 4, 11),
	(195, 1, 'Sudadera', 4, 12),
	(196, 1, 'Sudadera', 4, 13),
	(197, 1, 'Sudadera', 4, 14),
	(198, 1, 'Sudadera', 4, 15),
	(199, 3, 'Bermudas', 1, 1),
	(200, 3, 'Bermudas', 1, 2),
	(201, 3, 'Bermudas', 1, 3),
	(202, 3, 'Bermudas', 1, 4),
	(203, 3, 'Bermudas', 1, 5),
	(204, 3, 'Bermudas', 1, 6),
	(205, 3, 'Bermudas', 1, 7),
	(206, 3, 'Bermudas', 1, 8),
	(207, 3, 'Bermudas', 1, 9),
	(208, 3, 'Bermudas', 1, 10),
	(209, 3, 'Bermudas', 1, 11),
	(210, 3, 'Bermudas', 1, 12),
	(211, 3, 'Bermudas', 1, 13),
	(212, 3, 'Bermudas', 1, 14),
	(213, 3, 'Bermudas', 1, 15),
	(214, 3, 'Bermudas', 1, 16),
	(215, 3, 'Vaquero', 2, 1),
	(216, 3, 'Vaquero', 2, 2),
	(217, 3, 'Vaquero', 2, 3),
	(218, 3, 'Vaquero', 2, 4),
	(219, 3, 'Vaquero', 2, 5),
	(220, 3, 'Vaquero', 2, 6),
	(221, 3, 'Vaquero', 2, 7),
	(222, 3, 'Vaquero', 2, 8),
	(223, 3, 'Vaquero', 2, 9),
	(224, 3, 'Vaquero', 2, 10),
	(225, 3, 'Vaquero', 2, 11),
	(226, 3, 'Vaquero', 2, 12),
	(227, 3, 'Vaquero', 2, 13),
	(228, 3, 'Vaquero', 2, 14),
	(229, 3, 'Vaquero', 2, 15),
	(230, 3, 'Pantalón', 2, 1),
	(231, 3, 'Pantalón', 2, 2),
	(232, 3, 'Pantalón', 2, 3),
	(233, 3, 'Pantalón', 2, 4),
	(234, 3, 'Pantalón', 2, 5),
	(235, 3, 'Pantalón', 2, 6),
	(236, 3, 'Pantalón', 2, 7),
	(237, 3, 'Pantalón', 2, 8),
	(238, 3, 'Pantalón', 2, 9),
	(239, 3, 'Pantalón', 2, 10),
	(240, 3, 'Pantalón', 2, 11),
	(241, 3, 'Pantalón', 2, 12),
	(242, 3, 'Pantalón', 2, 13),
	(243, 3, 'Pantalón', 2, 14),
	(244, 3, 'Pantalón', 2, 15),
	(245, 3, 'Pantalón', 1, 1),
	(246, 3, 'Pantalón', 1, 2),
	(247, 3, 'Pantalón', 1, 3),
	(248, 3, 'Pantalón', 1, 4),
	(249, 3, 'Pantalón', 1, 5),
	(250, 3, 'Pantalón', 1, 6),
	(251, 3, 'Pantalón', 1, 7),
	(252, 3, 'Pantalón', 1, 8),
	(253, 3, 'Pantalón', 1, 9),
	(254, 3, 'Pantalón', 1, 10),
	(255, 3, 'Pantalón', 1, 11),
	(256, 3, 'Pantalón', 1, 12),
	(257, 3, 'Pantalón', 1, 13),
	(258, 3, 'Pantalón', 1, 14),
	(259, 3, 'Pantalón', 1, 15),
	(260, 4, 'Zapato', 6, 1),
	(261, 4, 'Zapato', 6, 2),
	(262, 4, 'Zapato', 6, 3),
	(263, 4, 'Zapato', 6, 4),
	(264, 4, 'Zapato', 6, 5),
	(265, 4, 'Zapato', 6, 6),
	(266, 4, 'Zapato', 6, 7),
	(267, 4, 'Zapato', 6, 8),
	(268, 4, 'Zapato', 6, 9),
	(269, 4, 'Zapato', 6, 10),
	(270, 4, 'Zapato', 6, 11),
	(271, 4, 'Zapato', 6, 12),
	(272, 4, 'Zapato', 6, 13),
	(273, 4, 'Zapato', 6, 14),
	(274, 4, 'Zapato', 6, 15),
	(275, 4, 'Zapatillas', 7, 1),
	(276, 4, 'Zapatillas', 7, 2),
	(277, 4, 'Zapatillas', 7, 3),
	(278, 4, 'Zapatillas', 7, 4),
	(279, 4, 'Zapatillas', 7, 5),
	(280, 4, 'Zapatillas', 7, 6),
	(281, 4, 'Zapatillas', 7, 7),
	(282, 4, 'Zapatillas', 7, 8),
	(283, 4, 'Zapatillas', 7, 9),
	(284, 4, 'Zapatillas', 7, 10),
	(285, 4, 'Zapatillas', 7, 11),
	(286, 4, 'Zapatillas', 7, 12),
	(287, 4, 'Zapatillas', 7, 13),
	(288, 4, 'Zapatillas', 7, 14),
	(289, 4, 'Zapatillas', 7, 15),
	(290, 4, 'Zapato', 8, 1),
	(291, 4, 'Zapato', 8, 2),
	(292, 4, 'Zapato', 8, 3),
	(293, 4, 'Zapato', 8, 4),
	(294, 4, 'Zapato', 8, 5),
	(295, 4, 'Zapato', 8, 6),
	(296, 4, 'Zapato', 8, 7),
	(297, 4, 'Zapato', 8, 8),
	(298, 4, 'Zapato', 8, 9),
	(299, 4, 'Zapato', 8, 10),
	(300, 4, 'Zapato', 8, 11),
	(301, 4, 'Zapato', 8, 12),
	(302, 4, 'Zapato', 8, 13),
	(303, 4, 'Zapato', 8, 14),
	(304, 4, 'Zapato', 8, 15),
	(305, 4, 'Zapato', 8, 16),
	(306, 4, 'Sandalias', 8, 1),
	(307, 4, 'Sandalias', 8, 2),
	(308, 4, 'Sandalias', 8, 3),
	(309, 4, 'Sandalias', 8, 4),
	(310, 4, 'Sandalias', 8, 5),
	(311, 4, 'Sandalias', 8, 6),
	(312, 4, 'Sandalias', 8, 7),
	(313, 4, 'Sandalias', 8, 8),
	(314, 4, 'Sandalias', 8, 9),
	(315, 4, 'Sandalias', 8, 10),
	(316, 4, 'Sandalias', 8, 11),
	(317, 4, 'Sandalias', 8, 12),
	(318, 4, 'Sandalias', 8, 13),
	(319, 4, 'Sandalias', 8, 14),
	(320, 4, 'Sandalias', 8, 15),
	(321, 4, 'Botas', 8, 9),
	(322, 4, 'Botas', 8, 11),
	(323, 4, 'Botas', 8, 2),
	(324, 4, 'Botas', 8, 10);
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.tipo_prenda
DROP TABLE IF EXISTS `tipo_prenda`;
CREATE TABLE IF NOT EXISTS `tipo_prenda` (
  `id_tipo_prenda` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.tipo_prenda: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_prenda` DISABLE KEYS */;
INSERT INTO `tipo_prenda` (`id_tipo_prenda`, `descripcion`) VALUES
	(1, 'Arriba exterior'),
	(2, 'Arriba interior'),
	(3, 'Abajo'),
	(4, 'Calzado');
/*!40000 ALTER TABLE `tipo_prenda` ENABLE KEYS */;

-- Volcando estructura para tabla my_closet.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `Índice 2` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla my_closet.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `usuario`, `nombre`, `apellidos`, `edad`) VALUES
	(1, 'dashuna', 'Dasha', '', 24);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
