-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-12-2017 a las 16:33:22
-- Versión del servidor: 5.5.55-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `habilitacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'gestionciclolectivo'),
(1, 'GestionPreinscripciones'),
(3, 'gestion_pg'),
(4, 'mes'),
(5, 'recepcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 32),
(2, 1, 33),
(4, 2, 22),
(5, 2, 23),
(3, 2, 24),
(6, 3, 34),
(7, 3, 35),
(8, 3, 36),
(9, 4, 40),
(10, 4, 41),
(11, 4, 42),
(12, 5, 40),
(13, 5, 41),
(14, 5, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add postulante confirmado', 7, 'add_postulanteconfirmado'),
(20, 'Can change postulante confirmado', 7, 'change_postulanteconfirmado'),
(21, 'Can delete postulante confirmado', 7, 'delete_postulanteconfirmado'),
(22, 'Can add ciclo lectivo', 8, 'add_ciclolectivo'),
(23, 'Can change ciclo lectivo', 8, 'change_ciclolectivo'),
(24, 'Can delete ciclo lectivo', 8, 'delete_ciclolectivo'),
(25, 'Can add postulante', 9, 'add_postulante'),
(26, 'Can change postulante', 9, 'change_postulante'),
(27, 'Can delete postulante', 9, 'delete_postulante'),
(28, 'Can add responsable', 10, 'add_responsable'),
(29, 'Can change responsable', 10, 'change_responsable'),
(30, 'Can delete responsable', 10, 'delete_responsable'),
(31, 'Can add preinscripcion4 anios', 11, 'add_preinscripcion4anios'),
(32, 'Can change preinscripcion4 anios', 11, 'change_preinscripcion4anios'),
(33, 'Can delete preinscripcion4 anios', 11, 'delete_preinscripcion4anios'),
(34, 'Can add preinscripcion general', 12, 'add_preinscripciongeneral'),
(35, 'Can change preinscripcion general', 12, 'change_preinscripciongeneral'),
(36, 'Can delete preinscripcion general', 12, 'delete_preinscripciongeneral'),
(37, 'Can add profile', 13, 'add_profile'),
(38, 'Can change profile', 13, 'change_profile'),
(39, 'Can delete profile', 13, 'delete_profile'),
(40, 'Can add nota', 14, 'add_nota'),
(41, 'Can change nota', 14, 'change_nota'),
(42, 'Can delete nota', 14, 'delete_nota'),
(43, 'Can add nota p', 15, 'add_notap'),
(44, 'Can change nota p', 15, 'change_notap'),
(45, 'Can delete nota p', 15, 'delete_notap'),
(46, 'Can add nota g', 16, 'add_notag'),
(47, 'Can change nota g', 16, 'change_notag'),
(48, 'Can delete nota g', 16, 'delete_notag'),
(49, 'Can add perfil', 17, 'add_perfil'),
(50, 'Can change perfil', 17, 'change_perfil'),
(51, 'Can delete perfil', 17, 'delete_perfil'),
(52, 'Can add nota i', 18, 'add_notai'),
(53, 'Can change nota i', 18, 'change_notai'),
(54, 'Can delete nota i', 18, 'delete_notai'),
(55, 'Can add movimiento', 19, 'add_movimiento'),
(56, 'Can change movimiento', 19, 'change_movimiento'),
(57, 'Can delete movimiento', 19, 'delete_movimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$cJBUE4zcZsiu$PYBNBaoxA7+hiUm46VEF8VwIJeiIYwr2SkPiI4UCmqk=', '2017-11-06 13:47:23', 1, 'Habilitacion', '', '', 'habilitacion@gmail.com', 1, 1, '2017-06-26 13:29:58'),
(2, 'pbkdf2_sha256$36000$lfpRUDGP3YKt$vOmCy7mA/lB9Oopf900hkvpZluD3LPXQnEsfUkVmd2w=', '2017-12-10 03:18:45', 0, 'DirectoraNI', '', '', '', 0, 1, '2017-06-26 13:30:58'),
(3, 'pbkdf2_sha256$36000$g54hm3OVBcco$tXTKgncRX/xdxxnL/XzKty35zsNsgbThHAO46yY8fVM=', '2017-09-11 23:16:49', 0, 'Director', '', '', '', 0, 1, '2017-06-26 13:31:23'),
(4, 'pbkdf2_sha256$36000$oKybHiHbYTDu$MqUSeSsJ9FCSN0DZuQIEggmPtawOc26VM5bClZx9sAg=', '2017-11-06 19:18:55', 0, 'DirectoraGNI', '', '', '', 0, 1, '2017-09-09 00:39:08'),
(6, 'pbkdf2_sha256$36000$w031KsMzZhDE$VUuHONBdYiVIMEBeQIYJTsp66uiU5Hwu40VgIJfRdyk=', '2017-12-10 03:22:58', 0, 'DirectoraGNP', '', '', '', 0, 1, '2017-09-12 23:08:25'),
(7, 'pbkdf2_sha256$36000$ULvU6sfKnlzM$VaWaRg3CDbwuf9aj2EHAMJT3rUd9Xypqt5xxfErQTis=', '2017-11-27 17:56:35', 0, 'DirectoraGNS', '', '', '', 0, 1, '2017-09-12 23:09:37'),
(8, 'pbkdf2_sha256$36000$PjlRR7quSbPl$xR2WJyuOMG9IkLIi+YfR2LXMjXV76s2A6fZfVEix0W0=', '2017-11-06 19:13:43', 0, 'Recepcion', '', '', '', 0, 1, '2017-09-29 18:56:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(9, 2, 4),
(2, 3, 2),
(3, 4, 3),
(6, 4, 4),
(4, 6, 3),
(7, 6, 4),
(5, 7, 3),
(8, 7, 4),
(14, 8, 3),
(10, 8, 4),
(11, 8, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-06-26 13:30:58', '2', 'DirectoraNI', 1, '[{"added": {}}]', 4, 1),
(2, '2017-06-26 13:31:23', '3', 'Director', 1, '[{"added": {}}]', 4, 1),
(3, '2017-06-26 13:32:02', '1', 'GestionPreinscripciones', 1, '[{"added": {}}]', 2, 1),
(4, '2017-06-26 13:32:39', '2', 'gestionciclolectivo', 1, '[{"added": {}}]', 2, 1),
(5, '2017-06-26 13:32:53', '2', 'DirectoraNI', 2, '[]', 4, 1),
(6, '2017-06-26 13:33:01', '3', 'Director', 2, '[]', 4, 1),
(7, '2017-06-26 13:34:13', '3', 'Director', 2, '[]', 4, 1),
(8, '2017-09-09 00:38:27', '3', 'gestion_pg', 1, '[{"added": {}}]', 2, 1),
(9, '2017-09-09 00:39:08', '4', 'DirectoraG', 1, '[{"added": {}}]', 4, 1),
(10, '2017-09-09 00:39:26', '4', 'DirectoraG', 2, '[]', 4, 1),
(11, '2017-09-12 22:52:13', '1', 'Profile object', 1, '[{"added": {}}]', 13, 1),
(12, '2017-09-12 23:07:19', '4', 'DirectoraGNI', 2, '[{"changed": {"fields": ["username"]}}]', 4, 1),
(13, '2017-09-12 23:08:00', '5', 'DirectoraNP', 1, '[{"added": {}}]', 4, 1),
(14, '2017-09-12 23:08:25', '6', 'DirectoraGNP', 1, '[{"added": {}}]', 4, 1),
(15, '2017-09-12 23:08:50', '5', 'DirectoraNP', 3, '', 4, 1),
(16, '2017-09-12 23:09:04', '6', 'DirectoraGNP', 2, '[]', 4, 1),
(17, '2017-09-12 23:09:37', '7', 'DirectoraGNS', 1, '[{"added": {}}]', 4, 1),
(18, '2017-09-12 23:10:06', '7', 'DirectoraGNS', 2, '[]', 4, 1),
(19, '2017-09-12 23:10:42', '2', 'Profile object', 1, '[{"added": {}}]', 13, 1),
(20, '2017-09-12 23:10:54', '3', 'Profile object', 1, '[{"added": {}}]', 13, 1),
(21, '2017-09-26 00:34:32', '4', 'mes', 1, '[{"added": {}}]', 2, 1),
(22, '2017-09-26 00:35:48', '4', 'DirectoraGNI', 2, '[]', 4, 1),
(23, '2017-09-26 00:35:55', '6', 'DirectoraGNP', 2, '[]', 4, 1),
(24, '2017-09-26 00:36:02', '7', 'DirectoraGNS', 2, '[]', 4, 1),
(25, '2017-09-26 00:36:09', '2', 'DirectoraNI', 2, '[]', 4, 1),
(26, '2017-09-29 18:56:08', '8', 'Recepcion', 1, '[{"added": {}}]', 4, 1),
(27, '2017-09-29 18:56:18', '8', 'Recepcion', 2, '[]', 4, 1),
(28, '2017-09-29 19:03:29', '4', 'Profile object', 1, '[{"added": {}}]', 13, 1),
(29, '2017-09-29 19:12:53', '5', 'recepcion', 1, '[{"added": {}}]', 2, 1),
(30, '2017-09-29 19:13:13', '8', 'Recepcion', 2, '[]', 4, 1),
(31, '2017-09-29 19:16:42', '8', 'Recepcion', 2, '[]', 4, 1),
(32, '2017-09-29 19:36:37', '8', 'Recepcion', 2, '[]', 4, 1),
(33, '2017-09-29 19:56:36', '8', 'Recepcion', 2, '[]', 4, 1),
(34, '2017-09-29 19:58:53', '8', 'Recepcion', 2, '[]', 4, 1),
(35, '2017-09-29 20:02:57', '8', 'Recepcion', 2, '[]', 4, 1),
(36, '2017-10-03 04:49:13', '1', 'REP LEGAL', 1, '[{"added": {}}]', 17, 1),
(37, '2017-10-03 04:49:16', '2', 'ADMINSTRACION', 1, '[{"added": {}}]', 17, 1),
(38, '2017-10-03 04:49:19', '3', 'CONTABLE', 1, '[{"added": {}}]', 17, 1),
(39, '2017-10-03 04:49:22', '4', 'COBRANZA', 1, '[{"added": {}}]', 17, 1),
(40, '2017-10-03 04:49:54', '5', 'SECRETARIA', 1, '[{"added": {}}]', 17, 1),
(41, '2017-10-03 04:49:57', '6', 'INFORMATICA', 1, '[{"added": {}}]', 17, 1),
(42, '2017-10-03 04:50:00', '7', 'MESA DE ENTRADA', 1, '[{"added": {}}]', 17, 1),
(43, '2017-10-03 04:50:03', '8', 'ESCUELA', 1, '[{"added": {}}]', 17, 1),
(44, '2017-10-03 04:50:06', '9', 'INICIAL', 1, '[{"added": {}}]', 17, 1),
(45, '2017-10-03 04:50:10', '10', 'PRIMARIA', 1, '[{"added": {}}]', 17, 1),
(46, '2017-10-03 04:50:13', '11', 'SECUNDARIA', 1, '[{"added": {}}]', 17, 1),
(47, '2017-10-03 04:50:17', '12', 'BIBLIOTECA', 1, '[{"added": {}}]', 17, 1),
(48, '2017-10-03 04:50:21', '13', 'PARROQUIA', 1, '[{"added": {}}]', 17, 1),
(49, '2017-10-03 04:50:30', '4', 'Recepcion', 2, '[]', 13, 1),
(50, '2017-10-03 04:50:41', '3', 'DirectoraGNS', 2, '[]', 13, 1),
(51, '2017-10-03 04:51:06', '2', 'DirectoraGNP', 2, '[]', 13, 1),
(52, '2017-10-03 04:51:14', '1', 'DirectoraGNI', 2, '[]', 13, 1),
(53, '2017-10-03 05:00:59', '1', 'DirectoraGNI', 2, '[]', 13, 1),
(54, '2017-10-03 12:25:29', '3', 'DirectoraGNS', 2, '[]', 13, 1),
(55, '2017-10-04 13:53:17', '3', 'DirectoraGNS', 2, '[]', 13, 1),
(56, '2017-10-04 13:53:32', '2', 'DirectoraGNP', 2, '[]', 13, 1),
(57, '2017-10-04 13:53:42', '1', 'DirectoraGNI', 2, '[]', 13, 1),
(58, '2017-10-04 14:18:00', '13', 'PARROQUIA', 3, '', 17, 1),
(59, '2017-10-04 14:18:00', '12', 'BIBLIOTECA', 3, '', 17, 1),
(60, '2017-10-04 14:18:00', '11', 'SECUNDARIA', 3, '', 17, 1),
(61, '2017-10-04 14:18:00', '10', 'PRIMARIA', 3, '', 17, 1),
(62, '2017-10-04 14:18:00', '9', 'INICIAL', 3, '', 17, 1),
(63, '2017-10-04 14:18:00', '8', 'ESCUELA', 3, '', 17, 1),
(64, '2017-10-04 14:18:00', '7', 'MESA DE ENTRADA', 3, '', 17, 1),
(65, '2017-10-04 14:18:00', '6', 'INFORMATICA', 3, '', 17, 1),
(66, '2017-10-04 14:18:00', '5', 'SECRETARIA', 3, '', 17, 1),
(67, '2017-10-04 14:18:00', '4', 'COBRANZA', 3, '', 17, 1),
(68, '2017-10-04 14:18:00', '3', 'CONTABLE', 3, '', 17, 1),
(69, '2017-10-04 14:18:00', '2', 'ADMINSTRACION', 3, '', 17, 1),
(70, '2017-10-04 14:18:00', '1', 'REP LEGAL', 3, '', 17, 1),
(71, '2017-10-04 14:19:15', '4', 'Recepcion', 3, '', 13, 1),
(72, '2017-10-04 14:19:16', '3', 'DirectoraGNS', 3, '', 13, 1),
(73, '2017-10-04 14:19:16', '2', 'DirectoraGNP', 3, '', 13, 1),
(74, '2017-10-04 14:19:16', '1', 'DirectoraGNI', 3, '', 13, 1),
(75, '2017-10-04 14:19:44', '14', 'REP LEGAL', 1, '[{"added": {}}]', 17, 1),
(76, '2017-10-04 14:19:47', '15', 'ADMINSTRACION', 1, '[{"added": {}}]', 17, 1),
(77, '2017-10-04 14:19:50', '16', 'CONTABLE', 1, '[{"added": {}}]', 17, 1),
(78, '2017-10-04 14:19:53', '17', 'COBRANZA', 1, '[{"added": {}}]', 17, 1),
(79, '2017-10-04 14:19:56', '18', 'SECRETARIA', 1, '[{"added": {}}]', 17, 1),
(80, '2017-10-04 14:19:59', '19', 'INFORMATICA', 1, '[{"added": {}}]', 17, 1),
(81, '2017-10-04 14:20:02', '20', 'MESA DE ENTRADA', 1, '[{"added": {}}]', 17, 1),
(82, '2017-10-04 14:20:08', '21', 'ESCUELA', 1, '[{"added": {}}]', 17, 1),
(83, '2017-10-04 14:20:11', '22', 'INICIAL', 1, '[{"added": {}}]', 17, 1),
(84, '2017-10-04 14:20:14', '23', 'PRIMARIO', 1, '[{"added": {}}]', 17, 1),
(85, '2017-10-04 14:20:17', '24', 'SECUNDARIO', 1, '[{"added": {}}]', 17, 1),
(86, '2017-10-04 14:20:20', '25', 'BIBLIOTECA', 1, '[{"added": {}}]', 17, 1),
(87, '2017-10-04 14:20:24', '26', 'PARROQUIA', 1, '[{"added": {}}]', 17, 1),
(88, '2017-10-04 14:20:56', '5', 'DirectoraGNI', 1, '[{"added": {}}]', 13, 1),
(89, '2017-10-04 14:21:08', '6', 'DirectoraGNP', 1, '[{"added": {}}]', 13, 1),
(90, '2017-10-04 14:21:18', '7', 'DirectoraGNS', 1, '[{"added": {}}]', 13, 1),
(91, '2017-10-04 14:22:04', '8', 'Recepcion', 1, '[{"added": {}}]', 13, 1),
(92, '2017-10-04 14:22:33', '9', 'DirectoraNI', 1, '[{"added": {}}]', 13, 1),
(93, '2017-10-04 14:48:57', '9', 'DirectoraNI', 2, '[]', 13, 1),
(94, '2017-10-04 14:50:25', '9', 'DirectoraNI', 2, '[{"changed": {"fields": ["nivel"]}}]', 13, 1),
(95, '2017-11-06 13:49:50', '7', 'DirectoraGNS', 2, '[]', 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(19, 'mes', 'movimiento'),
(14, 'mes', 'nota'),
(16, 'mes', 'notag'),
(18, 'mes', 'notai'),
(15, 'mes', 'notap'),
(17, 'pg', 'perfil'),
(13, 'pg', 'profile'),
(8, 'preinscripcion', 'ciclolectivo'),
(9, 'preinscripcion', 'postulante'),
(7, 'preinscripcion', 'postulanteconfirmado'),
(11, 'preinscripcion', 'preinscripcion4anios'),
(12, 'preinscripcion', 'preinscripciongeneral'),
(10, 'preinscripcion', 'responsable'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-09-26 00:32:08'),
(2, 'auth', '0001_initial', '2017-09-26 00:32:11'),
(3, 'admin', '0001_initial', '2017-09-26 00:32:12'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-09-26 00:32:12'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-09-26 00:32:12'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-09-26 00:32:13'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-09-26 00:32:13'),
(8, 'auth', '0004_alter_user_username_opts', '2017-09-26 00:32:13'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-09-26 00:32:13'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-09-26 00:32:13'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-09-26 00:32:13'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-09-26 00:32:14'),
(13, 'mes', '0001_initial', '2017-09-26 00:32:14'),
(14, 'mes', '0002_auto_20170925_1741', '2017-09-26 00:32:15'),
(15, 'mes', '0003_auto_20170925_1826', '2017-09-26 00:32:17'),
(16, 'mes', '0004_auto_20170925_1928', '2017-09-26 00:32:17'),
(17, 'pg', '0001_initial', '2017-09-26 00:32:18'),
(18, 'preinscripcion', '0001_initial', '2017-09-26 00:32:24'),
(19, 'sessions', '0001_initial', '2017-09-26 00:32:24'),
(20, 'mes', '0005_notap', '2017-09-26 00:47:47'),
(21, 'mes', '0006_notag', '2017-09-26 00:49:16'),
(22, 'mes', '0007_auto_20170925_2253', '2017-09-26 01:53:46'),
(23, 'mes', '0008_auto_20170925_2318', '2017-09-26 02:18:23'),
(24, 'mes', '0009_nota_notificar', '2017-09-29 00:31:35'),
(25, 'mes', '0010_auto_20170929_1439', '2017-09-29 17:46:19'),
(26, 'mes', '0011_nota_motivo', '2017-09-29 17:46:50'),
(27, 'preinscripcion', '0002_preinscripciongeneral_cant_notas', '2017-09-29 22:01:49'),
(28, 'mes', '0012_auto_20171002_2310', '2017-10-03 04:43:09'),
(29, 'mes', '0013_auto_20171002_2323', '2017-10-03 04:43:09'),
(30, 'pg', '0002_auto_20171002_2310', '2017-10-03 04:43:09'),
(31, 'pg', '0003_auto_20171003_0145', '2017-10-03 04:46:30'),
(32, 'mes', '0014_auto_20171003_0145', '2017-10-03 04:47:33'),
(33, 'mes', '0015_auto_20171004_1604', '2017-10-04 19:04:49'),
(34, 'pg', '0004_auto_20171004_1604', '2017-10-04 19:04:49'),
(35, 'mes', '0016_nota_emisor_perfil', '2017-10-07 01:11:55'),
(36, 'mes', '0017_auto_20171006_2239', '2017-10-07 01:39:22'),
(37, 'mes', '0018_auto_20171007_0004', '2017-10-07 03:04:51'),
(38, 'mes', '0019_remove_nota_motivo_derivar', '2017-10-28 19:15:34'),
(39, 'mes', '0020_movimiento', '2017-10-28 19:15:35'),
(40, 'mes', '0021_auto_20171011_1111', '2017-10-28 19:15:35'),
(41, 'mes', '0022_auto_20171011_1135', '2017-10-28 19:15:37'),
(42, 'mes', '0023_auto_20171011_1139', '2017-10-28 19:15:37'),
(43, 'mes', '0024_remove_movimiento_emisor_perfil', '2017-10-28 19:15:38'),
(44, 'mes', '0025_movimiento_emisor_perfil', '2017-10-28 19:15:38'),
(45, 'mes', '0026_auto_20171011_2205', '2017-10-28 19:15:38'),
(46, 'mes', '0027_auto_20171028_1607', '2017-10-28 19:15:39'),
(47, 'mes', '0028_auto_20171028_1610', '2017-10-28 19:15:40'),
(48, 'preinscripcion', '0003_remove_preinscripciongeneral_cant_notas', '2017-10-28 19:15:40'),
(49, 'preinscripcion', '0004_auto_20171011_2205', '2017-10-28 19:15:40'),
(50, 'mes', '0029_auto_20171028_1653', '2017-10-28 19:53:44'),
(51, 'mes', '0030_auto_20171030_1500', '2017-10-30 18:00:16'),
(52, 'mes', '0031_auto_20171104_1741', '2017-11-04 20:41:34'),
(53, 'preinscripcion', '0005_auto_20171125_1959', '2017-11-25 23:00:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('00cfcx36xouwhhf8uoa8vnball1y3t0g', 'YTcyMjc2NzRiNGQ5NjRiMzg0YTJjNTk3OTRkMzFlYWEzODE1MmZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-10-10 20:44:07'),
('07k6bw8n7v4gxbtp6k9izdw2ggyz6vrp', 'MzI3OWYxMGY0YzBjMTE0Yjc1ZTc4NWQ5Y2E1Yzk4YWQ4NDhiNGU0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-07-14 02:07:20'),
('11vadhsbesa2w9cei4ukxtpa5kl9tn9w', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-15 15:18:41'),
('1kzwle346tllo4yewq1bhklr1ayt8sa6', 'YmVjMDQxMmZjODYxNzgwZGRjZTllMTNiNDVjYzVmZjJkZjkyMDRlNDp7InBlcmZpbF9zZWxlYyI6Ik1FU0EgREUgRU5UUkFEQSIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-13 19:24:53'),
('1msh9aniexwc4bf0avypl5ekcd0gcq11', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-13 22:36:56'),
('1xhouzcr2p6xe2zijhhoghrpj1xvq27d', 'ODc5ZTBmNzI5MjcyYTEwMzJhMDllOTY0ZmFmOTM0Y2RjZjdkODQ0ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwicGVyZmlsX3NlbGVjIjoiUkVQIExFR0FMIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDA3OWZhY2NiMDFkZGViNmJjNTc3ZGYyYTQ3YjgzZWUxYzQ4N2ZjNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-20 17:52:08'),
('25wwtyc7pwqs4zbiwqegdjafzw9hte1y', 'NGJhNmNmOWFlZTMyODMwNmMwYWY3OTU2NDIzNGEyNjI3NTY2N2Y3YTp7fQ==', '2017-11-11 22:31:49'),
('27lhcs2y45pu0ukyy91v2uhx33dk4he9', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-23 18:26:48'),
('331mfej5l8uspc6ptkwncta6pponj3wh', 'MTM0MjA5M2YxZGI0NzVjOWY5OTQ5MzJmNTdhYjRiMzk0NTM2ZjRiYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAwNzlmYWNjYjAxZGRlYjZiYzU3N2RmMmE0N2I4M2VlMWM0ODdmYzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=', '2017-10-14 13:24:41'),
('3xo895ke9acobhnnzj585esjg5n9413i', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-10 00:38:45'),
('44n6g8iw5qd9oi5owfvhsnz42xb8sb5q', 'NGJhNmNmOWFlZTMyODMwNmMwYWY3OTU2NDIzNGEyNjI3NTY2N2Y3YTp7fQ==', '2017-11-11 22:30:53'),
('45sx2wafhn7pgvan1os8ornlq2lvqjzc', 'NjQ1OTI5MDdmYzMxOGU5MTAxNGIyNDJkNjEyMWY0ZDQzZDQyYjZmOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlODBiNzFiYTkzYzA5MWM3YWYxZTU3YzE3ZTY5MzVjNDhhYjhmNTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-18 14:48:43'),
('5i4835ovpp1bydd0ek8g3h32sf86kn7h', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-23 17:59:36'),
('5pyryg3qkwxz9jtqlk4b8zhkgzdklghj', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-13 01:23:21'),
('6eazfgc5ca1c1l2izzmvuy6t4sf0c4w7', 'YmVjMDQxMmZjODYxNzgwZGRjZTllMTNiNDVjYzVmZjJkZjkyMDRlNDp7InBlcmZpbF9zZWxlYyI6Ik1FU0EgREUgRU5UUkFEQSIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-20 19:13:43'),
('7tgon99g07s0nvpikv4gm6p7ywkgjgmz', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-15 03:27:14'),
('84w0if69jmcc5o9t2hinz6s8nhduhs42', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-13 02:21:46'),
('94b2oe8rna84t3y06w9es2e3vjbngiob', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-15 17:19:55'),
('bfa6ldzk68bepkfaf0hayn1oqb5mvsx1', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-17 05:34:57'),
('bza3v339r038smzowcg8pz4hdvjrh1b9', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-16 13:58:41'),
('clayfwziqt27cunleyokd5d1b95ti25n', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-13 15:02:47'),
('d4b65otudh6nkahi0mbnw6fnvjhjgvkh', 'MTM0MjA5M2YxZGI0NzVjOWY5OTQ5MzJmNTdhYjRiMzk0NTM2ZjRiYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAwNzlmYWNjYjAxZGRlYjZiYzU3N2RmMmE0N2I4M2VlMWM0ODdmYzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=', '2017-10-13 00:44:49'),
('ecbj8kap3621ub3mfetkzdgdqw0qug5i', 'ZjdlMWM0MTNjNDc2Mjk3NjRlMDkyNjkzY2UwMjQ2YjI2NTI5MjdmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNzUyZWY5Mzc4ZjliNTAxMTFlN2M4M2QwN2NiZWM5MTc1ODI0YzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-10-16 22:05:04'),
('egakahcq2zu5y61gxmoz64tc5gnwoera', 'ZjdlMWM0MTNjNDc2Mjk3NjRlMDkyNjkzY2UwMjQ2YjI2NTI5MjdmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNzUyZWY5Mzc4ZjliNTAxMTFlN2M4M2QwN2NiZWM5MTc1ODI0YzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-09-28 03:05:44'),
('errimyt7m0771fsjgslqphh8ni7x9o5m', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-17 12:25:52'),
('fdyscvacys3evtq2qvodgrq3b0n9xq2r', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-11 00:12:01'),
('gg3p9tt0amqquue6kw1naxhcnw9vsut2', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-16 18:38:05'),
('hphmkfax0n5nywprn7gby71wxqajc0jv', 'N2JlMDRkZTgzNmU5NDk5OWQwYWI2YzcyZTkxYWUzOTUyOGI5ZTc0Yjp7ImRhdGFfbWFkcmUiOnsidGVsZWZvbm9QZXJzb25hbCI6IjU1MzQ1MzQ1MzQ1IiwiYXBlbGxpZG8iOiJWYXN0aWsiLCJkbmkiOiIxNjYzNjIxMiIsIm5vbWJyZSI6Ik1hcnRhIiwibmFjaW9uYWxpZGFkIjoiQXJnZW50aW5vIiwiZW1haWwiOiJjYWZzZGZzZGZAc2QuY29tIiwiZG9taWNpbGlvIjoic2Rmc2ZkZnZ4Y3ZjdiJ9LCJkYXRhX3ZpdmVjb24iOnsidGVsZWZvbm9QZXJzb25hbCI6IjU1MzQ1MzQ1MzQ1IiwiYXBlbGxpZG8iOiJQZXJlemllbmUiLCJkbmkiOiIzNDM0MzQzNCIsIm5vbWJyZSI6ImRkZnNkZiIsIm5hY2lvbmFsaWRhZCI6InNkZnNkZnNkZmYiLCJlbWFpbCI6ImNhZnNkZnNkZkBzZC5jb20iLCJkb21pY2lsaW8iOiJzZGZzZmRmdnhjdmN2In0sIm5yb3ByZWluc2NyaXB0byI6IjkxOTU4NTM2IiwiZGF0YV9wYWRyZSI6eyJ0ZWxlZm9ub1BlcnNvbmFsIjoiNTUzNDUzNDUzNDUiLCJhcGVsbGlkbyI6IlBlcmV6aWVuZSIsImRuaSI6IjM0MzQzNDM0Iiwibm9tYnJlIjoiZGRmc2RmIiwibmFjaW9uYWxpZGFkIjoic2Rmc2Rmc2RmZiIsImVtYWlsIjoiY2Fmc2Rmc2RmQHNkLmNvbSIsImRvbWljaWxpbyI6InNkZnNmZGZ2eGN2Y3YifX0=', '2017-09-25 19:46:33'),
('jht14eb76vjtfb911sfsaze1v4bway9v', 'OWFkZjRkNzg0YjM4YWI2NmMzYjljNzFlNzNlOTQ3ZmZmOTgwYmI2NDp7InBlcmZpbF9zZWxlYyI6IlBSSU1BUklPIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDlmNDIzMzNiZjFhMjc1N2E0ZmQ2ZWI1ZWY0YTMzMzgzMjI1Y2VlOCIsIl9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-11-14 01:45:38'),
('jsa4q404m6aigwtyonsge7o973wgvezr', 'NjQ1OTI5MDdmYzMxOGU5MTAxNGIyNDJkNjEyMWY0ZDQzZDQyYjZmOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlODBiNzFiYTkzYzA5MWM3YWYxZTU3YzE3ZTY5MzVjNDhhYjhmNTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-13 19:56:16'),
('k60hbz870uqm2fx35pj4fl2491zbk0ps', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-16 22:07:19'),
('o830s8dpuxd8fitmp7fcqvf5tyupo1qk', 'MTIyYzU0NmYwYzE0NmFkMDIzZGZiYzNjYTYxYjE1ZjJkMDQ5MTgxNDp7ImRhdGFfbWFkcmUiOnsidGVsZWZvbm9QZXJzb25hbCI6IjU1MzQ1MzQ1MzQ1IiwiYXBlbGxpZG8iOiJWYXN0aWsiLCJkbmkiOiIxNjYzNjIxMiIsIm5vbWJyZSI6Ik1hcnRhIiwibmFjaW9uYWxpZGFkIjoiQXJnZW50aW5vIiwiZW1haWwiOiJjYWZzZGZzZGZAc2QuY29tIiwiZG9taWNpbGlvIjoic2Rmc2ZkZnZ4Y3ZjdiJ9LCJkYXRhX3ZpdmVjb24iOnsidGVsZWZvbm9QZXJzb25hbCI6IjU1MzQ1MzQ1MzQ1IiwiYXBlbGxpZG8iOiJQZXJlemllbmUiLCJkbmkiOiIyMzIzMjMyMyIsIm5vbWJyZSI6ImRkZnNkZiIsIm5hY2lvbmFsaWRhZCI6InNkZnNkZnNkZmYiLCJlbWFpbCI6ImNhZnNkZnNkZkBzZC5jb20iLCJkb21pY2lsaW8iOiJzZGZzZmRmdnhjdmN2In0sIm5yb3ByZWluc2NyaXB0byI6IjUwMTk3MTgzIiwiZGF0YV9wYWRyZSI6eyJ0ZWxlZm9ub1BlcnNvbmFsIjoiNTUzNDUzNDUzNDUiLCJhcGVsbGlkbyI6IlBlcmV6aWVuZSIsImRuaSI6IjIzMjMyMzIzIiwibm9tYnJlIjoiZGRmc2RmIiwibmFjaW9uYWxpZGFkIjoic2Rmc2Rmc2RmZiIsImVtYWlsIjoiY2Fmc2Rmc2RmQHNkLmNvbSIsImRvbWljaWxpbyI6InNkZnNmZGZ2eGN2Y3YifX0=', '2017-09-24 23:40:43'),
('oqinlwjwm70j186399rbum0xol5toulm', 'YmVjMDQxMmZjODYxNzgwZGRjZTllMTNiNDVjYzVmZjJkZjkyMDRlNDp7InBlcmZpbF9zZWxlYyI6Ik1FU0EgREUgRU5UUkFEQSIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-18 21:52:14'),
('otab6rmx19duuuvv852e1eknxtkac877', 'ZjdlMWM0MTNjNDc2Mjk3NjRlMDkyNjkzY2UwMjQ2YjI2NTI5MjdmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNzUyZWY5Mzc4ZjliNTAxMTFlN2M4M2QwN2NiZWM5MTc1ODI0YzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-09-24 23:31:41'),
('pmn6al9eejl17uois5zbtff10v57on7m', 'OWRhOTM4NWY4OGQyZDU4NzRkMmM5Mjg0YWMwN2U1M2Y4ZjZiMWJkYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwicGVyZmlsX3NlbGVjIjoiUFJJTUFSSU8iLCJfYXV0aF91c2VyX2hhc2giOiI0OWY0MjMzM2JmMWEyNzU3YTRmZDZlYjVlZjRhMzMzODMyMjVjZWU4IiwiX2F1dGhfdXNlcl9pZCI6IjYifQ==', '2017-11-20 19:22:07'),
('q93id2qc3pswkmm28m4mip5vz9cv4l3i', 'YzNjYWJmNDFhNTk0NGViZjBmYzkyOTI5ZDA4MWZjZmUxODllZDQ0Yjp7ImRhdGFfbWFkcmUiOnsidGVsZWZvbm9QZXJzb25hbCI6IjM2MjQyNDIzNDIzNCIsImFwZWxsaWRvIjoiVmFzdGlrIEFzZGRkZCIsImRuaSI6IjE2NjM2MjEyIiwibm9tYnJlIjoiTWFydGEiLCJuYWNpb25hbGlkYWQiOiJBcmdlbnRpbm8iLCJlbWFpbCI6ImNhcmxvc0BnbWFpbC5jb20iLCJkb21pY2lsaW8iOiJBdmRhIEVkaXNvbiAxNDMwIn0sImRhdGFfdHV0b3IiOnsidGVsZWZvbm9QZXJzb25hbCI6IjM2MjQyODk3MzczMyIsImFwZWxsaWRvIjoiQ2FybG9zIiwiZG5pIjoiMjExMTExMTEiLCJub21icmUiOiJDYXJsb3MiLCJuYWNpb25hbGlkYWQiOiJBcmdlbnRpbm8iLCJlbWFpbCI6ImNhcmxvc0BnbWFpbC5jb20iLCJkb21pY2lsaW8iOiJSaXZhZGF2aWEgMjQzIn0sImRhdGFfdml2ZWNvbiI6eyJ0ZWxlZm9ub1BlcnNvbmFsIjoiMzYyNDI0MjM0MjM0IiwiYXBlbGxpZG8iOiJQZXJleiIsImRuaSI6IjIzMjMyMzIzIiwibm9tYnJlIjoiSmF2aWVyIiwibmFjaW9uYWxpZGFkIjoiQXJnZW50aW5vIiwiZW1haWwiOiJjYXJsb3NAZ21haWwuY29tIiwiZG9taWNpbGlvIjoiQXZkYSBFZGlzb24gMTQzMCJ9LCJucm9wcmVpbnNjcmlwdG8iOiI2ODExMTcxNiIsImRhdGFfcGFkcmUiOnsidGVsZWZvbm9QZXJzb25hbCI6IjM2MjQyNDIzNDIzNCIsImFwZWxsaWRvIjoiUGVyZXoiLCJkbmkiOiIyMzIzMjMyMyIsIm5vbWJyZSI6IkphdmllciIsIm5hY2lvbmFsaWRhZCI6IkFyZ2VudGlubyIsImVtYWlsIjoiY2FybG9zQGdtYWlsLmNvbSIsImRvbWljaWxpbyI6IkF2ZGEgRWRpc29uIDE0MzAifX0=', '2017-12-11 12:15:21'),
('qv7tejf644woct19zag0v2tizf85tu8t', 'NjQ1OTI5MDdmYzMxOGU5MTAxNGIyNDJkNjEyMWY0ZDQzZDQyYjZmOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlODBiNzFiYTkzYzA5MWM3YWYxZTU3YzE3ZTY5MzVjNDhhYjhmNTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-09-26 22:51:28'),
('qya759jjos0phvg2vlnix28vy6chbuat', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-10 18:26:38'),
('uazruxqbrcg3e7togd2bpsmbqyzfzo1d', 'YmZhYTBjZjljN2FiZTcxNWQ3ZDg5MTc5YjVkMmIzZjkzMDU1ZTJiZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwicGVyZmlsX3NlbGVjIjoiU0VDVU5EQVJJTyIsIl9hdXRoX3VzZXJfaGFzaCI6IjAwNzlmYWNjYjAxZGRlYjZiYzU3N2RmMmE0N2I4M2VlMWM0ODdmYzciLCJfYXV0aF91c2VyX2lkIjoiNyJ9', '2017-11-20 19:25:13'),
('ul5v0u27zuzve75f0iid81en171l0unb', 'YmVjMDQxMmZjODYxNzgwZGRjZTllMTNiNDVjYzVmZjJkZjkyMDRlNDp7InBlcmZpbF9zZWxlYyI6Ik1FU0EgREUgRU5UUkFEQSIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-12 00:24:07'),
('viz544ra2i4jp1xtbk8ir6wu5u8sqg4g', 'YThhNWI2ZWRhZGQ5NWE5MGJkZjJhNTRiMTk1YTMyNDViZjNiZjQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0NmQ5NzU3ZmVjY2FhOWEzMjhmYjljYjhkMzg2YzM2MDFhMDFhZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-07-14 21:11:27'),
('vvlkm0m0a8mnburixuzm8a9cafk3axjv', 'ZjZmNGQyNDQ1Nzc0N2NhODQ3Nzc4OTQxZTM2ZDZkMWM1OWE2ZWNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMmVhOTk2ZDAyNTEzOTNkMDQ0OGU1NWFkOTdiMTk5YjQ3YTJkMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2017-10-23 14:30:28'),
('zq8qyw706wuxr790kc6q0r39slbofo8n', 'ZjE3ZTFjMWU5MGE2ZDM5NWQyMGIwZDg1MWM4YzI5M2Y4ZWUxY2Y4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjQyMzMzYmYxYTI3NTdhNGZkNmViNWVmNGEzMzM4MzIyNWNlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-10-13 01:30:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes_movimiento`
--

CREATE TABLE IF NOT EXISTS `mes_movimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo_derivar` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `destino_id` int(11) NOT NULL,
  `emisor_id` int(11) DEFAULT NULL,
  `nota_id` int(11) NOT NULL,
  `emisor_perfil_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mes_movimiento_destino_id_694253f5_fk_pg_perfil_id` (`destino_id`),
  KEY `mes_movimiento_nota_id_17e21eab_fk_mes_nota_id` (`nota_id`),
  KEY `mes_movimiento_emisor_id_6b38e5b6_fk_auth_user_id` (`emisor_id`),
  KEY `mes_movimiento_emisor_perfil_id_64224cc6_fk_pg_perfil_id` (`emisor_perfil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `mes_movimiento`
--

INSERT INTO `mes_movimiento` (`id`, `motivo_derivar`, `fecha`, `destino_id`, `emisor_id`, `nota_id`, `emisor_perfil_id`) VALUES
(7, 'No me corresponde.', '2017-11-06', 17, 4, 237, 23),
(8, 'Cuentas por cobrar', '2017-11-06', 21, 6, 242, 22),
(9, 'Cuentas por cobrar', '2017-11-06', 14, 7, 247, 21),
(10, 'sfdsf sdf sf sdfsdf s f', '2017-11-06', 23, 4, 253, 21),
(11, 'sda dasd asd asdsd', '2017-11-06', 14, 6, 253, 21),
(12, 'safsdfdsfdf', '2017-12-09', 14, 6, 253, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes_nota`
--

CREATE TABLE IF NOT EXISTS `mes_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emision` date NOT NULL,
  `estado` varchar(100) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `nro_de_tracking` varchar(10) NOT NULL,
  `remitente` varchar(200) DEFAULT NULL,
  `notificar` tinyint(1) NOT NULL,
  `motivo` longtext NOT NULL,
  `accion_por_id` int(11) DEFAULT NULL,
  `emisor_perfil_id` int(11) DEFAULT NULL,
  `asunto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mes_nota_emisor_id_9f4303de` (`emisor_id`),
  KEY `mes_nota_receptor_id_3294eaad` (`destino_id`),
  KEY `mes_nota_accion_por_id_7127f10b_fk_auth_user_id` (`accion_por_id`),
  KEY `mes_nota_emisor_perfil_id_a96fbdb9_fk_pg_perfil_id` (`emisor_perfil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Volcado de datos para la tabla `mes_nota`
--

INSERT INTO `mes_nota` (`id`, `fecha_emision`, `estado`, `emisor_id`, `destino_id`, `nro_de_tracking`, `remitente`, `notificar`, `motivo`, `accion_por_id`, `emisor_perfil_id`, `asunto`) VALUES
(233, '2017-11-06', 'RECIBIDA', 8, 23, '65885264', 'Gerardo Chaque', 1, '<p>Buena, d&iacute;a! Quiero inscribir a mi hijo aqui.</p>', 6, 20, 'Asunto.'),
(234, '2017-11-06', 'RECIBIDA', 8, 21, '87917644', NULL, 1, '<p>Hola, quero comentarles que ma&ntilde;ana 06/11/2107 habra feriado.</p>', 4, 20, 'Feriado Nacional Mañana'),
(235, '2017-11-06', 'DESPACHADA', 6, 24, '27685819', NULL, 1, '<p>sda sdas das dsda</p>', NULL, 23, 'Asunto.'),
(236, '2017-11-06', 'NUEVA', 6, 22, '36058037', NULL, 1, '<p>Hola, quer&iacute;a informarles que el martes sera feriado nacional.</p>', NULL, 23, 'Feriado Nacional Martes'),
(237, '2017-11-06', 'NUEVA', 6, 17, '51402269', NULL, 1, '<p>M&eacute;xico, D.F. 5 de julio de 2010</p>\r\n\r\n<p>A todo el personal:</p>\r\n\r\n<p>Por medio de la presente se le informa a todo el personal que con motivo del acuerdo establecido entre esta empresa y el Deportivo No. 22 &quot;Jes&uacute;s Ch&aacute;vez Pi&ntilde;eiro&quot;, a partir del pr&oacute;ximo 12 de julio del a&ntilde;o en curso todos los empleados podr&aacute;n hacer uso de las instalaciones de dicho deportivo pagando una cuota m&iacute;nima de $100.00 mensuales. Este pago le da derecho al trabajador a utilizar todas las instalaciones deportivas sin ninguna restricci&oacute;n. Asimismo, le permite obtener descuentos en la memebres&iacute;a de familiares. Los empleados interesados en este beneficio deber&aacute;n de presentarse los d&iacute;as 6, 7, 8 y 9 de julio del a&ntilde;o en curso en las oficinas de recursos humanos para realizar su registro y el tr&aacute;mite correspondiente. Despu&eacute;s de ello recibir&aacute;n su credencial que los avala como socios del deportivo. Sin m&aacute;s por el momento, esperamos contar con su participaci&oacute;n. esta empresa sin duda cree y promueve el deporte.</p>\r\n\r\n<p>Para cualquier aclaraci&oacute;n o duda favor de presentarse en la oficina de recursos humanos.</p>\r\n\r\n<p>Atte. Juli&aacute;n Ricardez Echeverr&iacute;a</p>\r\n\r\n<p>Direcci&oacute;n General de Personal</p>\r\n\r\n<p>Servicios inform&aacute;ticos Telinfo S.A. de C.V.</p>\r\n\r\n<p><br />\r\n<br />\r\nURL del art&iacute;culo: http://www.ejemplode.com/58-administracion/3021-ejemplo_de_notas.html<br />\r\nNota completa:&nbsp;<a href="http://www.ejemplode.com/58-administracion/3021-ejemplo_de_notas.html">Notas</a></p>', NULL, 23, 'Nota navideña'),
(238, '2017-11-06', 'NUEVA', 6, 16, '55222633', NULL, 1, '<p>sdasd ad f sf sdfsdf</p>', NULL, 23, 'probando'),
(239, '2017-11-06', 'NUEVA', 8, 21, '94457355', 'MIRASOLES EVENTOS', 1, '<p>En el texto de la carta de ofrecimiento debe dar una idea clara a quien la recibe de qu&eacute; es lo que se le ofrece y qu&eacute; se espera de &eacute;l para continuar con el proceso de selecci&oacute;n.</p>\r\n\r\n<p>El tono del texto debe ser directo y alentador hacia la persona que la leer&aacute;, aunque no se deben alentar falsas expectativas.</p>\r\n\r\n<p>Si la carta de ofrecimiento forma parte de un proceso en el que intervienen m&aacute;s candidatos, es bueno aclararlo, ya que la persona puede pensar que el puesto ya es suyo y verse desilusionada cuando ingrese a la selecci&oacute;n.</p>\r\n\r\n<p><br />\r\nAqu&iacute; un ejemplo de una carta de ofrecimiento completa:</p>\r\n\r\n<p>Estimado Juan Palotes:</p>\r\n\r\n<p>Enterprise S.A tiene el placer de ofrecerle un puesto de Analista de Sistemas.</p>\r\n\r\n<p>Confiamos en que sus conocimientos y experiencia ser&aacute;n uno de nuestros activos m&aacute;s valiosos.</p>\r\n\r\n<p>Usted es elegible para este cargo y de acuerdo a la pol&iacute;tica de la compa&ntilde;&iacute;a, le hacemos llegar los datos de contrataci&oacute;n en caso de que desee aceptar esta propuesta:</p>\r\n\r\n<ul>\r\n	<li>Salario: sueldo bruto anual de 50.000 d&oacute;lares, pagado en cuota quincenales a su elecci&oacute;n en cheque o dep&oacute;sito directo</li>\r\n	<li>Bonos de rendimiento: hasta un tres por ciento de su sueldo bruto anual, pagado trimestralmente</li>\r\n	<li>Beneficios: Enterprise proporciona beneficios para sus empleados asalariados, entre ellos: guarder&iacute;a infantil, asistencia m&eacute;dica, dental, seguro de vida e invalidez, licencia por enfermedad o vacaciones y d&iacute;as personales.</li>\r\n</ul>\r\n\r\n<p>Para aceptar esta oferta de trabajo:</p>\r\n\r\n<ol>\r\n	<li>Firmar y fechar esta carta de oferta de trabajo donde se indica.</li>\r\n	<li>Firmar y fechar el acuerdo adjunto en el lugar indicado.</li>\r\n	<li>Firmar y fechar el Acuerdo de Confidencialidad adjunto donde se indica.</li>\r\n	<li>Firmar y fechar el documento de confirmaci&oacute;n de voluntad de Empleo donde se indica.</li>\r\n	<li>Enviar a la empresa todas las p&aacute;ginas de los documentos firmados y fechados anteriores, en sobre cerrado, antes del jueves, 17 de marzo de 200x. Una copia de cada documento se adjunta para su archivo.</li>\r\n	<li>Asistir a la empresa el lunes 21 de marzo de 200x, a partir de las 8:00 am en punto.</li>\r\n</ol>\r\n\r\n<p>Para rechazar esta oferta de trabajo:</p>\r\n\r\n<ol>\r\n	<li>Firmar y fechar esta carta de oferta de trabajo donde se indica a continuaci&oacute;n.</li>\r\n	<li>Enviar a la empresa todas las p&aacute;ginas de esta carta de oferta de trabajo, en sobre cerrado, antes del jueves 17 de marzo de 200x.</li>\r\n</ol>\r\n\r\n<p>En Enterprise S.A esperamos que usted acepte esta oferta de trabajo y deseamos darle la bienvenida a nuestro equipo.</p>\r\n\r\n<p>Su supervisor inmediato ser&aacute; Juan Gonz&aacute;lez, Gerente del Departamento de Computaci&oacute;n.</p>\r\n\r\n<p>Si&eacute;ntase libre de llamar para despejar sus dudas. Llame al n&uacute;mero principal en el membrete de arriba durante el horario comercial normal.</p>\r\n\r\n<p>Atentamente,</p>\r\n\r\n<p>[la firma]</p>\r\n\r\n<p>Jos&eacute; Cort&eacute;z<br />\r\nCoordinador Contrataci&oacute;n, Recursos Humanos</p>', NULL, 20, 'Asunto.'),
(240, '2017-11-06', 'NUEVA', 8, 23, '74299747', 'Gerardo Chaque', 1, '<p>Cursado a ciclo lectivo actual.</p>', NULL, 20, 'Asunto.'),
(241, '2017-11-06', 'NUEVA', 8, 23, '15189879', 'Acto 25 de Mayo', 1, '<p>Este a&ntilde;o est&aacute;n encargados de la organizaci&oacute;n del acto de 25 de Mayo.</p>', NULL, 20, 'Asunto.'),
(242, '2017-11-06', 'NUEVA', 4, 21, '83544649', NULL, 1, '<p>fsf &nbsp;sdfdsfsdf sdf sdf sf</p>', NULL, 22, 'Asunto.'),
(243, '2017-11-06', 'NUEVA', 4, 20, '17616617', NULL, 1, '<p>sfsdf s fsdf sfs afsdf&nbsp;</p>', NULL, 22, 'Preuba nuea'),
(244, '2017-11-06', 'NUEVA', 6, 20, '03088664', NULL, 1, '<p>Secretar&iacute;a de educaci&oacute;n p&uacute;blica</p>\r\n\r\n<p>Jueves 23 de enero de 2015</p>\r\n\r\n<p>C director del INEA<br />\r\nPresente:</p>\r\n\r\n<p>Quien suscribe, Prof. Joaqu&iacute;n Mart&iacute;nez Carmona, encargado de la d&eacute;cimo sexta regi&oacute;n del INEA en el estado de M&eacute;xico.</p>\r\n\r\n<p>Con la presente le comunico que los 30 alumnos que se me asignaron el 23 de junio de 2014 ya cumplieron plenamente con el programa de educaci&oacute;n, estos adultos terminaron con un nivel de 9.8 el cual les permite entrar en el programa de becas.</p>\r\n\r\n<p>Por esta causa le solicito que a los alumnos de menos recursos de mi grupo les concedan una beca para que puedan continuar con sus estudios de bachillerato, para esto le adjunto los documentos necesarios para que lleven el registro de estos alumnos.</p>\r\n\r\n<p>Sin m&aacute;s por comunicarle me despido.</p>\r\n\r\n<p>Atentamente</p>\r\n\r\n<p>Prof. Joaqu&iacute;n Mart&iacute;nez Carmona<br />\r\nFirma</p>\r\n\r\n<p><br />\r\n<br />\r\nURL del art&iacute;culo: http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html<br />\r\nLeer completo:&nbsp;<a href="http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html">Carta Formal</a></p>', NULL, 21, 'Solicitud de asistencia Inauguración.'),
(245, '2017-11-06', 'NUEVA', 6, 20, '08722936', NULL, 1, '<p>Secretar&iacute;a de educaci&oacute;n p&uacute;blica</p>\r\n\r\n<p>Jueves 23 de enero de 2015</p>\r\n\r\n<p>C director del INEA<br />\r\nPresente:</p>\r\n\r\n<p>Quien suscribe, Prof. Joaqu&iacute;n Mart&iacute;nez Carmona, encargado de la d&eacute;cimo sexta regi&oacute;n del INEA en el estado de M&eacute;xico.</p>\r\n\r\n<p>Con la presente le comunico que los 30 alumnos que se me asignaron el 23 de junio de 2014 ya cumplieron plenamente con el programa de educaci&oacute;n, estos adultos terminaron con un nivel de 9.8 el cual les permite entrar en el programa de becas.</p>\r\n\r\n<p>Por esta causa le solicito que a los alumnos de menos recursos de mi grupo les concedan una beca para que puedan continuar con sus estudios de bachillerato, para esto le adjunto los documentos necesarios para que lleven el registro de estos alumnos.</p>\r\n\r\n<p>Sin m&aacute;s por comunicarle me despido.</p>\r\n\r\n<p>Atentamente</p>\r\n\r\n<p>Prof. Joaqu&iacute;n Mart&iacute;nez Carmona<br />\r\nFirma</p>\r\n\r\n<p><br />\r\n<br />\r\nURL del art&iacute;culo: http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html<br />\r\nLeer completo:&nbsp;<a href="http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html">Carta Formal</a></p>', NULL, 21, 'Solicitud de asistencia Inauguración.'),
(246, '2017-11-06', 'RECIBIDA', 6, 24, '80676971', NULL, 1, '<p>Secretar&iacute;a de educaci&oacute;n p&uacute;blica</p>\r\n\r\n<p>Jueves 23 de enero de 2015</p>\r\n\r\n<p>C director del INEA<br />\r\nPresente:</p>\r\n\r\n<p>Quien suscribe, Prof. Joaqu&iacute;n Mart&iacute;nez Carmona, encargado de la d&eacute;cimo sexta regi&oacute;n del INEA en el estado de M&eacute;xico.</p>\r\n\r\n<p>Con la presente le comunico que los 30 alumnos que se me asignaron el 23 de junio de 2014 ya cumplieron plenamente con el programa de educaci&oacute;n, estos adultos terminaron con un nivel de 9.8 el cual les permite entrar en el programa de becas.</p>\r\n\r\n<p>Por esta causa le solicito que a los alumnos de menos recursos de mi grupo les concedan una beca para que puedan continuar con sus estudios de bachillerato, para esto le adjunto los documentos necesarios para que lleven el registro de estos alumnos.</p>\r\n\r\n<p>Sin m&aacute;s por comunicarle me despido.</p>\r\n\r\n<p>Atentamente</p>\r\n\r\n<p>Prof. Joaqu&iacute;n Mart&iacute;nez Carmona<br />\r\nFirma</p>\r\n\r\n<p><br />\r\n<br />\r\nURL del art&iacute;culo: http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html<br />\r\nLeer completo:&nbsp;<a href="http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html">Carta Formal</a></p>', 7, 21, 'Solicitud de asistencia Inauguración.'),
(247, '2017-11-06', 'NUEVA', 6, 14, '32307143', NULL, 1, '<p>Secretar&iacute;a de educaci&oacute;n p&uacute;blica</p>\r\n\r\n<p>Jueves 23 de enero de 2015</p>\r\n\r\n<p>C director del INEA<br />\r\nPresente:</p>\r\n\r\n<p>Quien suscribe, Prof. Joaqu&iacute;n Mart&iacute;nez Carmona, encargado de la d&eacute;cimo sexta regi&oacute;n del INEA en el estado de M&eacute;xico.</p>\r\n\r\n<p>Con la presente le comunico que los 30 alumnos que se me asignaron el 23 de junio de 2014 ya cumplieron plenamente con el programa de educaci&oacute;n, estos adultos terminaron con un nivel de 9.8 el cual les permite entrar en el programa de becas.</p>\r\n\r\n<p>Por esta causa le solicito que a los alumnos de menos recursos de mi grupo les concedan una beca para que puedan continuar con sus estudios de bachillerato, para esto le adjunto los documentos necesarios para que lleven el registro de estos alumnos.</p>\r\n\r\n<p>Sin m&aacute;s por comunicarle me despido.</p>\r\n\r\n<p>Atentamente</p>\r\n\r\n<p>Prof. Joaqu&iacute;n Mart&iacute;nez Carmona<br />\r\nFirma</p>\r\n\r\n<p><br />\r\n<br />\r\nURL del art&iacute;culo: http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html<br />\r\nLeer completo:&nbsp;<a href="http://www.ejemplode.com/11-escritos/1236-ejemplo_de_carta_formal.html">Carta Formal</a></p>', NULL, 21, 'Solicitud de asistencia Inauguración.'),
(248, '2017-11-06', 'NUEVA', 6, 24, '91388104', NULL, 1, '<p>f sfsdf sfsf sdf f ff&nbsp;</p>', NULL, 21, 'Asunto.'),
(249, '2017-11-06', 'NUEVA', 6, 25, '43338010', NULL, 1, '<p>zczxc &nbsp;ffdfs fds fddf&nbsp;</p>', NULL, 21, 'Asunto.'),
(250, '2017-11-06', 'NUEVA', 7, 14, '65663022', NULL, 1, '<p>g fdgd &nbsp;ggf &nbsp;asdf fsd d fsdf</p>', NULL, 14, 'Prueba enviada por perfil secundario.'),
(251, '2017-11-06', 'NUEVA', 7, 20, '88949269', NULL, 1, '<ul>\r\n	<li>f fd<em>s fsdf dfsdf dfsdf sdf sfsdf dfds fsdf sdf d</em></li>\r\n	<li><em>df sfsdf&nbsp;</em></li>\r\n	<li><em>sdf</em></li>\r\n	<li><em>sdf</em></li>\r\n	<li><em>&nbsp;sd</em></li>\r\n	<li><em>f sdf f</em></li>\r\n</ul>', NULL, 14, 'probando'),
(252, '2017-11-06', 'DESPACHADA', 7, 20, '99592334', NULL, 1, '<p style="margin-left:40px">er werewr wer werw ewerwe</p>\r\n\r\n<p style="margin-left:40px">&nbsp;we</p>\r\n\r\n<p style="margin-left:40px">rwe</p>\r\n\r\n<p style="margin-left:40px">rwe</p>\r\n\r\n<p style="margin-left:40px">r</p>', NULL, 14, 'prueba enviar a mesa de enetrada nota fisica.'),
(253, '2017-11-06', 'NUEVA', 6, 14, '11676594', NULL, 1, '<p>sadsadasds adsasd sd</p>', 4, 21, 'Asunto.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes_notai`
--

CREATE TABLE IF NOT EXISTS `mes_notai` (
  `nota_ptr_id` int(11) NOT NULL,
  `enviar_a_id` int(11) DEFAULT NULL,
  `nota_fisica` tinyint(1) NOT NULL,
  PRIMARY KEY (`nota_ptr_id`),
  KEY `mes_notai_enviar_a_id_07d76c6b_fk_pg_perfil_id` (`enviar_a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mes_notai`
--

INSERT INTO `mes_notai` (`nota_ptr_id`, `enviar_a_id`, `nota_fisica`) VALUES
(234, 21, 0),
(235, 24, 1),
(236, 22, 0),
(237, 22, 1),
(238, 16, 0),
(242, 23, 1),
(243, 20, 0),
(244, 24, 1),
(245, 24, 1),
(246, 24, 1),
(247, 24, 1),
(248, 24, 0),
(249, 25, 0),
(250, 14, 0),
(251, 15, 1),
(252, 20, 1),
(253, 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes_notap`
--

CREATE TABLE IF NOT EXISTS `mes_notap` (
  `nota_ptr_id` int(11) NOT NULL,
  `pg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nota_ptr_id`),
  KEY `mes_notap_pg_id_91e2381b_fk_preinscri` (`pg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mes_notap`
--

INSERT INTO `mes_notap` (`nota_ptr_id`, `pg_id`) VALUES
(233, 102),
(240, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pg_perfil`
--

CREATE TABLE IF NOT EXISTS `pg_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `pg_perfil`
--

INSERT INTO `pg_perfil` (`id`, `perfil`) VALUES
(14, 'REP LEGAL'),
(15, 'ADMINSTRACION'),
(16, 'CONTABLE'),
(17, 'COBRANZA'),
(18, 'SECRETARIA'),
(19, 'INFORMATICA'),
(20, 'MESA DE ENTRADA'),
(21, 'ESCUELA'),
(22, 'INICIAL'),
(23, 'PRIMARIO'),
(24, 'SECUNDARIO'),
(25, 'BIBLIOTECA'),
(26, 'PARROQUIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pg_profile`
--

CREATE TABLE IF NOT EXISTS `pg_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `pg_profile`
--

INSERT INTO `pg_profile` (`id`, `nivel`, `user_id`) VALUES
(5, 'INICIAL', 4),
(6, 'PRIMARIO', 6),
(7, 'SECUNDARIO', 7),
(8, 'TODOS', 8),
(9, 'GENERAL', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pg_profile_perfil`
--

CREATE TABLE IF NOT EXISTS `pg_profile_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pg_profile_perfil_profile_id_perfil_id_7ddeafad_uniq` (`profile_id`,`perfil_id`),
  KEY `pg_profile_perfil_perfil_id_48134110_fk_pg_perfil_id` (`perfil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `pg_profile_perfil`
--

INSERT INTO `pg_profile_perfil` (`id`, `profile_id`, `perfil_id`) VALUES
(11, 5, 21),
(12, 5, 22),
(13, 6, 21),
(14, 6, 23),
(20, 7, 14),
(16, 7, 21),
(15, 7, 24),
(17, 8, 20),
(19, 9, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_ciclolectivo`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_ciclolectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_apertura_ciclo` date NOT NULL,
  `fecha_cierre_ciclo` date NOT NULL,
  `fecha_inicio_preinsc_ni` date NOT NULL,
  `fecha_fin_preinsc_ni` date NOT NULL,
  `vacantes` int(10) unsigned NOT NULL,
  `ultimo_nro_sorteo` int(10) unsigned NOT NULL,
  `fecha_dia_sorteo` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `preinscripcion_ciclolectivo`
--

INSERT INTO `preinscripcion_ciclolectivo` (`id`, `fecha_apertura_ciclo`, `fecha_cierre_ciclo`, `fecha_inicio_preinsc_ni`, `fecha_fin_preinsc_ni`, `vacantes`, `ultimo_nro_sorteo`, `fecha_dia_sorteo`) VALUES
(1, '2018-01-12', '2018-12-12', '2018-08-12', '2018-09-12', 35, 10, '2018-10-12'),
(2, '2017-01-12', '2017-12-12', '2017-08-12', '2017-09-12', 34, 0, '2017-10-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_postulante`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_postulante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int(10) unsigned NOT NULL,
  `dni` varchar(8) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `domicilio` varchar(150) NOT NULL,
  `madre_id` int(11) DEFAULT NULL,
  `padre_id` int(11) DEFAULT NULL,
  `pg_id` int(11) DEFAULT NULL,
  `preinscripcion_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `vive_con_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preinscripcion_postu_madre_id_00826143_fk_preinscri` (`madre_id`),
  KEY `preinscripcion_postu_padre_id_dcc6a93c_fk_preinscri` (`padre_id`),
  KEY `preinscripcion_postu_pg_id_6c4950e6_fk_preinscri` (`pg_id`),
  KEY `preinscripcion_postu_preinscripcion_id_3926d06c_fk_preinscri` (`preinscripcion_id`),
  KEY `preinscripcion_postu_tutor_id_5da4810b_fk_preinscri` (`tutor_id`),
  KEY `preinscripcion_postu_vive_con_id_9425090a_fk_preinscri` (`vive_con_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `preinscripcion_postulante`
--

INSERT INTO `preinscripcion_postulante` (`id`, `apellido`, `nombre`, `fecha_nacimiento`, `edad`, `dni`, `genero`, `domicilio`, `madre_id`, `padre_id`, `pg_id`, `preinscripcion_id`, `tutor_id`, `vive_con_id`) VALUES
(3, 'Hruza', 'Jose luis', '2014-09-02', 3, '45789987', 'MASCULINO', 'French 414', 359, 358, 100, NULL, NULL, 360),
(4, 'Yacuzzi', 'Jose', '2014-09-03', 3, '32456789', 'MASCULINO', 'French 414 Presidencia Roque Saenz Peña Chaco', 362, 361, 101, NULL, NULL, 363),
(5, 'Pereziene', 'Jose luis', '2014-09-03', 3, '45789987', 'MASCULINO', 'French 414', 365, 364, 102, NULL, NULL, 366),
(6, 'Pereziene', 'Gerardo', '2014-10-01', 3, '32456789', 'MASCULINO', 'French 414', 368, 367, 103, NULL, NULL, 369),
(7, 'Yacuzzi', 'Jose luis', '2017-06-01', 0, '32456789', 'MASCULINO', 'French 414', 371, 370, NULL, 1, NULL, 372),
(8, 'Yacuzzi', 'Gabriel', '2017-06-01', 0, '45789987', 'MASCULINO', 'French 414', 371, 370, NULL, 2, NULL, 372),
(9, 'Hruza', 'Gabriel CAarlos', '2014-09-02', 3, '45789987', 'MASCULINO', 'French 414 Presidencia Roque Saenz Peña Chaco', 374, 373, 104, NULL, NULL, 375);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_postulanteconfirmado`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_postulanteconfirmado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(8) NOT NULL,
  `postulante_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `preinscripcion_postu_postulante_id_bd53f49f_fk_preinscri` (`postulante_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `preinscripcion_postulanteconfirmado`
--

INSERT INTO `preinscripcion_postulanteconfirmado` (`id`, `dni`, `postulante_id`) VALUES
(1, '32456789', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_postulante_hermanos`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_postulante_hermanos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_postulante_id` int(11) NOT NULL,
  `to_postulante_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `preinscripcion_postulant_from_postulante_id_to_po_36bec22b_uniq` (`from_postulante_id`,`to_postulante_id`),
  KEY `preinscripcion_postu_to_postulante_id_ed788078_fk_preinscri` (`to_postulante_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `preinscripcion_postulante_hermanos`
--

INSERT INTO `preinscripcion_postulante_hermanos` (`id`, `from_postulante_id`, `to_postulante_id`) VALUES
(1, 7, 8),
(2, 8, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_preinscripcion4anios`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_preinscripcion4anios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `nro_de_preinscripto` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_confirmado` date DEFAULT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `responsablequeconfirma` varchar(20) DEFAULT NULL,
  `motivo` longtext NOT NULL,
  `nro_de_sorteo` int(10) unsigned NOT NULL,
  `cicloLectivo_id` int(11) DEFAULT NULL,
  `usuarioqueconfirma_id` int(11) DEFAULT NULL,
  `puntaje` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_de_preinscripto` (`nro_de_preinscripto`),
  KEY `preinscripcion_prein_cicloLectivo_id_3d0da2a0_fk_preinscri` (`cicloLectivo_id`),
  KEY `preinscripcion_prein_usuarioqueconfirma_i_d4b60181_fk_auth_user` (`usuarioqueconfirma_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `preinscripcion_preinscripcion4anios`
--

INSERT INTO `preinscripcion_preinscripcion4anios` (`id`, `fecha`, `hora`, `nro_de_preinscripto`, `estado`, `fecha_confirmado`, `confirmado`, `responsablequeconfirma`, `motivo`, `nro_de_sorteo`, `cicloLectivo_id`, `usuarioqueconfirma_id`, `puntaje`) VALUES
(1, '2017-10-03', '12:40:46', '50429142', 'CONFIRMADO', '2017-12-10', 1, NULL, 'No contesta', 10, 1, NULL, 0),
(2, '2017-10-03', '12:40:46', '03649186', 'PREINSCRIPTO', NULL, 0, NULL, 'No contesta', 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_preinscripciongeneral`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_preinscripciongeneral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `nro_de_preinscripto` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_confirmado` date DEFAULT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `responsablequeconfirma` varchar(20) DEFAULT NULL,
  `motivo` longtext NOT NULL,
  `nivel` varchar(10) NOT NULL,
  `anio` varchar(1) NOT NULL,
  `institucion_anterior` varchar(200) NOT NULL,
  `localidad` varchar(200) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `cubrio_vacante` tinyint(1) NOT NULL,
  `cicloLectivo_id` int(11) DEFAULT NULL,
  `usuarioqueconfirma_id` int(11) DEFAULT NULL,
  `puntaje` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_de_preinscripto` (`nro_de_preinscripto`),
  KEY `preinscripcion_prein_cicloLectivo_id_5a790dec_fk_preinscri` (`cicloLectivo_id`),
  KEY `preinscripcion_prein_usuarioqueconfirma_i_bfe0d098_fk_auth_user` (`usuarioqueconfirma_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Volcado de datos para la tabla `preinscripcion_preinscripciongeneral`
--

INSERT INTO `preinscripcion_preinscripciongeneral` (`id`, `fecha`, `hora`, `nro_de_preinscripto`, `estado`, `fecha_confirmado`, `confirmado`, `responsablequeconfirma`, `motivo`, `nivel`, `anio`, `institucion_anterior`, `localidad`, `provincia`, `telefono`, `cubrio_vacante`, `cicloLectivo_id`, `usuarioqueconfirma_id`, `puntaje`) VALUES
(100, '2017-09-29', '14:59:02', '79225888', 'CONFIRMADO', '2017-09-29', 1, NULL, 'No contesta', 'PRIMARIO', '7', 'Escuela actual', 'RESISTENCIA', 'SANTA FE', '262626262', 0, 1, 6, 0),
(101, '2017-09-29', '16:52:15', '85068458', 'CONFIRMADO', '2017-09-29', 1, NULL, 'No contestaNo contestaNo contestaNo contestaNo contesta', 'INICIAL', '2', 'Escuela actual', 'RESISTENCIA', 'SANTA FE', '262626262', 0, 2, 4, 0),
(102, '2017-10-01', '11:42:41', '39345260', 'CONFIRMADO', '2017-10-01', 1, NULL, 'No contestaNo contestaNo contestaNo contestaNo contesta', 'PRIMARIO', '3', 'Escuela actual', 'RESISTENCIA', 'SANTA FE', '262626262', 0, 1, 6, 23322323),
(103, '2017-10-03', '12:39:01', '28676698', 'PREINSCRIPTO', NULL, 0, NULL, 'No contesta', 'INICIAL', '2', 'Escuela actual', 'RESISTENCIA', 'SANTA FE', '262626262', 0, 1, NULL, 0),
(104, '2017-11-27', '09:15:21', '68111716', 'CONFIRMADO', '2017-11-27', 1, NULL, 'No contesta', 'PRIMARIO', '3', 'Escuela actual', 'RESISTENCIA', 'SANTA FE', '262626262', 0, 1, 6, 345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripcion_responsable`
--

CREATE TABLE IF NOT EXISTS `preinscripcion_responsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(254) NOT NULL,
  `domicilio` varchar(150) NOT NULL,
  `nacionalidad` varchar(150) NOT NULL,
  `telefonoPersonal` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=376 ;

--
-- Volcado de datos para la tabla `preinscripcion_responsable`
--

INSERT INTO `preinscripcion_responsable` (`id`, `apellido`, `nombre`, `dni`, `email`, `domicilio`, `nacionalidad`, `telefonoPersonal`) VALUES
(358, 'Alfonso', 'Javier', '34343434', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36240000000'),
(359, 'Alcides', 'Anabel', '16636214', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36240000000'),
(360, 'Alfonso', 'Javier', '34343434', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36240000000'),
(361, 'Alfonso', 'Javier', '15098890', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36245555555'),
(362, 'Gomez', 'Josefa', '16636216', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36245555555'),
(363, 'Alfonso', 'Javier', '15098890', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '36245555555'),
(364, 'Perez', 'Javier', '34343434', 'alfonso@gmail.com', 'Avda Edison 1430', 'Argentino', '3624556565'),
(365, 'Gomez', 'Anabel', '16636214', 'alfonso@gmail.com', 'Avda Edison 1430', 'Argentino', '3624556565'),
(366, 'Perez', 'Javier', '34343434', 'alfonso@gmail.com', 'Avda Edison 1430', 'Argentino', '3624556565'),
(367, 'Pereziene', 'Javier', '23232323', 'carlos@gmail.com', 'French 414', 'Argentino', '55345345345'),
(368, 'Vastik', 'Marta', '16636214', 'carlos@gmail.com', 'French 414', 'Argentino', '55345345345'),
(369, 'Pereziene', 'Javier', '23232323', 'carlos@gmail.com', 'French 414', 'Argentino', '55345345345'),
(370, 'Alfonso', 'ddfsdf', '34343434', 'cafsdfsdf@sd.com', 'French 414', 'Argentino', '55345345345'),
(371, 'Alcides', 'Marta', '16636214', 'cafsdfsdf@sd.com', 'French 414', 'Argentino', '55345345345'),
(372, 'Alfonso', 'ddfsdf', '34343434', 'cafsdfsdf@sd.com', 'French 414', 'Argentino', '55345345345'),
(373, 'Perez', 'Javier', '23232323', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '362424234234'),
(374, 'Vastik Asdddd', 'Marta', '16636212', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '362424234234'),
(375, 'Perez', 'Javier', '23232323', 'carlos@gmail.com', 'Avda Edison 1430', 'Argentino', '362424234234');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `mes_movimiento`
--
ALTER TABLE `mes_movimiento`
  ADD CONSTRAINT `mes_movimiento_destino_id_694253f5_fk_pg_perfil_id` FOREIGN KEY (`destino_id`) REFERENCES `pg_perfil` (`id`),
  ADD CONSTRAINT `mes_movimiento_emisor_id_6b38e5b6_fk_auth_user_id` FOREIGN KEY (`emisor_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `mes_movimiento_emisor_perfil_id_64224cc6_fk_pg_perfil_id` FOREIGN KEY (`emisor_perfil_id`) REFERENCES `pg_perfil` (`id`),
  ADD CONSTRAINT `mes_movimiento_nota_id_17e21eab_fk_mes_nota_id` FOREIGN KEY (`nota_id`) REFERENCES `mes_nota` (`id`);

--
-- Filtros para la tabla `mes_nota`
--
ALTER TABLE `mes_nota`
  ADD CONSTRAINT `mes_nota_accion_por_id_7127f10b_fk_auth_user_id` FOREIGN KEY (`accion_por_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `mes_nota_emisor_id_9f4303de_fk_auth_user_id` FOREIGN KEY (`emisor_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `mes_nota_emisor_perfil_id_a96fbdb9_fk_pg_perfil_id` FOREIGN KEY (`emisor_perfil_id`) REFERENCES `pg_perfil` (`id`);

--
-- Filtros para la tabla `mes_notai`
--
ALTER TABLE `mes_notai`
  ADD CONSTRAINT `mes_notai_enviar_a_id_07d76c6b_fk_pg_perfil_id` FOREIGN KEY (`enviar_a_id`) REFERENCES `pg_perfil` (`id`),
  ADD CONSTRAINT `mes_notai_nota_ptr_id_a27d9149_fk_mes_nota_id` FOREIGN KEY (`nota_ptr_id`) REFERENCES `mes_nota` (`id`);

--
-- Filtros para la tabla `mes_notap`
--
ALTER TABLE `mes_notap`
  ADD CONSTRAINT `mes_notap_nota_ptr_id_501d0b80_fk_mes_nota_id` FOREIGN KEY (`nota_ptr_id`) REFERENCES `mes_nota` (`id`),
  ADD CONSTRAINT `mes_notap_pg_id_91e2381b_fk_preinscri` FOREIGN KEY (`pg_id`) REFERENCES `preinscripcion_preinscripciongeneral` (`id`);

--
-- Filtros para la tabla `pg_profile`
--
ALTER TABLE `pg_profile`
  ADD CONSTRAINT `pg_profile_user_id_e085e8cc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pg_profile_perfil`
--
ALTER TABLE `pg_profile_perfil`
  ADD CONSTRAINT `pg_profile_perfil_perfil_id_48134110_fk_pg_perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `pg_perfil` (`id`),
  ADD CONSTRAINT `pg_profile_perfil_profile_id_de702c73_fk_pg_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `pg_profile` (`id`);

--
-- Filtros para la tabla `preinscripcion_postulante`
--
ALTER TABLE `preinscripcion_postulante`
  ADD CONSTRAINT `preinscripcion_postu_madre_id_00826143_fk_preinscri` FOREIGN KEY (`madre_id`) REFERENCES `preinscripcion_responsable` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_padre_id_dcc6a93c_fk_preinscri` FOREIGN KEY (`padre_id`) REFERENCES `preinscripcion_responsable` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_pg_id_6c4950e6_fk_preinscri` FOREIGN KEY (`pg_id`) REFERENCES `preinscripcion_preinscripciongeneral` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_preinscripcion_id_3926d06c_fk_preinscri` FOREIGN KEY (`preinscripcion_id`) REFERENCES `preinscripcion_preinscripcion4anios` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_tutor_id_5da4810b_fk_preinscri` FOREIGN KEY (`tutor_id`) REFERENCES `preinscripcion_responsable` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_vive_con_id_9425090a_fk_preinscri` FOREIGN KEY (`vive_con_id`) REFERENCES `preinscripcion_responsable` (`id`);

--
-- Filtros para la tabla `preinscripcion_postulanteconfirmado`
--
ALTER TABLE `preinscripcion_postulanteconfirmado`
  ADD CONSTRAINT `preinscripcion_postu_postulante_id_bd53f49f_fk_preinscri` FOREIGN KEY (`postulante_id`) REFERENCES `preinscripcion_postulante` (`id`);

--
-- Filtros para la tabla `preinscripcion_postulante_hermanos`
--
ALTER TABLE `preinscripcion_postulante_hermanos`
  ADD CONSTRAINT `preinscripcion_postu_from_postulante_id_fbe3c8f8_fk_preinscri` FOREIGN KEY (`from_postulante_id`) REFERENCES `preinscripcion_postulante` (`id`),
  ADD CONSTRAINT `preinscripcion_postu_to_postulante_id_ed788078_fk_preinscri` FOREIGN KEY (`to_postulante_id`) REFERENCES `preinscripcion_postulante` (`id`);

--
-- Filtros para la tabla `preinscripcion_preinscripcion4anios`
--
ALTER TABLE `preinscripcion_preinscripcion4anios`
  ADD CONSTRAINT `preinscripcion_prein_cicloLectivo_id_3d0da2a0_fk_preinscri` FOREIGN KEY (`cicloLectivo_id`) REFERENCES `preinscripcion_ciclolectivo` (`id`),
  ADD CONSTRAINT `preinscripcion_prein_usuarioqueconfirma_i_d4b60181_fk_auth_user` FOREIGN KEY (`usuarioqueconfirma_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `preinscripcion_preinscripciongeneral`
--
ALTER TABLE `preinscripcion_preinscripciongeneral`
  ADD CONSTRAINT `preinscripcion_prein_cicloLectivo_id_5a790dec_fk_preinscri` FOREIGN KEY (`cicloLectivo_id`) REFERENCES `preinscripcion_ciclolectivo` (`id`),
  ADD CONSTRAINT `preinscripcion_prein_usuarioqueconfirma_i_bfe0d098_fk_auth_user` FOREIGN KEY (`usuarioqueconfirma_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
