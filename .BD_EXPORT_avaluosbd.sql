-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2018 a las 17:02:42
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `avaluosbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avaluos`
--

CREATE TABLE `avaluos` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_expediente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_planilla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nombre_avaluo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_informe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referencia_informe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pie_pagina_informe` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encabezado` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT '<p>Hola </p>'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avaluos`
--

INSERT INTO `avaluos` (`id`, `logo`, `num_expediente`, `num_planilla`, `lugar`, `fecha`, `nombre_avaluo`, `ubicacion`, `tipo_informe`, `referencia_informe`, `pie_pagina_informe`, `created_at`, `updated_at`, `encabezado`) VALUES
(6, 'avaluos\\September2018\\XJ5KTdeliAfdRIUGOhWl.png', 'yth', 'fgh', 'fgh', NULL, 'fgh', NULL, 'option1', NULL, '<p>gh</p>', '2018-09-02 22:14:05', '2018-09-02 22:14:05', '<p>gh</p>'),
(7, 'avaluos\\September2018\\GpGiQU1Kw1zLYwf8nA4t.png', 'yth', 'fgh', 'fgh', NULL, 'fgh', NULL, 'option1', NULL, '<p>gh</p>', '2018-09-02 22:14:53', '2018-09-02 22:15:12', '<p>gh</p>'),
(8, 'avaluos\\September2018\\cCDViVzU6IFRKPOFiz5N.png', 'otra', 'fghfgh', 'fgh', '2018-09-06', 'sd', 'sd', 'option1', 'sd', '<p>sd</p>', '2018-09-07 06:56:21', '2018-09-07 06:56:21', '<p>sd</p>'),
(9, 'avaluos\\September2018\\VbpU8znqQfloRM9W5wpV.jpg', '1', '1', '1', '2018-09-09', '1', '1', 'option2', '1', '<p>1</p>', '2018-09-09 22:31:25', '2018-09-09 22:31:25', '<p>1</p>'),
(10, NULL, 'xxxxxxxxxxx', 'xxxxxxxxxxxxxxx', NULL, NULL, 'xxx', 'xxx', 'option1', NULL, '<p>x</p>', '2018-09-10 20:33:55', '2018-09-10 20:33:55', '<p>x</p>'),
(11, NULL, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaa', NULL, NULL, 'aaaa', NULL, 'option1', NULL, '<p>aaa</p>', '2018-09-10 20:35:23', '2018-09-10 20:35:23', '<p>aaaa</p>'),
(12, 'avaluos\\September2018\\6hefwoCqSAkIUoGo1r2N.png', 'zzzzzzzzzzz', 'zzzzz', NULL, NULL, 'zzz', 'zz', 'option1', NULL, '<p>zz</p>', '2018-09-10 20:36:59', '2018-09-10 20:36:59', '<p>zzz</p>'),
(13, NULL, '99999999999', '999999999', '999', NULL, NULL, '9', 'option1', '9', '<p>9</p>', '2018-09-10 21:22:25', '2018-09-10 21:22:25', NULL),
(14, NULL, 'ioioioioioioioioio', 'ioioioioioioioioio', 'ioioioioioioioioio', NULL, 'ioioioioioioioioio', NULL, 'option1', NULL, '<p>ioioioioioioioioio</p>', '2018-09-10 23:02:46', '2018-09-10 23:02:46', '<p>ioioioioioioioioio</p>'),
(15, NULL, 'ioioioioioioioioio', 'ioioioioioioioioio', 'ioioioioioioioioio', NULL, 'ioioioioioioioioio', NULL, 'option1', NULL, '<p>ioioioioioioioioio</p>', '2018-09-10 23:03:27', '2018-09-10 23:03:27', '<p>ioioioioioioioioio</p>'),
(16, NULL, 'ioioioioioioioioio', 'ioioioioioioioioio', 'ioioioioioioioioio', NULL, 'ioioioioioioioioio', NULL, 'option1', NULL, '<p>ioioioioioioioioio</p>', '2018-09-10 23:06:36', '2018-09-10 23:06:36', '<p>ioioioioioioioioio</p>'),
(17, NULL, '2222222222', '222', '22', NULL, '2', '2', 'option1', NULL, '<p>2</p>', '2018-09-11 17:36:22', '2018-09-11 17:36:22', '<p>2</p>'),
(18, NULL, '10', NULL, NULL, NULL, NULL, NULL, 'option1', NULL, NULL, '2018-09-11 22:32:46', '2018-09-11 22:32:46', NULL),
(19, NULL, '..', '..', NULL, NULL, '.', NULL, 'option1', NULL, NULL, '2018-09-12 08:26:46', '2018-09-12 08:26:46', '<p>.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avaluo_contenido`
--

CREATE TABLE `avaluo_contenido` (
  `id` int(10) UNSIGNED NOT NULL,
  `avaluo_id` int(11) DEFAULT NULL,
  `contenido_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avaluo_contenido`
--

INSERT INTO `avaluo_contenido` (`id`, `avaluo_id`, `contenido_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 1, '2018-08-31 23:40:39', '2018-08-31 23:40:39', NULL),
(5, 1, 2, '2018-08-31 23:40:39', '2018-08-31 23:40:39', NULL),
(6, 1, 3, '2018-08-31 23:40:39', '2018-08-31 23:40:39', NULL),
(9, 3, 1, '2018-09-02 20:28:28', '2018-09-02 20:28:28', NULL),
(10, 3, 2, '2018-09-02 20:28:28', '2018-09-02 20:28:28', NULL),
(11, 3, 3, '2018-09-02 20:28:28', '2018-09-02 20:28:28', NULL),
(12, 3, 4, '2018-09-02 20:28:28', '2018-09-02 20:28:28', NULL),
(15, 2, 2, '2018-09-02 20:29:14', '2018-09-02 20:29:14', NULL),
(16, 2, 3, '2018-09-02 20:29:14', '2018-09-02 20:29:14', NULL),
(17, 4, 1, '2018-09-02 20:31:30', '2018-09-02 20:31:30', NULL),
(18, 4, 2, '2018-09-02 20:31:30', '2018-09-02 20:31:30', NULL),
(19, 4, 3, '2018-09-02 20:31:30', '2018-09-02 20:31:30', NULL),
(20, 4, 4, '2018-09-02 20:31:30', '2018-09-02 20:31:30', NULL),
(21, 5, 1, '2018-09-02 21:52:16', '2018-09-02 21:52:16', NULL),
(22, 5, 2, '2018-09-02 21:52:16', '2018-09-02 21:52:16', NULL),
(35, 11, 1, '2018-09-10 20:35:23', '2018-09-10 20:35:23', NULL),
(36, 11, 2, '2018-09-10 20:35:23', '2018-09-10 20:35:23', NULL),
(37, 11, 3, '2018-09-10 20:35:23', '2018-09-10 20:35:23', NULL),
(38, 12, 1, '2018-09-10 20:36:59', '2018-09-10 20:36:59', NULL),
(39, 12, 2, '2018-09-10 20:36:59', '2018-09-10 20:36:59', NULL),
(40, 13, 1, '2018-09-10 21:22:25', '2018-09-10 21:22:25', NULL),
(41, 13, 3, '2018-09-10 21:22:25', '2018-09-10 21:22:25', NULL),
(44, 14, 1, '2018-09-10 23:03:18', '2018-09-10 23:03:18', NULL),
(45, 14, 2, '2018-09-10 23:03:18', '2018-09-10 23:03:18', NULL),
(46, 15, 1, '2018-09-10 23:03:27', '2018-09-10 23:03:27', NULL),
(47, 15, 2, '2018-09-10 23:03:27', '2018-09-10 23:03:27', NULL),
(48, 16, 1, '2018-09-10 23:06:36', '2018-09-10 23:06:36', NULL),
(49, 16, 2, '2018-09-10 23:06:36', '2018-09-10 23:06:36', NULL),
(52, 7, 1, '2018-09-11 19:11:32', '2018-09-11 19:11:32', NULL),
(53, 7, 3, '2018-09-11 19:11:32', '2018-09-11 19:11:32', NULL),
(58, 6, 1, '2018-09-12 08:20:29', '2018-09-12 08:20:29', NULL),
(59, 6, 3, '2018-09-12 08:20:29', '2018-09-12 08:20:29', NULL),
(65, 8, 1, '2018-09-12 08:34:23', '2018-09-12 08:34:23', NULL),
(66, 8, 3, '2018-09-12 08:34:23', '2018-09-12 08:34:23', NULL),
(72, 9, 1, '2018-09-12 08:50:23', '2018-09-12 08:50:23', NULL),
(73, 9, 3, '2018-09-12 08:50:23', '2018-09-12 08:50:23', NULL),
(78, 10, 1, '2018-09-12 08:51:17', '2018-09-12 08:51:17', NULL),
(79, 10, 3, '2018-09-12 08:51:17', '2018-09-12 08:51:17', NULL),
(80, 10, 4, '2018-09-12 08:51:17', '2018-09-12 08:51:17', NULL),
(81, 19, 1, '2018-09-12 18:20:53', '2018-09-12 18:20:53', NULL),
(82, 19, 3, '2018-09-12 18:20:53', '2018-09-12 18:20:53', NULL),
(83, 19, 4, '2018-09-12 18:20:53', '2018-09-12 18:20:53', NULL),
(84, 18, 1, '2018-09-12 18:21:01', '2018-09-12 18:21:01', NULL),
(85, 18, 4, '2018-09-12 18:21:01', '2018-09-12 18:21:01', NULL),
(86, 17, 4, '2018-09-12 18:21:07', '2018-09-12 18:21:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bases`
--

CREATE TABLE `bases` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bases`
--

INSERT INTO `bases` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Valor de Mercado definido en las Normas Internacionales de Valuación 2017', '2018-09-12 17:30:09', '2018-09-12 17:30:09'),
(3, 'Valor de Inversión', '2018-09-12 17:30:18', '2018-09-12 17:30:18'),
(4, 'Valor por Efectividad', '2018-09-12 17:30:24', '2018-09-12 17:30:24'),
(5, 'Valor Razonable definido en las Normas Internacionales de Información Financiera', '2018-09-12 17:30:35', '2018-09-12 17:30:35'),
(6, 'Valor Razonable según los Principios de Contabilidad Generalmente Aceptados', '2018-09-12 17:30:49', '2018-09-12 17:30:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificaciones`
--

CREATE TABLE `certificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avaluo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `certificaciones`
--

INSERT INTO `certificaciones` (`id`, `descripcion`, `created_at`, `updated_at`, `avaluo_id`) VALUES
(1, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera: \r\n\r\n1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos.', '2018-09-12 07:20:03', '2018-09-12 07:20:03', NULL),
(5, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:28:14', '2018-09-12 08:28:14', NULL),
(6, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:31:50', '2018-09-12 08:31:50', 19),
(7, '\'1Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:34:40', '2018-09-12 08:34:40', 8),
(8, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:36:56', '2018-09-12 08:37:02', 18),
(9, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:50:50', '2018-09-12 08:50:56', 9),
(10, '\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\r\n\r\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \r\n\r\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \r\n\r\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \r\n\r\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \r\n\r\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.', '2018-09-12 08:51:29', '2018-09-12 08:51:29', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_seccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_planilla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `nombre_seccion`, `nombre_titulo`, `nombre_planilla`, `id_seccion`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Datos de la solicitud del avalúo', NULL, 'Planilla HJG.IA03', NULL, '2018-08-31 20:18:05', '2018-09-11 03:11:31', NULL, 'solicitudes'),
(2, 'El dictamen valorativo conclusivo convalidado', NULL, 'Planilla HJG.IA04', NULL, '2018-08-31 20:18:45', '2018-09-11 03:12:03', NULL, 'dictamenes'),
(3, 'Certificación profesional jurada', NULL, 'Planilla HJG.IA05', NULL, '2018-08-31 20:19:10', '2018-09-11 03:12:13', NULL, 'certificaciones'),
(4, 'El planteamiento de la valuación', 'Finalidad del Avalúo', 'Planilla HJG.IA06', NULL, '2018-08-31 20:19:30', '2018-09-11 03:12:28', NULL, 'planteamientos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 9),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 9, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(63, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(66, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(67, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(69, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 4),
(70, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(71, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(73, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 4),
(74, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(75, 12, 'estado', 'text', 'Estado', 1, 1, 1, 0, 0, 0, NULL, 2),
(76, 12, 'iso_3166_2', 'hidden', 'Iso 3166 2', 0, 0, 0, 0, 0, 0, NULL, 3),
(84, 13, 'municipio_belongsto_state_relationship', 'relationship', 'Estado', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Estado\",\"table\":\"estados\",\"type\":\"belongsTo\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"estado\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(85, 13, 'municipio', 'text', 'Municipio', 1, 1, 1, 1, 1, 1, NULL, 2),
(86, 13, 'id_estado', 'text', 'Id Estado', 1, 1, 1, 1, 1, 1, NULL, 6),
(87, 14, 'parroquia_belongsto_municipio_relationship', 'relationship', 'municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"belongsTo\",\"column\":\"id_municipio\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(88, 14, 'parroquia', 'text', 'Parroquia', 1, 1, 1, 1, 1, 1, NULL, 2),
(89, 14, 'id_municipio', 'text', 'Id Municipio', 0, 1, 1, 1, 1, 1, NULL, 6),
(90, 1, 'user_belongsto_state_relationship', 'relationship', 'Estados', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Estado\",\"table\":\"estados\",\"type\":\"belongsTo\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"estado\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(91, 1, 'user_belongsto_municipio_relationship', 'relationship', 'Municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"belongsTo\",\"column\":\"id_municipio\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(92, 1, 'user_belongsto_parroquia_relationship', 'relationship', 'Parroquias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Parroquia\",\"table\":\"parroquias\",\"type\":\"belongsTo\",\"column\":\"id_parroquia\",\"key\":\"id\",\"label\":\"parroquia\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(93, 1, 'id_estado', 'text', 'Id Estado', 0, 1, 1, 1, 1, 1, NULL, 11),
(94, 1, 'id_municipio', 'text', 'Id Municipio', 0, 1, 1, 1, 1, 1, NULL, 12),
(95, 1, 'id_parroquia', 'text', 'Id Parroquia', 0, 1, 1, 1, 1, 1, NULL, 13),
(107, 12, 'state_hasmany_municipio_relationship', 'relationship', 'municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"hasMany\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(108, 13, 'municipio_hasmany_parroquia_relationship', 'relationship', 'parroquias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Parroquia\",\"table\":\"parroquias\",\"type\":\"hasMany\",\"column\":\"id_municipio\",\"key\":\"id_municipio\",\"label\":\"parroquia\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(109, 12, 'state_hasmany_propietario_relationship', 'relationship', 'propietarios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Propietario\",\"table\":\"propietarios\",\"type\":\"hasMany\",\"column\":\"id_estado\",\"key\":\"nombre\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(110, 12, 'state_hasmany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"hasMany\",\"column\":\"id_estado\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(128, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(129, 20, 'estado', 'text', 'Estado', 1, 1, 1, 1, 1, 1, NULL, 2),
(130, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(131, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(132, 20, 'iso_3166_2', 'text', 'Iso 3166 2', 0, 1, 1, 1, 1, 1, NULL, 5),
(133, 20, 'estado_hasmany_municipio_relationship', 'relationship', 'municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"hasMany\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 6),
(134, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(135, 21, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, NULL, 2),
(136, 21, 'num_expediente', 'text', 'Num Expediente', 0, 1, 1, 1, 1, 1, NULL, 3),
(137, 21, 'num_planilla', 'text', 'Num Planilla', 0, 1, 1, 1, 1, 1, NULL, 4),
(138, 21, 'lugar', 'text', 'Lugar', 0, 1, 1, 1, 1, 1, NULL, 5),
(139, 21, 'fecha', 'time', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 6),
(140, 21, 'nombre_avaluo', 'text_area', 'Nombre Avaluo', 0, 1, 1, 1, 1, 1, NULL, 7),
(141, 21, 'ubicacion', 'text_area', 'Ubicacion', 0, 1, 1, 1, 1, 1, NULL, 8),
(142, 21, 'tipo_informe', 'select_dropdown', 'Tipo Informe', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Narrativo sistematizado\",\"option2\":\"Narrativo\"}}', 9),
(143, 21, 'referencia_informe', 'text', 'Referencia Informe', 0, 1, 1, 1, 1, 1, NULL, 10),
(144, 21, 'pie_pagina_informe', 'text', 'Pie Pagina Informe', 0, 1, 1, 1, 1, 1, NULL, 11),
(145, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(146, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(147, 21, 'encabezado', 'rich_text_box', 'Encabezado', 0, 1, 1, 1, 1, 1, '{\"default\":\"Default {{num_expediente}}\"}', 14),
(148, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(149, 22, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, NULL, 2),
(150, 22, 'num_expediente', 'text', 'Num Expediente', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 3),
(151, 22, 'num_planilla', 'text', 'Num Planilla', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 4),
(152, 22, 'lugar', 'text', 'Lugar', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 5),
(153, 22, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 6),
(154, 22, 'nombre_avaluo', 'text_area', 'Nombre Avaluo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(155, 22, 'ubicacion', 'text_area', 'Ubicacion', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 10),
(156, 22, 'tipo_informe', 'select_dropdown', 'Tipo Informe', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Narrativo sistematizado\",\"option2\":\"Narrativo\"},\"display\":{\"width\":\"6\"}}', 8),
(157, 22, 'referencia_informe', 'text', 'Referencia Informe', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(158, 22, 'pie_pagina_informe', 'rich_text_box', 'Pie Pagina Informe', 0, 1, 1, 1, 1, 1, '{\"default\":\"Default asdsd\",\"display\":{\"height\":\"300\"}}', 11),
(159, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 13),
(160, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(161, 22, 'encabezado', 'rich_text_box', 'Encabezado', 0, 1, 1, 1, 1, 1, '{\"default\":\"<p>Default asdsd {{ __(\'num_expediente\') }}</p>\"}', 12),
(162, 24, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(163, 24, 'nombre_seccion', 'text', 'Nombre Sección', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 2),
(164, 24, 'nombre_titulo', 'text', 'Nombre Título', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 3),
(165, 24, 'nombre_planilla', 'text', 'Nombre Planilla', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 4),
(166, 24, 'id_seccion', 'hidden', 'Id Seccion', 0, 1, 1, 1, 1, 1, NULL, 5),
(172, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(173, 27, 'id_informe_avaluos', 'text', 'Id Informe Avaluos', 0, 1, 1, 1, 1, 1, NULL, 2),
(174, 27, 'id_informe_contenidos', 'text', 'Id Informe Contenidos', 0, 1, 1, 1, 1, 1, NULL, 3),
(175, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(176, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(177, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 8),
(178, 27, 'avaluos_contenido_belongsto_informe_avaluo_relationship', 'relationship', 'informe_avaluos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\InformeAvaluo\",\"table\":\"informe_avaluos\",\"type\":\"belongsTo\",\"column\":\"id_informe_avaluos\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"avaluos_contenidos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(179, 27, 'avaluos_contenido_belongsto_informe_contenido_relationship', 'relationship', 'informe_contenidos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\InformeContenido\",\"table\":\"informe_contenidos\",\"type\":\"belongsTo\",\"column\":\"id_informe_contenidos\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"avaluos_contenidos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(180, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(181, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(182, 24, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 8),
(183, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(184, 29, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, NULL, 2),
(185, 29, 'num_expediente', 'text', 'Número Expediente', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 3),
(186, 29, 'num_planilla', 'text', 'Número Planilla', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 4),
(187, 29, 'lugar', 'text', 'Lugar', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 5),
(188, 29, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 6),
(189, 29, 'nombre_avaluo', 'text_area', 'Nombre Avaluo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(190, 29, 'ubicacion', 'text_area', 'Ubicacion', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(191, 29, 'tipo_informe', 'select_dropdown', 'Tipo Informe', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Narrativo sistematizado\",\"option2\":\"Narrativo\"},\"display\":{\"width\":\"6\"}}', 10),
(192, 29, 'referencia_informe', 'text', 'Referencia Informe', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(193, 29, 'pie_pagina_informe', 'rich_text_box', 'Pie Pagina Informe', 0, 1, 1, 1, 1, 1, NULL, 12),
(194, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 13),
(195, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(196, 29, 'encabezado', 'rich_text_box', 'Encabezado', 0, 1, 1, 1, 1, 1, NULL, 11),
(197, 30, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(198, 30, 'nombre_seccion', 'text', 'Nombre Seccion', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 2),
(199, 30, 'nombre_titulo', 'text', 'Nombre Titulo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 3),
(200, 30, 'nombre_planilla', 'text', 'Nombre Planilla', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 4),
(201, 30, 'id_seccion', 'hidden', 'Id Seccion', 0, 0, 0, 0, 0, 0, NULL, 5),
(202, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(203, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(204, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 8),
(227, 34, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(228, 34, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\"}}', 2),
(229, 34, 'cedula', 'number', 'Cédula', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"unique:solicitantes,cedula\"}}', 3),
(230, 34, 'rif', 'number', 'Rif', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"unique:solicitantes,rif\"}}', 4),
(231, 34, 'domicilio_fiscal', 'text_area', 'Domicilio Fiscal', 0, 1, 1, 1, 1, 1, NULL, 7),
(232, 34, 'codigo_postal', 'text', 'Codigo Postal', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(233, 34, 'zona_postal', 'text', 'Zona Postal', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(234, 34, 'telefono_fijo', 'number', 'Teléfono Fijo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(235, 34, 'celular', 'number', 'Celular', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(236, 34, 'celular2', 'number', 'Otro Celular', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 10),
(237, 34, 'fax', 'number', 'Fax', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 11),
(238, 34, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"email|unique:solicitantes,email\"},\"display\":{\"width\":\"6\"}}', 12),
(239, 34, 'sitio_web', 'text', 'Sitio Web', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(241, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 21),
(242, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 20),
(246, 35, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(247, 35, 'requerimiento_informe', 'text_area', 'Lo que requiere valuarse', 0, 1, 1, 1, 1, 1, NULL, 2),
(248, 35, 'finalidad_informe', 'text', 'IA requerido para', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 3),
(249, 35, 'necesidad_informe', 'text', 'IA necesario por', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 4),
(250, 35, 'pais', 'text', 'País', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":3}}', 5),
(251, 35, 'estado', 'text', 'Estado', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":3}}', 6),
(252, 35, 'ciudad', 'text', 'Ciudad', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":2}}', 7),
(253, 35, 'municipio', 'text', 'Municipio', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":2}}', 8),
(254, 35, 'parroquia', 'text', 'Parroquia', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":2}}', 9),
(255, 35, 'urbanizacion', 'text', 'Urbanización', 0, 0, 1, 1, 1, 1, NULL, 10),
(256, 35, 'calle', 'text', 'Calle', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 11),
(257, 35, 'edificio', 'text', 'Edificio', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 12),
(258, 35, 'piso', 'text', 'Piso', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 13),
(259, 35, 'local', 'text', 'Local', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 14),
(260, 35, 'parcela', 'text', 'Parcela', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 15),
(261, 35, 'catastro', 'text', 'Catastro', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":4}}', 16),
(262, 35, 'uso_potencial', 'text_area', 'Uso Potencial', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 17),
(263, 35, 'uso_factico', 'text_area', 'Uso Fáctico', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 18),
(264, 35, 'orden_trabajo', 'text', 'Orden de Trabajo', 0, 0, 1, 1, 1, 1, NULL, 19),
(265, 35, 'periodo_entrevistas_inicio', 'date', 'Periodo Entrevistas Del', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 20),
(266, 35, 'periodo_entrevistas_fin', 'date', 'Periodo Entrevistas Hasta', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 21),
(267, 35, 'periodo_revision_inicio', 'date', 'Periodo Revisión Del', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 22),
(268, 35, 'periodo_revision_fin', 'date', 'Periodo Revisión Hasta', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 23),
(269, 35, 'periodo_inspeccion_inicio', 'date', 'Periodo Inspección Del', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 24),
(270, 35, 'periodo_inspeccion_fin', 'date', 'Periodo Inspección Hasta', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 25),
(271, 35, 'moneda', 'select_dropdown', 'Moneda', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"default\":\"option1\",\"options\":{\"option1\":\"Bs. Bolívares (Venezuela) equivalente a USD Euros\",\"option2\":\"USD Euros\",\"option3\":\"Otra moneda\"}}', 26),
(272, 35, 'solicitante_id', 'hidden', 'Solicitado por', 0, 1, 1, 1, 1, 1, NULL, 27),
(274, 35, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 29),
(275, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 30),
(276, 34, 'representante', 'text', 'Representado por', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\"}}', 14),
(277, 34, 'estatus', 'select_dropdown', 'Estatus del Representante', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":12},\"default\":\"option1\",\"options\":{\"option1\":\"Asesor Legal\",\"option2\":\"Otro\"}}', 15),
(278, 34, 'rep_telefono_fijo', 'number', 'Representante Telefono Fijo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 16),
(279, 34, 'rep_celular', 'number', 'Representante Celular', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 17),
(280, 34, 'rep_celular2', 'number', 'Representante Otro Celular', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 18),
(281, 34, 'rep_email', 'text', 'Representante Email', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable|email\"},\"display\":{\"width\":\"6\"}}', 19),
(284, 35, 'avaluo_id', 'hidden', 'Avaluo', 0, 1, 1, 1, 1, 1, NULL, 30),
(285, 30, 'slug', 'text', 'Nombre de la tabla correspondiente en BD.', 0, 1, 1, 1, 1, 1, NULL, 9),
(286, 36, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(287, 36, 'descripcion', 'text_area', 'Descripción', 0, 1, 1, 1, 1, 1, '{\"default\":\"\'Quien suscribe y firma el presente Informe de Avalúo, en su condición de Valuador Responsable del trabajo, certifica, bajo fe de Juramento y confidencialidad institucional, que para la formulación del dictamen valorativo conclusivo y el proceso que lo genera:\\n\\n 1. Está en posesión de la titulación y capacidad profesional requerida para efectuar los trabajos de valuación encomendados por el solicitante de los mismos. \\n\\n 2. Goza de independencia respecto al solicitante del presente Informe de Avalúo y empresas relacionadas, no ostentando cargos directivos, ni siendo empleado, ni existiendo vinculación financiera o patrimonial, como tampoco vínculos de consanguinidad o afinidad hasta segundo grado con el empresario, directivos o administradores de dicha entidad. \\n\\n 3.Ha cumplido con la normativa aplicable para la emisión del informe requerido por el solicitante, según su finalidad, razón que lo motiva y empleo previsto. \\n\\n 4.\'La justificación de los supuestos razonables aplicados en las valoraciones practicadas aparece reflejada en el Informe de Avalúo suscrito, en el entendido que las asunciones e hipótesis pertinentes se consideran siempre de conformidad con las Normas de Regulación vigentes y con los principios generales aplicados en la elaboración de valoraciones, informes y respectivos apoyos documentales incorporados como anexos en los casos convenientes y necesarios, de acuerdo con la finalidad, razón y uso del IA. \\n\\n 5. Para sus concreciones no se juzgan los aspectos legales y administrativos inherentes al empleo de los bienes valorados, ni se emite opinión sobre aspectos para los cuales fueren indispensables estudios y/o peritajes técnicos ad hoc, según requerimientos y convenimientos expresos y formales, por escrito, de la(s) persona(s) interesada(s) y autorizadas para la respectiva solicitud; tampoco, se garantiza la factibilidad de alcanzar propósitos extraordinarios a los planteados específicamente para el Estudio de Valoración efectuado.\",\"display\":{\"rows\":\"20\"}}', 2),
(288, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(289, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(290, 36, 'avaluo_id', 'hidden', 'Avaluo Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(291, 38, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(292, 38, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(293, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 3),
(294, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(295, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(296, 39, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(297, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 3),
(298, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(299, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(300, 40, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(301, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 3),
(302, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(303, 41, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(304, 41, 'finalidad_avaluo', 'text_area', 'Finalidad del Avalúo', 0, 1, 1, 1, 1, 1, '{\"default\":\"Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla. \"}', 2),
(305, 41, 'razon_avaluo', 'text', 'Razón del Avalúo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 3),
(306, 41, 'usuarios_del_ia', 'text', 'Principales usuarios a quienes el IA está dirigido', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 4),
(307, 41, 'organizacion', 'text_area', 'Organización de los bienes atinentes a la valuación como unidades orgánicas productivas (UOP) y premisas generales para el avalúo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6,\"rows\":\"21\"}}', 5),
(308, 41, 'alcance', 'text', 'Alcance y restricciones del avalúo', 0, 1, 1, 1, 1, 1, '{\"default\":\"Alcance suficiente para satisfacer la finalidad del avalúo. \",\"display\":{\"width\":6}}', 6),
(309, 41, 'formulacion', 'text_area', 'Formulación de la solución valuatoria', 0, 1, 1, 1, 1, 1, '{\"default\":\"1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \\n\\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.\",\"display\":{\"width\":6}}', 7),
(310, 41, 'protocolo_valuatorio', 'text_area', 'Protocolo valuatorio procedimental', 0, 1, 1, 1, 1, 1, '{\"default\":\"Paso 1: Definición de la valuación a resolver. \\nPaso 2: Planificación del trabajo de valuación a ejecutar. \\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \\nPaso 7: Edición y entrega del Informe de Valuación. \\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.\",\"display\":{\"width\":6,\"rows\":\"10\"}}', 8),
(311, 41, 'avaluo_id', 'hidden', 'Avaluo Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(312, 41, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 10),
(313, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(314, 41, 'planteamiento_belongstomany_norma_relationship', 'relationship', 'Normas Aplicadas para el avalúo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Norma\",\"table\":\"normas\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"planteamiento_norma\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(315, 41, 'planteamiento_belongstomany_basis_relationship', 'relationship', 'Bases de Valor pertinentes para el avalúo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Base\",\"table\":\"bases\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"planteamiento_base\",\"pivot\":\"1\",\"taggable\":\"on\"}', 13),
(316, 41, 'planteamiento_belongstomany_enfoque_relationship', 'relationship', 'Enfoque(s) y Método(s) Aplicado(s) para el avalúo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Enfoque\",\"table\":\"enfoques\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"planteamiento_enfoque\",\"pivot\":\"1\",\"taggable\":\"on\"}', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UserController', 'Este Bread de User tiene una vista y un controllador custom.', 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 17:29:11', '2018-08-21 07:23:09'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(7, 'ciudad', 'ciudad', 'Ciudad', 'Ciudades', NULL, 'App\\Ciudad', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"nombre\",\"order_display_column\":\"nombre\"}', '2018-08-14 01:21:30', '2018-08-14 01:30:59'),
(9, 'ciudades', 'ciudades', 'Ciudade', 'Ciudades', NULL, 'App\\Ciudad', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(12, 'states', 'states', 'Estado', 'Estados', NULL, 'App\\State', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"estado\",\"order_display_column\":\"estado\"}', '2018-08-14 03:18:03', '2018-08-14 05:25:08'),
(13, 'municipios', 'municipios', 'Municipio', 'Municipios', NULL, 'App\\Municipio', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"municipio\"}', '2018-08-14 04:33:28', '2018-08-14 07:31:03'),
(14, 'parroquias', 'parroquias', 'Parroquia', 'Parroquias', NULL, 'App\\Parroquia', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-14 05:04:41', '2018-08-14 07:37:32'),
(20, 'estados', 'estados', 'Estado', 'Estados', NULL, 'App\\Estado', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(21, 'informe_avaluo', 'informe-avaluo', 'Informe Avaluo', 'Informe Avaluo', NULL, 'App\\InformeAvaluo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-31 19:10:53', '2018-08-31 19:12:18'),
(22, 'informe_avaluos', 'informe-avaluos', 'Informe Avaluo', 'Informe Avaluos', NULL, '\\App\\InformeAvaluo', NULL, '\\App\\Http\\Controllers\\Voyager\\InformeAvaluoController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-31 19:22:58', '2018-09-01 19:07:10'),
(24, 'informe_contenidos', 'informe-contenidos', 'Informe Contenido', 'Informe Contenidos', NULL, '\\App\\InformeContenido', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-31 20:15:21', '2018-09-01 19:07:24'),
(27, 'avaluos_contenidos', 'avaluos-contenidos', 'Avaluos Contenido', 'Avaluos Contenidos', NULL, 'App\\AvaluosContenido', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(29, 'avaluos', 'avaluos', 'Avaluo', 'Avaluos', NULL, 'App\\Avaluo', NULL, '\\App\\Http\\Controllers\\Voyager\\AvaluoController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-02 20:06:11', '2018-09-02 20:15:08'),
(30, 'contenidos', 'contenidos', 'Contenido', 'Contenidos', NULL, 'App\\Contenido', NULL, '\\App\\Http\\Controllers\\Voyager\\ContenidoController', 'PENDIENTE, los id son los que tienen el orden de las relaciones en /App/Avaluo.', 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-02 20:12:42', '2018-09-11 19:07:35'),
(34, 'solicitantes', 'solicitantes', 'Solicitante', 'Solicitantes', NULL, 'App\\Solicitante', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(35, 'solicitudes', 'solicitudes', 'Solicitud', 'Solicitudes', NULL, 'App\\Solicitude', NULL, '\\App\\Http\\Controllers\\Voyager\\SolicitudController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 18:24:50', '2018-09-04 19:10:40'),
(36, 'certificaciones', 'certificaciones', 'Certificación', 'Certificaciones', NULL, 'App\\Certificacione', NULL, '\\App\\Http\\Controllers\\Voyager\\CertificacionController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 02:49:21', '2018-09-12 04:08:10'),
(38, 'bases', 'bases', 'Base', 'Bases', NULL, 'App\\Base', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(39, 'normas', 'normas', 'Norma', 'Normas', NULL, 'App\\Norma', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(40, 'enfoques', 'enfoques', 'Enfoque', 'Enfoques', NULL, 'App\\Enfoque', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(41, 'planteamientos', 'planteamientos', 'Planteamiento', 'Planteamientos', NULL, 'App\\Planteamiento', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 17:02:21', '2018-09-12 18:49:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfoques`
--

CREATE TABLE `enfoques` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `enfoques`
--

INSERT INTO `enfoques` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Enfoque de comparación de los precios', '2018-09-12 17:34:08', '2018-09-12 17:37:07'),
(2, 'Enfoque del costo', '2018-09-12 17:37:43', '2018-09-12 17:37:43'),
(3, 'Enfoque de la renta', '2018-09-12 17:37:50', '2018-09-12 17:37:50'),
(4, 'Enfoque de la conjunción valorativa ECV', '2018-09-12 17:37:59', '2018-09-12 17:37:59'),
(5, 'Método Residual Estático', '2018-09-12 17:38:06', '2018-09-12 17:38:06'),
(6, 'Método Residual Dinámico', '2018-09-12 17:38:17', '2018-09-12 17:38:17'),
(7, 'Método Econométrico del Valor Estándar Ajustado MEVEA', '2018-09-12 17:38:27', '2018-09-12 17:38:27'),
(8, 'Método Valorativo Matricial MVM', '2018-09-12 17:38:37', '2018-09-12 17:38:37'),
(9, 'Método de las Proporcionalidades de los Precios MPP', '2018-09-12 17:38:47', '2018-09-12 17:38:47'),
(10, 'Método de las Rentabilidades Comparativas MRC', '2018-09-12 17:38:55', '2018-09-12 17:38:55'),
(11, 'Método del Valor de Avalúo en Riesgo', '2018-09-12 17:39:06', '2018-09-12 17:39:06'),
(12, 'Método Multicriterio AHP', '2018-09-12 17:39:18', '2018-09-12 17:39:18'),
(13, 'PM', '2018-09-12 17:39:26', '2018-09-12 17:39:26'),
(14, 'CRITIC', '2018-09-12 17:39:33', '2018-09-12 17:39:33'),
(15, 'Método de Valoración por Efectividad', '2018-09-12 17:39:39', '2018-09-12 17:39:39'),
(16, 'Método del Valor en Riesgo en el Avalúo VaRA', '2018-09-12 17:39:47', '2018-09-12 17:39:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iso_3166_2` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`, `created_at`, `updated_at`, `iso_3166_2`) VALUES
(1, 'Amazonas', NULL, NULL, 'VE-X'),
(2, 'Anzoátegui', NULL, NULL, 'VE-B'),
(3, 'Apure', NULL, NULL, 'VE-C'),
(4, 'Aragua', NULL, NULL, 'VE-D'),
(5, 'Barinas', NULL, NULL, 'VE-E'),
(6, 'Bolívar', NULL, NULL, 'VE-F'),
(7, 'Carabobo', NULL, NULL, 'VE-G'),
(8, 'Cojedes', NULL, NULL, 'VE-H'),
(9, 'Delta Amacuro', NULL, NULL, 'VE-Y'),
(10, 'Falcón', NULL, NULL, 'VE-I'),
(11, 'Guárico', NULL, NULL, 'VE-J'),
(12, 'Lara', NULL, NULL, 'VE-K'),
(13, 'Mérida', NULL, NULL, 'VE-L'),
(14, 'Miranda', NULL, NULL, 'VE-M'),
(15, 'Monagas', NULL, NULL, 'VE-N'),
(16, 'Nueva Esparta', NULL, NULL, 'VE-O'),
(17, 'Portuguesa', NULL, NULL, 'VE-P'),
(18, 'Sucre', NULL, NULL, 'VE-R'),
(19, 'Táchira', NULL, NULL, 'VE-S'),
(20, 'Trujillo', NULL, NULL, 'VE-T'),
(21, 'Vargas', NULL, NULL, 'VE-W'),
(22, 'Yaracuy', NULL, NULL, 'VE-U'),
(23, 'Zulia', NULL, NULL, 'VE-V'),
(24, 'Distrito Capital', NULL, NULL, 'VE-A'),
(25, 'Dependencias Federales', NULL, NULL, 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-13 17:29:11', '2018-08-13 17:29:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Panel de Control', '', '_self', 'voyager-home', '#000000', NULL, 1, '2018-08-13 17:29:11', '2018-08-22 00:58:01', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-13 17:29:11', '2018-09-05 21:40:24', 'voyager.media.index', NULL),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 3, '2018-08-13 17:29:11', '2018-09-05 21:40:24', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2018-08-13 17:29:11', '2018-09-05 21:40:24', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 6, '2018-08-13 17:29:11', '2018-09-12 18:51:58', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-08-13 17:29:11', '2018-08-31 20:20:49', 'voyager.menus.index', NULL),
(7, 1, 'Base de Datos', '', '_self', 'voyager-data', '#000000', 5, 2, '2018-08-13 17:29:11', '2018-08-31 20:20:51', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-08-13 17:29:11', '2018-08-31 20:20:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-08-13 17:29:11', '2018-08-31 20:20:51', 'voyager.bread.index', NULL),
(10, 1, 'Configuración del Sitio', '', '_self', 'voyager-settings', '#000000', 22, 1, '2018-08-13 17:29:11', '2018-08-21 16:58:36', 'voyager.settings.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-08-13 17:29:14', '2018-08-31 20:20:51', 'voyager.hooks', NULL),
(22, 1, 'Configuración', '', '_self', 'voyager-settings', '#000000', NULL, 7, '2018-08-14 01:41:36', '2018-09-12 18:51:58', NULL, ''),
(23, 1, 'Estados', '', '_self', NULL, '#000000', 26, 1, '2018-08-14 03:18:04', '2018-08-21 16:34:45', 'voyager.states.index', 'null'),
(24, 1, 'Municipios', '', '_self', NULL, NULL, 26, 2, '2018-08-14 04:33:28', '2018-08-21 16:34:46', 'voyager.municipios.index', NULL),
(25, 1, 'Parroquias', '', '_self', NULL, NULL, 26, 3, '2018-08-14 05:04:41', '2018-08-21 16:34:47', 'voyager.parroquias.index', NULL),
(28, 1, 'Municipios', '/admin/municipios', '_self', NULL, '#000000', 22, 3, '2018-08-21 16:43:33', '2018-08-21 16:48:46', NULL, ''),
(29, 1, 'Parroquias', '/admin/parroquias', '_self', NULL, '#000000', 22, 4, '2018-08-21 16:43:48', '2018-08-21 16:48:46', NULL, ''),
(30, 1, 'Avaluos', '', '_self', 'voyager-documentation', '#ffff00', NULL, 2, '2018-08-22 00:57:04', '2018-09-12 18:58:48', NULL, ''),
(33, 1, 'Estados', '', '_self', NULL, NULL, 22, 2, '2018-08-31 00:34:28', '2018-08-31 00:42:26', 'voyager.estados.index', NULL),
(39, 1, 'Avaluos', '', '_self', 'voyager-file-text', '#0080ff', 30, 1, '2018-09-02 20:06:11', '2018-09-09 22:40:20', 'voyager.avaluos.index', 'null'),
(40, 1, 'Contenidos del Avaluo', '', '_self', 'voyager-list', '#000000', 30, 3, '2018-09-02 20:12:42', '2018-09-12 16:46:35', 'voyager.contenidos.index', 'null'),
(43, 1, 'Clientes', '', '_self', 'voyager-people', '#000000', 30, 2, '2018-09-04 17:48:17', '2018-09-12 16:46:35', 'voyager.solicitantes.index', 'null'),
(44, 1, '1. Solicitudes', '', '_self', 'voyager-pen', '#000000', 30, 4, '2018-09-04 18:24:51', '2018-09-12 16:47:04', 'voyager.solicitudes.index', 'null'),
(45, 1, '3. Certificaciones', '', '_self', 'voyager-pen', '#000000', 30, 5, '2018-09-12 02:49:22', '2018-09-12 18:59:47', 'voyager.certificaciones.index', 'null'),
(46, 1, '4.1. Bases', '', '_self', NULL, '#000000', 30, 7, '2018-09-12 16:43:57', '2018-09-12 18:52:18', 'voyager.bases.index', 'null'),
(47, 1, '4.2. Normas', '', '_self', NULL, '#000000', 30, 8, '2018-09-12 16:44:38', '2018-09-12 18:52:27', 'voyager.normas.index', 'null'),
(48, 1, '4.3. Enfoques', '', '_self', NULL, '#000000', 30, 9, '2018-09-12 16:45:08', '2018-09-12 18:52:37', 'voyager.enfoques.index', 'null'),
(49, 1, '4. Planteamientos', '', '_self', 'voyager-pen', '#000000', 30, 6, '2018-09-12 17:02:21', '2018-09-12 18:59:35', 'voyager.planteamientos.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2018_09_01_170110_create_avaluos_contenidos_table', 0),
(28, '2018_09_01_170110_create_data_rows_table', 0),
(29, '2018_09_01_170110_create_data_types_table', 0),
(30, '2018_09_01_170110_create_estados_table', 0),
(31, '2018_09_01_170110_create_informe_avaluos_table', 0),
(32, '2018_09_01_170110_create_informe_contenidos_table', 0),
(33, '2018_09_01_170110_create_menu_items_table', 0),
(34, '2018_09_01_170110_create_menus_table', 0),
(35, '2018_09_01_170110_create_municipios_table', 0),
(36, '2018_09_01_170110_create_pages_table', 0),
(37, '2018_09_01_170110_create_parroquias_table', 0),
(38, '2018_09_01_170110_create_password_resets_table', 0),
(39, '2018_09_01_170110_create_permission_role_table', 0),
(40, '2018_09_01_170110_create_permissions_table', 0),
(41, '2018_09_01_170110_create_roles_table', 0),
(42, '2018_09_01_170110_create_settings_table', 0),
(43, '2018_09_01_170110_create_translations_table', 0),
(44, '2018_09_01_170110_create_user_roles_table', 0),
(45, '2018_09_01_170110_create_users_table', 0),
(46, '2018_09_01_170112_add_foreign_keys_to_data_rows_table', 0),
(47, '2018_09_01_170112_add_foreign_keys_to_menu_items_table', 0),
(48, '2018_09_01_170112_add_foreign_keys_to_municipios_table', 0),
(49, '2018_09_01_170112_add_foreign_keys_to_parroquias_table', 0),
(50, '2018_09_01_170112_add_foreign_keys_to_permission_role_table', 0),
(51, '2018_09_01_170112_add_foreign_keys_to_user_roles_table', 0),
(52, '2018_09_01_170112_add_foreign_keys_to_users_table', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`, `created_at`, `updated_at`, `id_estado`) VALUES
(1, 'Alto Orinoco', NULL, NULL, 1),
(2, 'Atabapo', NULL, NULL, 1),
(3, 'Atures', NULL, NULL, 1),
(4, 'Autana', NULL, NULL, 1),
(5, 'Manapiare', NULL, NULL, 1),
(6, 'Maroa', NULL, NULL, 1),
(7, 'Río Negro', NULL, NULL, 1),
(8, 'Anaco', NULL, NULL, 2),
(9, 'Aragua', NULL, NULL, 2),
(10, 'Manuel Ezequiel Bruzual', NULL, NULL, 2),
(11, 'Diego Bautista Urbaneja', NULL, NULL, 2),
(12, 'Fernando Peñalver', NULL, NULL, 2),
(13, 'Francisco Del Carmen Carvajal', NULL, NULL, 2),
(14, 'General Sir Arthur McGregor', NULL, NULL, 2),
(15, 'Guanta', NULL, NULL, 2),
(16, 'Independencia', NULL, NULL, 2),
(17, 'José Gregorio Monagas', NULL, NULL, 2),
(18, 'Juan Antonio Sotillo', NULL, NULL, 2),
(19, 'Juan Manuel Cajigal', NULL, NULL, 2),
(20, 'Libertad', NULL, NULL, 2),
(21, 'Francisco de Miranda', NULL, NULL, 2),
(22, 'Pedro María Freites', NULL, NULL, 2),
(23, 'Píritu', NULL, NULL, 2),
(24, 'San José de Guanipa', NULL, NULL, 2),
(25, 'San Juan de Capistrano', NULL, NULL, 2),
(26, 'Santa Ana', NULL, NULL, 2),
(27, 'Simón Bolívar', NULL, NULL, 2),
(28, 'Simón Rodríguez', NULL, NULL, 2),
(29, 'Achaguas', NULL, NULL, 3),
(30, 'Biruaca', NULL, NULL, 3),
(31, 'Muñóz', NULL, NULL, 3),
(32, 'Páez', NULL, NULL, 3),
(33, 'Pedro Camejo', NULL, NULL, 3),
(34, 'Rómulo Gallegos', NULL, NULL, 3),
(35, 'San Fernando', NULL, NULL, 3),
(36, 'Atanasio Girardot', NULL, NULL, 4),
(37, 'Bolívar', NULL, NULL, 4),
(38, 'Camatagua', NULL, NULL, 4),
(39, 'Francisco Linares Alcántara', NULL, NULL, 4),
(40, 'José Ángel Lamas', NULL, NULL, 4),
(41, 'José Félix Ribas', NULL, NULL, 4),
(42, 'José Rafael Revenga', NULL, NULL, 4),
(43, 'Libertador', NULL, NULL, 4),
(44, 'Mario Briceño Iragorry', NULL, NULL, 4),
(45, 'Ocumare de la Costa de Oro', NULL, NULL, 4),
(46, 'San Casimiro', NULL, NULL, 4),
(47, 'San Sebastián', NULL, NULL, 4),
(48, 'Santiago Mariño', NULL, NULL, 4),
(49, 'Santos Michelena', NULL, NULL, 4),
(50, 'Sucre', NULL, NULL, 4),
(51, 'Tovar', NULL, NULL, 4),
(52, 'Urdaneta', NULL, NULL, 4),
(53, 'Zamora', NULL, NULL, 4),
(54, 'Alberto Arvelo Torrealba', NULL, NULL, 5),
(55, 'Andrés Eloy Blanco', NULL, NULL, 5),
(56, 'Antonio José de Sucre', NULL, NULL, 5),
(57, 'Arismendi', NULL, NULL, 5),
(58, 'Barinas', NULL, NULL, 5),
(59, 'Bolívar', NULL, NULL, 5),
(60, 'Cruz Paredes', NULL, NULL, 5),
(61, 'Ezequiel Zamora', NULL, NULL, 5),
(62, 'Obispos', NULL, NULL, 5),
(63, 'Pedraza', NULL, NULL, 5),
(64, 'Rojas', NULL, NULL, 5),
(65, 'Sosa', NULL, NULL, 5),
(66, 'Caroní', NULL, NULL, 6),
(67, 'Cedeño', NULL, NULL, 6),
(68, 'El Callao', NULL, NULL, 6),
(69, 'Gran Sabana', NULL, NULL, 6),
(70, 'Heres', NULL, NULL, 6),
(71, 'Piar', NULL, NULL, 6),
(72, 'Angostura (Raúl Leoni)', NULL, NULL, 6),
(73, 'Roscio', NULL, NULL, 6),
(74, 'Sifontes', NULL, NULL, 6),
(75, 'Sucre', NULL, NULL, 6),
(76, 'Padre Pedro Chien', NULL, NULL, 6),
(77, 'Bejuma', NULL, NULL, 7),
(78, 'Carlos Arvelo', NULL, NULL, 7),
(79, 'Diego Ibarra', NULL, NULL, 7),
(80, 'Guacara', NULL, NULL, 7),
(81, 'Juan José Mora', NULL, NULL, 7),
(82, 'Libertador', NULL, NULL, 7),
(83, 'Los Guayos', NULL, NULL, 7),
(84, 'Miranda', NULL, NULL, 7),
(85, 'Montalbán', NULL, NULL, 7),
(86, 'Naguanagua', NULL, NULL, 7),
(87, 'Puerto Cabello', NULL, NULL, 7),
(88, 'San Diego', NULL, NULL, 7),
(89, 'San Joaquín', NULL, NULL, 7),
(90, 'Valencia', NULL, NULL, 7),
(91, 'Anzoátegui', NULL, NULL, 8),
(92, 'Tinaquillo', NULL, NULL, 8),
(93, 'Girardot', NULL, NULL, 8),
(94, 'Lima Blanco', NULL, NULL, 8),
(95, 'Pao de San Juan Bautista', NULL, NULL, 8),
(96, 'Ricaurte', NULL, NULL, 8),
(97, 'Rómulo Gallegos', NULL, NULL, 8),
(98, 'San Carlos', NULL, NULL, 8),
(99, 'Tinaco', NULL, NULL, 8),
(100, 'Antonio Díaz', NULL, NULL, 9),
(101, 'Casacoima', NULL, NULL, 9),
(102, 'Pedernales', NULL, NULL, 9),
(103, 'Tucupita', NULL, NULL, 9),
(104, 'Acosta', NULL, NULL, 10),
(105, 'Bolívar', NULL, NULL, 10),
(106, 'Buchivacoa', NULL, NULL, 10),
(107, 'Cacique Manaure', NULL, NULL, 10),
(108, 'Carirubana', NULL, NULL, 10),
(109, 'Colina', NULL, NULL, 10),
(110, 'Dabajuro', NULL, NULL, 10),
(111, 'Democracia', NULL, NULL, 10),
(112, 'Falcón', NULL, NULL, 10),
(113, 'Federación', NULL, NULL, 10),
(114, 'Jacura', NULL, NULL, 10),
(115, 'José Laurencio Silva', NULL, NULL, 10),
(116, 'Los Taques', NULL, NULL, 10),
(117, 'Mauroa', NULL, NULL, 10),
(118, 'Miranda', NULL, NULL, 10),
(119, 'Monseñor Iturriza', NULL, NULL, 10),
(120, 'Palmasola', NULL, NULL, 10),
(121, 'Petit', NULL, NULL, 10),
(122, 'Píritu', NULL, NULL, 10),
(123, 'San Francisco', NULL, NULL, 10),
(124, 'Sucre', NULL, NULL, 10),
(125, 'Tocópero', NULL, NULL, 10),
(126, 'Unión', NULL, NULL, 10),
(127, 'Urumaco', NULL, NULL, 10),
(128, 'Zamora', NULL, NULL, 10),
(129, 'Camaguán', NULL, NULL, 11),
(130, 'Chaguaramas', NULL, NULL, 11),
(131, 'El Socorro', NULL, NULL, 11),
(132, 'José Félix Ribas', NULL, NULL, 11),
(133, 'José Tadeo Monagas', NULL, NULL, 11),
(134, 'Juan Germán Roscio', NULL, NULL, 11),
(135, 'Julián Mellado', NULL, NULL, 11),
(136, 'Las Mercedes', NULL, NULL, 11),
(137, 'Leonardo Infante', NULL, NULL, 11),
(138, 'Pedro Zaraza', NULL, NULL, 11),
(139, 'Ortíz', NULL, NULL, 11),
(140, 'San Gerónimo de Guayabal', NULL, NULL, 11),
(141, 'San José de Guaribe', NULL, NULL, 11),
(142, 'Santa María de Ipire', NULL, NULL, 11),
(143, 'Sebastián Francisco de Miranda', NULL, NULL, 11),
(144, 'Andrés Eloy Blanco', NULL, NULL, 12),
(145, 'Crespo', NULL, NULL, 12),
(146, 'Iribarren', NULL, NULL, 12),
(147, 'Jiménez', NULL, NULL, 12),
(148, 'Morán', NULL, NULL, 12),
(149, 'Palavecino', NULL, NULL, 12),
(150, 'Simón Planas', NULL, NULL, 12),
(151, 'Torres', NULL, NULL, 12),
(152, 'Urdaneta', NULL, NULL, 12),
(179, 'Alberto Adriani', NULL, NULL, 13),
(180, 'Andrés Bello', NULL, NULL, 13),
(181, 'Antonio Pinto Salinas', NULL, NULL, 13),
(182, 'Aricagua', NULL, NULL, 13),
(183, 'Arzobispo Chacón', NULL, NULL, 13),
(184, 'Campo Elías', NULL, NULL, 13),
(185, 'Caracciolo Parra Olmedo', NULL, NULL, 13),
(186, 'Cardenal Quintero', NULL, NULL, 13),
(187, 'Guaraque', NULL, NULL, 13),
(188, 'Julio César Salas', NULL, NULL, 13),
(189, 'Justo Briceño', NULL, NULL, 13),
(190, 'Libertador', NULL, NULL, 13),
(191, 'Miranda', NULL, NULL, 13),
(192, 'Obispo Ramos de Lora', NULL, NULL, 13),
(193, 'Padre Noguera', NULL, NULL, 13),
(194, 'Pueblo Llano', NULL, NULL, 13),
(195, 'Rangel', NULL, NULL, 13),
(196, 'Rivas Dávila', NULL, NULL, 13),
(197, 'Santos Marquina', NULL, NULL, 13),
(198, 'Sucre', NULL, NULL, 13),
(199, 'Tovar', NULL, NULL, 13),
(200, 'Tulio Febres Cordero', NULL, NULL, 13),
(201, 'Zea', NULL, NULL, 13),
(223, 'Acevedo', NULL, NULL, 14),
(224, 'Andrés Bello', NULL, NULL, 14),
(225, 'Baruta', NULL, NULL, 14),
(226, 'Brión', NULL, NULL, 14),
(227, 'Buroz', NULL, NULL, 14),
(228, 'Carrizal', NULL, NULL, 14),
(229, 'Chacao', NULL, NULL, 14),
(230, 'Cristóbal Rojas', NULL, NULL, 14),
(231, 'El Hatillo', NULL, NULL, 14),
(232, 'Guaicaipuro', NULL, NULL, 14),
(233, 'Independencia', NULL, NULL, 14),
(234, 'Lander', NULL, NULL, 14),
(235, 'Los Salias', NULL, NULL, 14),
(236, 'Páez', NULL, NULL, 14),
(237, 'Paz Castillo', NULL, NULL, 14),
(238, 'Pedro Gual', NULL, NULL, 14),
(239, 'Plaza', NULL, NULL, 14),
(240, 'Simón Bolívar', NULL, NULL, 14),
(241, 'Sucre', NULL, NULL, 14),
(242, 'Urdaneta', NULL, NULL, 14),
(243, 'Zamora', NULL, NULL, 14),
(258, 'Acosta', NULL, NULL, 15),
(259, 'Aguasay', NULL, NULL, 15),
(260, 'Bolívar', NULL, NULL, 15),
(261, 'Caripe', NULL, NULL, 15),
(262, 'Cedeño', NULL, NULL, 15),
(263, 'Ezequiel Zamora', NULL, NULL, 15),
(264, 'Libertador', NULL, NULL, 15),
(265, 'Maturín', NULL, NULL, 15),
(266, 'Piar', NULL, NULL, 15),
(267, 'Punceres', NULL, NULL, 15),
(268, 'Santa Bárbara', NULL, NULL, 15),
(269, 'Sotillo', NULL, NULL, 15),
(270, 'Uracoa', NULL, NULL, 15),
(271, 'Antolín del Campo', NULL, NULL, 16),
(272, 'Arismendi', NULL, NULL, 16),
(273, 'García', NULL, NULL, 16),
(274, 'Gómez', NULL, NULL, 16),
(275, 'Maneiro', NULL, NULL, 16),
(276, 'Marcano', NULL, NULL, 16),
(277, 'Mariño', NULL, NULL, 16),
(278, 'Península de Macanao', NULL, NULL, 16),
(279, 'Tubores', NULL, NULL, 16),
(280, 'Villalba', NULL, NULL, 16),
(281, 'Díaz', NULL, NULL, 16),
(282, 'Agua Blanca', NULL, NULL, 17),
(283, 'Araure', NULL, NULL, 17),
(284, 'Esteller', NULL, NULL, 17),
(285, 'Guanare', NULL, NULL, 17),
(286, 'Guanarito', NULL, NULL, 17),
(287, 'Monseñor José Vicente de Unda', NULL, NULL, 17),
(288, 'Ospino', NULL, NULL, 17),
(289, 'Páez', NULL, NULL, 17),
(290, 'Papelón', NULL, NULL, 17),
(291, 'San Genaro de Boconoíto', NULL, NULL, 17),
(292, 'San Rafael de Onoto', NULL, NULL, 17),
(293, 'Santa Rosalía', NULL, NULL, 17),
(294, 'Sucre', NULL, NULL, 17),
(295, 'Turén', NULL, NULL, 17),
(296, 'Andrés Eloy Blanco', NULL, NULL, 18),
(297, 'Andrés Mata', NULL, NULL, 18),
(298, 'Arismendi', NULL, NULL, 18),
(299, 'Benítez', NULL, NULL, 18),
(300, 'Bermúdez', NULL, NULL, 18),
(301, 'Bolívar', NULL, NULL, 18),
(302, 'Cajigal', NULL, NULL, 18),
(303, 'Cruz Salmerón Acosta', NULL, NULL, 18),
(304, 'Libertador', NULL, NULL, 18),
(305, 'Mariño', NULL, NULL, 18),
(306, 'Mejía', NULL, NULL, 18),
(307, 'Montes', NULL, NULL, 18),
(308, 'Ribero', NULL, NULL, 18),
(309, 'Sucre', NULL, NULL, 18),
(310, 'Valdéz', NULL, NULL, 18),
(341, 'Andrés Bello', NULL, NULL, 19),
(342, 'Antonio Rómulo Costa', NULL, NULL, 19),
(343, 'Ayacucho', NULL, NULL, 19),
(344, 'Bolívar', NULL, NULL, 19),
(345, 'Cárdenas', NULL, NULL, 19),
(346, 'Córdoba', NULL, NULL, 19),
(347, 'Fernández Feo', NULL, NULL, 19),
(348, 'Francisco de Miranda', NULL, NULL, 19),
(349, 'García de Hevia', NULL, NULL, 19),
(350, 'Guásimos', NULL, NULL, 19),
(351, 'Independencia', NULL, NULL, 19),
(352, 'Jáuregui', NULL, NULL, 19),
(353, 'José María Vargas', NULL, NULL, 19),
(354, 'Junín', NULL, NULL, 19),
(355, 'Libertad', NULL, NULL, 19),
(356, 'Libertador', NULL, NULL, 19),
(357, 'Lobatera', NULL, NULL, 19),
(358, 'Michelena', NULL, NULL, 19),
(359, 'Panamericano', NULL, NULL, 19),
(360, 'Pedro María Ureña', NULL, NULL, 19),
(361, 'Rafael Urdaneta', NULL, NULL, 19),
(362, 'Samuel Darío Maldonado', NULL, NULL, 19),
(363, 'San Cristóbal', NULL, NULL, 19),
(364, 'Seboruco', NULL, NULL, 19),
(365, 'Simón Rodríguez', NULL, NULL, 19),
(366, 'Sucre', NULL, NULL, 19),
(367, 'Torbes', NULL, NULL, 19),
(368, 'Uribante', NULL, NULL, 19),
(369, 'San Judas Tadeo', NULL, NULL, 19),
(370, 'Andrés Bello', NULL, NULL, 20),
(371, 'Boconó', NULL, NULL, 20),
(372, 'Bolívar', NULL, NULL, 20),
(373, 'Candelaria', NULL, NULL, 20),
(374, 'Carache', NULL, NULL, 20),
(375, 'Escuque', NULL, NULL, 20),
(376, 'José Felipe Márquez Cañizalez', NULL, NULL, 20),
(377, 'Juan Vicente Campos Elías', NULL, NULL, 20),
(378, 'La Ceiba', NULL, NULL, 20),
(379, 'Miranda', NULL, NULL, 20),
(380, 'Monte Carmelo', NULL, NULL, 20),
(381, 'Motatán', NULL, NULL, 20),
(382, 'Pampán', NULL, NULL, 20),
(383, 'Pampanito', NULL, NULL, 20),
(384, 'Rafael Rangel', NULL, NULL, 20),
(385, 'San Rafael de Carvajal', NULL, NULL, 20),
(386, 'Sucre', NULL, NULL, 20),
(387, 'Trujillo', NULL, NULL, 20),
(388, 'Urdaneta', NULL, NULL, 20),
(389, 'Valera', NULL, NULL, 20),
(390, 'Vargas', NULL, NULL, 21),
(391, 'Arístides Bastidas', NULL, NULL, 22),
(392, 'Bolívar', NULL, NULL, 22),
(407, 'Bruzual', NULL, NULL, 22),
(408, 'Cocorote', NULL, NULL, 22),
(409, 'Independencia', NULL, NULL, 22),
(410, 'José Antonio Páez', NULL, NULL, 22),
(411, 'La Trinidad', NULL, NULL, 22),
(412, 'Manuel Monge', NULL, NULL, 22),
(413, 'Nirgua', NULL, NULL, 22),
(414, 'Peña', NULL, NULL, 22),
(415, 'San Felipe', NULL, NULL, 22),
(416, 'Sucre', NULL, NULL, 22),
(417, 'Urachiche', NULL, NULL, 22),
(418, 'José Joaquín Veroes', NULL, NULL, 22),
(441, 'Almirante Padilla', NULL, NULL, 23),
(442, 'Baralt', NULL, NULL, 23),
(443, 'Cabimas', NULL, NULL, 23),
(444, 'Catatumbo', NULL, NULL, 23),
(445, 'Colón', NULL, NULL, 23),
(446, 'Francisco Javier Pulgar', NULL, NULL, 23),
(447, 'Páez', NULL, NULL, 23),
(448, 'Jesús Enrique Losada', NULL, NULL, 23),
(449, 'Jesús María Semprún', NULL, NULL, 23),
(450, 'La Cañada de Urdaneta', NULL, NULL, 23),
(451, 'Lagunillas', NULL, NULL, 23),
(452, 'Machiques de Perijá', NULL, NULL, 23),
(453, 'Mara', NULL, NULL, 23),
(454, 'Maracaibo', NULL, NULL, 23),
(455, 'Miranda', NULL, NULL, 23),
(456, 'Rosario de Perijá', NULL, NULL, 23),
(457, 'San Francisco', NULL, NULL, 23),
(458, 'Santa Rita', NULL, NULL, 23),
(459, 'Simón Bolívar', NULL, NULL, 23),
(460, 'Sucre', NULL, NULL, 23),
(461, 'Valmore Rodríguez', NULL, NULL, 23),
(462, 'Libertador', NULL, NULL, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normas`
--

CREATE TABLE `normas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `normas`
--

INSERT INTO `normas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Normas Internacionales de Valuación 2017', '2018-09-12 17:13:20', '2018-09-12 17:13:20'),
(2, 'Normas Argentinas de Tasaciones IRAM', '2018-09-12 17:13:31', '2018-09-12 17:13:31'),
(3, 'Normas Australianas de Avalúos', '2018-09-12 17:13:37', '2018-09-12 17:13:37'),
(4, 'Normas Brasileñas de Valuación', '2018-09-12 17:13:45', '2018-09-12 17:13:45'),
(5, 'Normas Britanicas de Valuación', '2018-09-12 17:13:51', '2018-09-12 17:13:51'),
(6, 'Normas Colombianas de Valuación', '2018-09-12 17:13:58', '2018-09-12 17:13:58'),
(7, 'Normas Españolas de Tasación', '2018-09-12 17:14:04', '2018-09-12 17:14:04'),
(8, 'Normas Estadounidense de Avalúos', '2018-09-12 17:14:12', '2018-09-12 17:14:12'),
(9, 'Normas Europeas de Valuación 2016', '2018-09-12 17:14:20', '2018-09-12 17:14:20'),
(10, 'Normas Mexicanas de Valuación', '2018-09-12 17:14:27', '2018-09-12 17:14:27'),
(11, 'Normas Mexicanas INDAABIN', '2018-09-12 17:14:35', '2018-09-12 17:14:35'),
(12, 'Normas de Gestión de Valor', '2018-09-12 17:14:44', '2018-09-12 17:15:00'),
(13, 'Normas Internacionales de Información Financiera', '2018-09-12 17:15:08', '2018-09-12 17:15:08'),
(14, 'Principios de Contabilidad Generalmente Aceptados', '2018-09-12 17:15:14', '2018-09-12 17:15:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-08-13 17:29:14', '2018-08-13 17:29:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE `parroquias` (
  `id` int(10) UNSIGNED NOT NULL,
  `parroquia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_municipio` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parroquias`
--

INSERT INTO `parroquias` (`id`, `parroquia`, `created_at`, `updated_at`, `id_municipio`) VALUES
(1, 'Alto Orinoco', NULL, NULL, 1),
(2, 'Huachamacare Acanaña', NULL, NULL, 1),
(3, 'Marawaka Toky Shamanaña', NULL, NULL, 1),
(4, 'Mavaka Mavaka', NULL, NULL, 1),
(5, 'Sierra Parima Parimabé', NULL, NULL, 1),
(6, 'Ucata Laja Lisa', NULL, NULL, 2),
(7, 'Yapacana Macuruco', NULL, NULL, 2),
(8, 'Caname Guarinuma', NULL, NULL, 2),
(9, 'Fernando Girón Tovar', NULL, NULL, 3),
(10, 'Luis Alberto Gómez', NULL, NULL, 3),
(11, 'Pahueña Limón de Parhueña', NULL, NULL, 3),
(12, 'Platanillal Platanillal', NULL, NULL, 3),
(13, 'Samariapo', NULL, NULL, 4),
(14, 'Sipapo', NULL, NULL, 4),
(15, 'Munduapo', NULL, NULL, 4),
(16, 'Guayapo', NULL, NULL, 4),
(17, 'Alto Ventuari', NULL, NULL, 5),
(18, 'Medio Ventuari', NULL, NULL, 5),
(19, 'Bajo Ventuari', NULL, NULL, 5),
(20, 'Victorino', NULL, NULL, 6),
(21, 'Comunidad', NULL, NULL, 6),
(22, 'Casiquiare', NULL, NULL, 7),
(23, 'Cocuy', NULL, NULL, 7),
(24, 'San Carlos de Río Negro', NULL, NULL, 7),
(25, 'Solano', NULL, NULL, 7),
(26, 'Anaco', NULL, NULL, 8),
(27, 'San Joaquín', NULL, NULL, 8),
(28, 'Cachipo', NULL, NULL, 9),
(29, 'Aragua de Barcelona', NULL, NULL, 9),
(30, 'Lechería', NULL, NULL, 11),
(31, 'El Morro', NULL, NULL, 11),
(32, 'Puerto Píritu', NULL, NULL, 12),
(33, 'San Miguel', NULL, NULL, 12),
(34, 'Sucre', NULL, NULL, 12),
(35, 'Valle de Guanape', NULL, NULL, 13),
(36, 'Santa Bárbara', NULL, NULL, 13),
(37, 'El Chaparro', NULL, NULL, 14),
(38, 'Tomás Alfaro', NULL, NULL, 14),
(39, 'Calatrava', NULL, NULL, 14),
(40, 'Guanta', NULL, NULL, 15),
(41, 'Chorrerón', NULL, NULL, 15),
(42, 'Mamo', NULL, NULL, 16),
(43, 'Soledad', NULL, NULL, 16),
(44, 'Mapire', NULL, NULL, 17),
(45, 'Piar', NULL, NULL, 17),
(46, 'Santa Clara', NULL, NULL, 17),
(47, 'San Diego de Cabrutica', NULL, NULL, 17),
(48, 'Uverito', NULL, NULL, 17),
(49, 'Zuata', NULL, NULL, 17),
(50, 'Puerto La Cruz', NULL, NULL, 18),
(51, 'Pozuelos', NULL, NULL, 18),
(52, 'Onoto', NULL, NULL, 19),
(53, 'San Pablo', NULL, NULL, 19),
(54, 'San Mateo', NULL, NULL, 20),
(55, 'El Carito', NULL, NULL, 20),
(56, 'Santa Inés', NULL, NULL, 20),
(57, 'La Romereña', NULL, NULL, 20),
(58, 'Atapirire', NULL, NULL, 21),
(59, 'Boca del Pao', NULL, NULL, 21),
(60, 'El Pao', NULL, NULL, 21),
(61, 'Pariaguán', NULL, NULL, 21),
(62, 'Cantaura', NULL, NULL, 22),
(63, 'Libertador', NULL, NULL, 22),
(64, 'Santa Rosa', NULL, NULL, 22),
(65, 'Urica', NULL, NULL, 22),
(66, 'Píritu', NULL, NULL, 23),
(67, 'San Francisco', NULL, NULL, 23),
(68, 'San José de Guanipa', NULL, NULL, 24),
(69, 'Boca de Uchire', NULL, NULL, 25),
(70, 'Boca de Chávez', NULL, NULL, 25),
(71, 'Pueblo Nuevo', NULL, NULL, 26),
(72, 'Santa Ana', NULL, NULL, 26),
(73, 'Bergantín', NULL, NULL, 27),
(74, 'Caigua', NULL, NULL, 27),
(75, 'El Carmen', NULL, NULL, 27),
(76, 'El Pilar', NULL, NULL, 27),
(77, 'Naricual', NULL, NULL, 27),
(78, 'San Crsitóbal', NULL, NULL, 27),
(79, 'Edmundo Barrios', NULL, NULL, 28),
(80, 'Miguel Otero Silva', NULL, NULL, 28),
(81, 'Achaguas', NULL, NULL, 29),
(82, 'Apurito', NULL, NULL, 29),
(83, 'El Yagual', NULL, NULL, 29),
(84, 'Guachara', NULL, NULL, 29),
(85, 'Mucuritas', NULL, NULL, 29),
(86, 'Queseras del medio', NULL, NULL, 29),
(87, 'Biruaca', NULL, NULL, 30),
(88, 'Bruzual', NULL, NULL, 31),
(89, 'Mantecal', NULL, NULL, 31),
(90, 'Quintero', NULL, NULL, 31),
(91, 'Rincón Hondo', NULL, NULL, 31),
(92, 'San Vicente', NULL, NULL, 31),
(93, 'Guasdualito', NULL, NULL, 32),
(94, 'Aramendi', NULL, NULL, 32),
(95, 'El Amparo', NULL, NULL, 32),
(96, 'San Camilo', NULL, NULL, 32),
(97, 'Urdaneta', NULL, NULL, 32),
(98, 'San Juan de Payara', NULL, NULL, 33),
(99, 'Codazzi', NULL, NULL, 33),
(100, 'Cunaviche', NULL, NULL, 33),
(101, 'Elorza', NULL, NULL, 34),
(102, 'La Trinidad', NULL, NULL, 34),
(103, 'San Fernando', NULL, NULL, 35),
(104, 'El Recreo', NULL, NULL, 35),
(105, 'Peñalver', NULL, NULL, 35),
(106, 'San Rafael de Atamaica', NULL, NULL, 35),
(107, 'Pedro José Ovalles', NULL, NULL, 36),
(108, 'Joaquín Crespo', NULL, NULL, 36),
(109, 'José Casanova Godoy', NULL, NULL, 36),
(110, 'Madre María de San José', NULL, NULL, 36),
(111, 'Andrés Eloy Blanco', NULL, NULL, 36),
(112, 'Los Tacarigua', NULL, NULL, 36),
(113, 'Las Delicias', NULL, NULL, 36),
(114, 'Choroní', NULL, NULL, 36),
(115, 'Bolívar', NULL, NULL, 37),
(116, 'Camatagua', NULL, NULL, 38),
(117, 'Carmen de Cura', NULL, NULL, 38),
(118, 'Santa Rita', NULL, NULL, 39),
(119, 'Francisco de Miranda', NULL, NULL, 39),
(120, 'Moseñor Feliciano González', NULL, NULL, 39),
(121, 'Santa Cruz', NULL, NULL, 40),
(122, 'José Félix Ribas', NULL, NULL, 41),
(123, 'Castor Nieves Ríos', NULL, NULL, 41),
(124, 'Las Guacamayas', NULL, NULL, 41),
(125, 'Pao de Zárate', NULL, NULL, 41),
(126, 'Zuata', NULL, NULL, 41),
(127, 'José Rafael Revenga', NULL, NULL, 42),
(128, 'Palo Negro', NULL, NULL, 43),
(129, 'San Martín de Porres', NULL, NULL, 43),
(130, 'El Limón', NULL, NULL, 44),
(131, 'Caña de Azúcar', NULL, NULL, 44),
(132, 'Ocumare de la Costa', NULL, NULL, 45),
(133, 'San Casimiro', NULL, NULL, 46),
(134, 'Güiripa', NULL, NULL, 46),
(135, 'Ollas de Caramacate', NULL, NULL, 46),
(136, 'Valle Morín', NULL, NULL, 46),
(137, 'San Sebastían', NULL, NULL, 47),
(138, 'Turmero', NULL, NULL, 48),
(139, 'Arevalo Aponte', NULL, NULL, 48),
(140, 'Chuao', NULL, NULL, 48),
(141, 'Samán de Güere', NULL, NULL, 48),
(142, 'Alfredo Pacheco Miranda', NULL, NULL, 48),
(143, 'Santos Michelena', NULL, NULL, 49),
(144, 'Tiara', NULL, NULL, 49),
(145, 'Cagua', NULL, NULL, 50),
(146, 'Bella Vista', NULL, NULL, 50),
(147, 'Tovar', NULL, NULL, 51),
(148, 'Urdaneta', NULL, NULL, 52),
(149, 'Las Peñitas', NULL, NULL, 52),
(150, 'San Francisco de Cara', NULL, NULL, 52),
(151, 'Taguay', NULL, NULL, 52),
(152, 'Zamora', NULL, NULL, 53),
(153, 'Magdaleno', NULL, NULL, 53),
(154, 'San Francisco de Asís', NULL, NULL, 53),
(155, 'Valles de Tucutunemo', NULL, NULL, 53),
(156, 'Augusto Mijares', NULL, NULL, 53),
(157, 'Sabaneta', NULL, NULL, 54),
(158, 'Juan Antonio Rodríguez Domínguez', NULL, NULL, 54),
(159, 'El Cantón', NULL, NULL, 55),
(160, 'Santa Cruz de Guacas', NULL, NULL, 55),
(161, 'Puerto Vivas', NULL, NULL, 55),
(162, 'Ticoporo', NULL, NULL, 56),
(163, 'Nicolás Pulido', NULL, NULL, 56),
(164, 'Andrés Bello', NULL, NULL, 56),
(165, 'Arismendi', NULL, NULL, 57),
(166, 'Guadarrama', NULL, NULL, 57),
(167, 'La Unión', NULL, NULL, 57),
(168, 'San Antonio', NULL, NULL, 57),
(169, 'Barinas', NULL, NULL, 58),
(170, 'Alberto Arvelo Larriva', NULL, NULL, 58),
(171, 'San Silvestre', NULL, NULL, 58),
(172, 'Santa Inés', NULL, NULL, 58),
(173, 'Santa Lucía', NULL, NULL, 58),
(174, 'Torumos', NULL, NULL, 58),
(175, 'El Carmen', NULL, NULL, 58),
(176, 'Rómulo Betancourt', NULL, NULL, 58),
(177, 'Corazón de Jesús', NULL, NULL, 58),
(178, 'Ramón Ignacio Méndez', NULL, NULL, 58),
(179, 'Alto Barinas', NULL, NULL, 58),
(180, 'Manuel Palacio Fajardo', NULL, NULL, 58),
(181, 'Juan Antonio Rodríguez Domínguez', NULL, NULL, 58),
(182, 'Dominga Ortiz de Páez', NULL, NULL, 58),
(183, 'Barinitas', NULL, NULL, 59),
(184, 'Altamira de Cáceres', NULL, NULL, 59),
(185, 'Calderas', NULL, NULL, 59),
(186, 'Barrancas', NULL, NULL, 60),
(187, 'El Socorro', NULL, NULL, 60),
(188, 'Mazparrito', NULL, NULL, 60),
(189, 'Santa Bárbara', NULL, NULL, 61),
(190, 'Pedro Briceño Méndez', NULL, NULL, 61),
(191, 'Ramón Ignacio Méndez', NULL, NULL, 61),
(192, 'José Ignacio del Pumar', NULL, NULL, 61),
(193, 'Obispos', NULL, NULL, 62),
(194, 'Guasimitos', NULL, NULL, 62),
(195, 'El Real', NULL, NULL, 62),
(196, 'La Luz', NULL, NULL, 62),
(197, 'Ciudad Bolívia', NULL, NULL, 63),
(198, 'José Ignacio Briceño', NULL, NULL, 63),
(199, 'José Félix Ribas', NULL, NULL, 63),
(200, 'Páez', NULL, NULL, 63),
(201, 'Libertad', NULL, NULL, 64),
(202, 'Dolores', NULL, NULL, 64),
(203, 'Santa Rosa', NULL, NULL, 64),
(204, 'Palacio Fajardo', NULL, NULL, 64),
(205, 'Ciudad de Nutrias', NULL, NULL, 65),
(206, 'El Regalo', NULL, NULL, 65),
(207, 'Puerto Nutrias', NULL, NULL, 65),
(208, 'Santa Catalina', NULL, NULL, 65),
(209, 'Cachamay', NULL, NULL, 66),
(210, 'Chirica', NULL, NULL, 66),
(211, 'Dalla Costa', NULL, NULL, 66),
(212, 'Once de Abril', NULL, NULL, 66),
(213, 'Simón Bolívar', NULL, NULL, 66),
(214, 'Unare', NULL, NULL, 66),
(215, 'Universidad', NULL, NULL, 66),
(216, 'Vista al Sol', NULL, NULL, 66),
(217, 'Pozo Verde', NULL, NULL, 66),
(218, 'Yocoima', NULL, NULL, 66),
(219, '5 de Julio', NULL, NULL, 66),
(220, 'Cedeño', NULL, NULL, 67),
(221, 'Altagracia', NULL, NULL, 67),
(222, 'Ascensión Farreras', NULL, NULL, 67),
(223, 'Guaniamo', NULL, NULL, 67),
(224, 'La Urbana', NULL, NULL, 67),
(225, 'Pijiguaos', NULL, NULL, 67),
(226, 'El Callao', NULL, NULL, 68),
(227, 'Gran Sabana', NULL, NULL, 69),
(228, 'Ikabarú', NULL, NULL, 69),
(229, 'Catedral', NULL, NULL, 70),
(230, 'Zea', NULL, NULL, 70),
(231, 'Orinoco', NULL, NULL, 70),
(232, 'José Antonio Páez', NULL, NULL, 70),
(233, 'Marhuanta', NULL, NULL, 70),
(234, 'Agua Salada', NULL, NULL, 70),
(235, 'Vista Hermosa', NULL, NULL, 70),
(236, 'La Sabanita', NULL, NULL, 70),
(237, 'Panapana', NULL, NULL, 70),
(238, 'Andrés Eloy Blanco', NULL, NULL, 71),
(239, 'Pedro Cova', NULL, NULL, 71),
(240, 'Raúl Leoni', NULL, NULL, 72),
(241, 'Barceloneta', NULL, NULL, 72),
(242, 'Santa Bárbara', NULL, NULL, 72),
(243, 'San Francisco', NULL, NULL, 72),
(244, 'Roscio', NULL, NULL, 73),
(245, 'Salóm', NULL, NULL, 73),
(246, 'Sifontes', NULL, NULL, 74),
(247, 'Dalla Costa', NULL, NULL, 74),
(248, 'San Isidro', NULL, NULL, 74),
(249, 'Sucre', NULL, NULL, 75),
(250, 'Aripao', NULL, NULL, 75),
(251, 'Guarataro', NULL, NULL, 75),
(252, 'Las Majadas', NULL, NULL, 75),
(253, 'Moitaco', NULL, NULL, 75),
(254, 'Padre Pedro Chien', NULL, NULL, 76),
(255, 'Río Grande', NULL, NULL, 76),
(256, 'Bejuma', NULL, NULL, 77),
(257, 'Canoabo', NULL, NULL, 77),
(258, 'Simón Bolívar', NULL, NULL, 77),
(259, 'Güigüe', NULL, NULL, 78),
(260, 'Carabobo', NULL, NULL, 78),
(261, 'Tacarigua', NULL, NULL, 78),
(262, 'Mariara', NULL, NULL, 79),
(263, 'Aguas Calientes', NULL, NULL, 79),
(264, 'Ciudad Alianza', NULL, NULL, 80),
(265, 'Guacara', NULL, NULL, 80),
(266, 'Yagua', NULL, NULL, 80),
(267, 'Morón', NULL, NULL, 81),
(268, 'Yagua', NULL, NULL, 81),
(269, 'Tocuyito', NULL, NULL, 82),
(270, 'Independencia', NULL, NULL, 82),
(271, 'Los Guayos', NULL, NULL, 83),
(272, 'Miranda', NULL, NULL, 84),
(273, 'Montalbán', NULL, NULL, 85),
(274, 'Naguanagua', NULL, NULL, 86),
(275, 'Bartolomé Salóm', NULL, NULL, 87),
(276, 'Democracia', NULL, NULL, 87),
(277, 'Fraternidad', NULL, NULL, 87),
(278, 'Goaigoaza', NULL, NULL, 87),
(279, 'Juan José Flores', NULL, NULL, 87),
(280, 'Unión', NULL, NULL, 87),
(281, 'Borburata', NULL, NULL, 87),
(282, 'Patanemo', NULL, NULL, 87),
(283, 'San Diego', NULL, NULL, 88),
(284, 'San Joaquín', NULL, NULL, 89),
(285, 'Candelaria', NULL, NULL, 90),
(286, 'Catedral', NULL, NULL, 90),
(287, 'El Socorro', NULL, NULL, 90),
(288, 'Miguel Peña', NULL, NULL, 90),
(289, 'Rafael Urdaneta', NULL, NULL, 90),
(290, 'San Blas', NULL, NULL, 90),
(291, 'San José', NULL, NULL, 90),
(292, 'Santa Rosa', NULL, NULL, 90),
(293, 'Negro Primero', NULL, NULL, 90),
(294, 'Cojedes', NULL, NULL, 91),
(295, 'Juan de Mata Suárez', NULL, NULL, 91),
(296, 'Tinaquillo', NULL, NULL, 92),
(297, 'El Baúl', NULL, NULL, 93),
(298, 'Sucre', NULL, NULL, 93),
(299, 'La Aguadita', NULL, NULL, 94),
(300, 'Macapo', NULL, NULL, 94),
(301, 'El Pao', NULL, NULL, 95),
(302, 'El Amparo', NULL, NULL, 96),
(303, 'Libertad de Cojedes', NULL, NULL, 96),
(304, 'Rómulo Gallegos', NULL, NULL, 97),
(305, 'San Carlos de Austria', NULL, NULL, 98),
(306, 'Juan Ángel Bravo', NULL, NULL, 98),
(307, 'Manuel Manrique', NULL, NULL, 98),
(308, 'General en Jefe José Laurencio Silva', NULL, NULL, 99),
(309, 'Curiapo', NULL, NULL, 100),
(310, 'Almirante Luis Brión', NULL, NULL, 100),
(311, 'Francisco Aniceto Lugo', NULL, NULL, 100),
(312, 'Manuel Renaud', NULL, NULL, 100),
(313, 'Padre Barral', NULL, NULL, 100),
(314, 'Santos de Abelgas', NULL, NULL, 100),
(315, 'Imataca', NULL, NULL, 101),
(316, 'Cinco de Julio', NULL, NULL, 101),
(317, 'Juan Bautista Arismendi', NULL, NULL, 101),
(318, 'Manuel Piar', NULL, NULL, 101),
(319, 'Rómulo Gallegos', NULL, NULL, 101),
(320, 'Pedernales', NULL, NULL, 102),
(321, 'Luis Beltrán Prieto Figueroa', NULL, NULL, 102),
(322, 'San José (Delta Amacuro)', NULL, NULL, 103),
(323, 'José Vidal Marcano', NULL, NULL, 103),
(324, 'Juan Millán', NULL, NULL, 103),
(325, 'Leonardo Ruíz Pineda', NULL, NULL, 103),
(326, 'Mariscal Antonio José de Sucre', NULL, NULL, 103),
(327, 'Monseñor Argimiro García', NULL, NULL, 103),
(328, 'San Rafael (Delta Amacuro)', NULL, NULL, 103),
(329, 'Virgen del Valle', NULL, NULL, 103),
(330, 'Clarines', NULL, NULL, 10),
(331, 'Guanape', NULL, NULL, 10),
(332, 'Sabana de Uchire', NULL, NULL, 10),
(333, 'Capadare', NULL, NULL, 104),
(334, 'La Pastora', NULL, NULL, 104),
(335, 'Libertador', NULL, NULL, 104),
(336, 'San Juan de los Cayos', NULL, NULL, 104),
(337, 'Aracua', NULL, NULL, 105),
(338, 'La Peña', NULL, NULL, 105),
(339, 'San Luis', NULL, NULL, 105),
(340, 'Bariro', NULL, NULL, 106),
(341, 'Borojó', NULL, NULL, 106),
(342, 'Capatárida', NULL, NULL, 106),
(343, 'Guajiro', NULL, NULL, 106),
(344, 'Seque', NULL, NULL, 106),
(345, 'Zazárida', NULL, NULL, 106),
(346, 'Valle de Eroa', NULL, NULL, 106),
(347, 'Cacique Manaure', NULL, NULL, 107),
(348, 'Norte', NULL, NULL, 108),
(349, 'Carirubana', NULL, NULL, 108),
(350, 'Santa Ana', NULL, NULL, 108),
(351, 'Urbana Punta Cardón', NULL, NULL, 108),
(352, 'La Vela de Coro', NULL, NULL, 109),
(353, 'Acurigua', NULL, NULL, 109),
(354, 'Guaibacoa', NULL, NULL, 109),
(355, 'Las Calderas', NULL, NULL, 109),
(356, 'Macoruca', NULL, NULL, 109),
(357, 'Dabajuro', NULL, NULL, 110),
(358, 'Agua Clara', NULL, NULL, 111),
(359, 'Avaria', NULL, NULL, 111),
(360, 'Pedregal', NULL, NULL, 111),
(361, 'Piedra Grande', NULL, NULL, 111),
(362, 'Purureche', NULL, NULL, 111),
(363, 'Adaure', NULL, NULL, 112),
(364, 'Adícora', NULL, NULL, 112),
(365, 'Baraived', NULL, NULL, 112),
(366, 'Buena Vista', NULL, NULL, 112),
(367, 'Jadacaquiva', NULL, NULL, 112),
(368, 'El Vínculo', NULL, NULL, 112),
(369, 'El Hato', NULL, NULL, 112),
(370, 'Moruy', NULL, NULL, 112),
(371, 'Pueblo Nuevo', NULL, NULL, 112),
(372, 'Agua Larga', NULL, NULL, 113),
(373, 'El Paují', NULL, NULL, 113),
(374, 'Independencia', NULL, NULL, 113),
(375, 'Mapararí', NULL, NULL, 113),
(376, 'Agua Linda', NULL, NULL, 114),
(377, 'Araurima', NULL, NULL, 114),
(378, 'Jacura', NULL, NULL, 114),
(379, 'Tucacas', NULL, NULL, 115),
(380, 'Boca de Aroa', NULL, NULL, 115),
(381, 'Los Taques', NULL, NULL, 116),
(382, 'Judibana', NULL, NULL, 116),
(383, 'Mene de Mauroa', NULL, NULL, 117),
(384, 'San Félix', NULL, NULL, 117),
(385, 'Casigua', NULL, NULL, 117),
(386, 'Guzmán Guillermo', NULL, NULL, 118),
(387, 'Mitare', NULL, NULL, 118),
(388, 'Río Seco', NULL, NULL, 118),
(389, 'Sabaneta', NULL, NULL, 118),
(390, 'San Antonio', NULL, NULL, 118),
(391, 'San Gabriel', NULL, NULL, 118),
(392, 'Santa Ana', NULL, NULL, 118),
(393, 'Boca del Tocuyo', NULL, NULL, 119),
(394, 'Chichiriviche', NULL, NULL, 119),
(395, 'Tocuyo de la Costa', NULL, NULL, 119),
(396, 'Palmasola', NULL, NULL, 120),
(397, 'Cabure', NULL, NULL, 121),
(398, 'Colina', NULL, NULL, 121),
(399, 'Curimagua', NULL, NULL, 121),
(400, 'San José de la Costa', NULL, NULL, 122),
(401, 'Píritu', NULL, NULL, 122),
(402, 'San Francisco', NULL, NULL, 123),
(403, 'Sucre', NULL, NULL, 124),
(404, 'Pecaya', NULL, NULL, 124),
(405, 'Tocópero', NULL, NULL, 125),
(406, 'El Charal', NULL, NULL, 126),
(407, 'Las Vegas del Tuy', NULL, NULL, 126),
(408, 'Santa Cruz de Bucaral', NULL, NULL, 126),
(409, 'Bruzual', NULL, NULL, 127),
(410, 'Urumaco', NULL, NULL, 127),
(411, 'Puerto Cumarebo', NULL, NULL, 128),
(412, 'La Ciénaga', NULL, NULL, 128),
(413, 'La Soledad', NULL, NULL, 128),
(414, 'Pueblo Cumarebo', NULL, NULL, 128),
(415, 'Zazárida', NULL, NULL, 128),
(416, 'Churuguara', NULL, NULL, 113),
(417, 'Camaguán', NULL, NULL, 129),
(418, 'Puerto Miranda', NULL, NULL, 129),
(419, 'Uverito', NULL, NULL, 129),
(420, 'Chaguaramas', NULL, NULL, 130),
(421, 'El Socorro', NULL, NULL, 131),
(422, 'Tucupido', NULL, NULL, 132),
(423, 'San Rafael de Laya', NULL, NULL, 132),
(424, 'Altagracia de Orituco', NULL, NULL, 133),
(425, 'San Rafael de Orituco', NULL, NULL, 133),
(426, 'San Francisco Javier de Lezama', NULL, NULL, 133),
(427, 'Paso Real de Macaira', NULL, NULL, 133),
(428, 'Carlos Soublette', NULL, NULL, 133),
(429, 'San Francisco de Macaira', NULL, NULL, 133),
(430, 'Libertad de Orituco', NULL, NULL, 133),
(431, 'Cantaclaro', NULL, NULL, 134),
(432, 'San Juan de los Morros', NULL, NULL, 134),
(433, 'Parapara', NULL, NULL, 134),
(434, 'El Sombrero', NULL, NULL, 135),
(435, 'Sosa', NULL, NULL, 135),
(436, 'Las Mercedes', NULL, NULL, 136),
(437, 'Cabruta', NULL, NULL, 136),
(438, 'Santa Rita de Manapire', NULL, NULL, 136),
(439, 'Valle de la Pascua', NULL, NULL, 137),
(440, 'Espino', NULL, NULL, 137),
(441, 'San José de Unare', NULL, NULL, 138),
(442, 'Zaraza', NULL, NULL, 138),
(443, 'San José de Tiznados', NULL, NULL, 139),
(444, 'San Francisco de Tiznados', NULL, NULL, 139),
(445, 'San Lorenzo de Tiznados', NULL, NULL, 139),
(446, 'Ortiz', NULL, NULL, 139),
(447, 'Guayabal', NULL, NULL, 140),
(448, 'Cazorla', NULL, NULL, 140),
(449, 'San José de Guaribe', NULL, NULL, 141),
(450, 'Uveral', NULL, NULL, 141),
(451, 'Santa María de Ipire', NULL, NULL, 142),
(452, 'Altamira', NULL, NULL, 142),
(453, 'El Calvario', NULL, NULL, 143),
(454, 'El Rastro', NULL, NULL, 143),
(455, 'Guardatinajas', NULL, NULL, 143),
(456, 'Capital Urbana Calabozo', NULL, NULL, 143),
(457, 'Quebrada Honda de Guache', NULL, NULL, 144),
(458, 'Pío Tamayo', NULL, NULL, 144),
(459, 'Yacambú', NULL, NULL, 144),
(460, 'Fréitez', NULL, NULL, 145),
(461, 'José María Blanco', NULL, NULL, 145),
(462, 'Catedral', NULL, NULL, 146),
(463, 'Concepción', NULL, NULL, 146),
(464, 'El Cují', NULL, NULL, 146),
(465, 'Juan de Villegas', NULL, NULL, 146),
(466, 'Santa Rosa', NULL, NULL, 146),
(467, 'Tamaca', NULL, NULL, 146),
(468, 'Unión', NULL, NULL, 146),
(469, 'Aguedo Felipe Alvarado', NULL, NULL, 146),
(470, 'Buena Vista', NULL, NULL, 146),
(471, 'Juárez', NULL, NULL, 146),
(472, 'Juan Bautista Rodríguez', NULL, NULL, 147),
(473, 'Cuara', NULL, NULL, 147),
(474, 'Diego de Lozada', NULL, NULL, 147),
(475, 'Paraíso de San José', NULL, NULL, 147),
(476, 'San Miguel', NULL, NULL, 147),
(477, 'Tintorero', NULL, NULL, 147),
(478, 'José Bernardo Dorante', NULL, NULL, 147),
(479, 'Coronel Mariano Peraza ', NULL, NULL, 147),
(480, 'Bolívar', NULL, NULL, 148),
(481, 'Anzoátegui', NULL, NULL, 148),
(482, 'Guarico', NULL, NULL, 148),
(483, 'Hilario Luna y Luna', NULL, NULL, 148),
(484, 'Humocaro Alto', NULL, NULL, 148),
(485, 'Humocaro Bajo', NULL, NULL, 148),
(486, 'La Candelaria', NULL, NULL, 148),
(487, 'Morán', NULL, NULL, 148),
(488, 'Cabudare', NULL, NULL, 149),
(489, 'José Gregorio Bastidas', NULL, NULL, 149),
(490, 'Agua Viva', NULL, NULL, 149),
(491, 'Sarare', NULL, NULL, 150),
(492, 'Buría', NULL, NULL, 150),
(493, 'Gustavo Vegas León', NULL, NULL, 150),
(494, 'Trinidad Samuel', NULL, NULL, 151),
(495, 'Antonio Díaz', NULL, NULL, 151),
(496, 'Camacaro', NULL, NULL, 151),
(497, 'Castañeda', NULL, NULL, 151),
(498, 'Cecilio Zubillaga', NULL, NULL, 151),
(499, 'Chiquinquirá', NULL, NULL, 151),
(500, 'El Blanco', NULL, NULL, 151),
(501, 'Espinoza de los Monteros', NULL, NULL, 151),
(502, 'Lara', NULL, NULL, 151),
(503, 'Las Mercedes', NULL, NULL, 151),
(504, 'Manuel Morillo', NULL, NULL, 151),
(505, 'Montaña Verde', NULL, NULL, 151),
(506, 'Montes de Oca', NULL, NULL, 151),
(507, 'Torres', NULL, NULL, 151),
(508, 'Heriberto Arroyo', NULL, NULL, 151),
(509, 'Reyes Vargas', NULL, NULL, 151),
(510, 'Altagracia', NULL, NULL, 151),
(511, 'Siquisique', NULL, NULL, 152),
(512, 'Moroturo', NULL, NULL, 152),
(513, 'San Miguel', NULL, NULL, 152),
(514, 'Xaguas', NULL, NULL, 152),
(515, 'Presidente Betancourt', NULL, NULL, 179),
(516, 'Presidente Páez', NULL, NULL, 179),
(517, 'Presidente Rómulo Gallegos', NULL, NULL, 179),
(518, 'Gabriel Picón González', NULL, NULL, 179),
(519, 'Héctor Amable Mora', NULL, NULL, 179),
(520, 'José Nucete Sardi', NULL, NULL, 179),
(521, 'Pulido Méndez', NULL, NULL, 179),
(522, 'La Azulita', NULL, NULL, 180),
(523, 'Santa Cruz de Mora', NULL, NULL, 181),
(524, 'Mesa Bolívar', NULL, NULL, 181),
(525, 'Mesa de Las Palmas', NULL, NULL, 181),
(526, 'Aricagua', NULL, NULL, 182),
(527, 'San Antonio', NULL, NULL, 182),
(528, 'Canagua', NULL, NULL, 183),
(529, 'Capurí', NULL, NULL, 183),
(530, 'Chacantá', NULL, NULL, 183),
(531, 'El Molino', NULL, NULL, 183),
(532, 'Guaimaral', NULL, NULL, 183),
(533, 'Mucutuy', NULL, NULL, 183),
(534, 'Mucuchachí', NULL, NULL, 183),
(535, 'Fernández Peña', NULL, NULL, 184),
(536, 'Matriz', NULL, NULL, 184),
(537, 'Montalbán', NULL, NULL, 184),
(538, 'Acequias', NULL, NULL, 184),
(539, 'Jají', NULL, NULL, 184),
(540, 'La Mesa', NULL, NULL, 184),
(541, 'San José del Sur', NULL, NULL, 184),
(542, 'Tucaní', NULL, NULL, 185),
(543, 'Florencio Ramírez', NULL, NULL, 185),
(544, 'Santo Domingo', NULL, NULL, 186),
(545, 'Las Piedras', NULL, NULL, 186),
(546, 'Guaraque', NULL, NULL, 187),
(547, 'Mesa de Quintero', NULL, NULL, 187),
(548, 'Río Negro', NULL, NULL, 187),
(549, 'Arapuey', NULL, NULL, 188),
(550, 'Palmira', NULL, NULL, 188),
(551, 'San Cristóbal de Torondoy', NULL, NULL, 189),
(552, 'Torondoy', NULL, NULL, 189),
(553, 'Antonio Spinetti Dini', NULL, NULL, 190),
(554, 'Arias', NULL, NULL, 190),
(555, 'Caracciolo Parra Pérez', NULL, NULL, 190),
(556, 'Domingo Peña', NULL, NULL, 190),
(557, 'El Llano', NULL, NULL, 190),
(558, 'Gonzalo Picón Febres', NULL, NULL, 190),
(559, 'Jacinto Plaza', NULL, NULL, 190),
(560, 'Juan Rodríguez Suárez', NULL, NULL, 190),
(561, 'Lasso de la Vega', NULL, NULL, 190),
(562, 'Mariano Picón Salas', NULL, NULL, 190),
(563, 'Milla', NULL, NULL, 190),
(564, 'Osuna Rodríguez', NULL, NULL, 190),
(565, 'Sagrario', NULL, NULL, 190),
(566, 'El Morro', NULL, NULL, 190),
(567, 'Los Nevados', NULL, NULL, 190),
(568, 'Andrés Eloy Blanco', NULL, NULL, 191),
(569, 'La Venta', NULL, NULL, 191),
(570, 'Piñango', NULL, NULL, 191),
(571, 'Timotes', NULL, NULL, 191),
(572, 'Eloy Paredes', NULL, NULL, 192),
(573, 'San Rafael de Alcázar', NULL, NULL, 192),
(574, 'Santa Elena de Arenales', NULL, NULL, 192),
(575, 'Santa María de Caparo', NULL, NULL, 193),
(576, 'Pueblo Llano', NULL, NULL, 194),
(577, 'Cacute', NULL, NULL, 195),
(578, 'La Toma', NULL, NULL, 195),
(579, 'Mucuchíes', NULL, NULL, 195),
(580, 'Mucurubá', NULL, NULL, 195),
(581, 'San Rafael', NULL, NULL, 195),
(582, 'Gerónimo Maldonado', NULL, NULL, 196),
(583, 'Bailadores', NULL, NULL, 196),
(584, 'Tabay', NULL, NULL, 197),
(585, 'Chiguará', NULL, NULL, 198),
(586, 'Estánquez', NULL, NULL, 198),
(587, 'Lagunillas', NULL, NULL, 198),
(588, 'La Trampa', NULL, NULL, 198),
(589, 'Pueblo Nuevo del Sur', NULL, NULL, 198),
(590, 'San Juan', NULL, NULL, 198),
(591, 'El Amparo', NULL, NULL, 199),
(592, 'El Llano', NULL, NULL, 199),
(593, 'San Francisco', NULL, NULL, 199),
(594, 'Tovar', NULL, NULL, 199),
(595, 'Independencia', NULL, NULL, 200),
(596, 'María de la Concepción Palacios Blanco', NULL, NULL, 200),
(597, 'Nueva Bolivia', NULL, NULL, 200),
(598, 'Santa Apolonia', NULL, NULL, 200),
(599, 'Caño El Tigre', NULL, NULL, 201),
(600, 'Zea', NULL, NULL, 201),
(601, 'Aragüita', NULL, NULL, 223),
(602, 'Arévalo González', NULL, NULL, 223),
(603, 'Capaya', NULL, NULL, 223),
(604, 'Caucagua', NULL, NULL, 223),
(605, 'Panaquire', NULL, NULL, 223),
(606, 'Ribas', NULL, NULL, 223),
(607, 'El Café', NULL, NULL, 223),
(608, 'Marizapa', NULL, NULL, 223),
(609, 'Cumbo', NULL, NULL, 224),
(610, 'San José de Barlovento', NULL, NULL, 224),
(611, 'El Cafetal', NULL, NULL, 225),
(612, 'Las Minas', NULL, NULL, 225),
(613, 'Nuestra Señora del Rosario', NULL, NULL, 225),
(614, 'Higuerote', NULL, NULL, 226),
(615, 'Curiepe', NULL, NULL, 226),
(616, 'Tacarigua de Brión', NULL, NULL, 226),
(617, 'Mamporal', NULL, NULL, 227),
(618, 'Carrizal', NULL, NULL, 228),
(619, 'Chacao', NULL, NULL, 229),
(620, 'Charallave', NULL, NULL, 230),
(621, 'Las Brisas', NULL, NULL, 230),
(622, 'El Hatillo', NULL, NULL, 231),
(623, 'Altagracia de la Montaña', NULL, NULL, 232),
(624, 'Cecilio Acosta', NULL, NULL, 232),
(625, 'Los Teques', NULL, NULL, 232),
(626, 'El Jarillo', NULL, NULL, 232),
(627, 'San Pedro', NULL, NULL, 232),
(628, 'Tácata', NULL, NULL, 232),
(629, 'Paracotos', NULL, NULL, 232),
(630, 'Cartanal', NULL, NULL, 233),
(631, 'Santa Teresa del Tuy', NULL, NULL, 233),
(632, 'La Democracia', NULL, NULL, 234),
(633, 'Ocumare del Tuy', NULL, NULL, 234),
(634, 'Santa Bárbara', NULL, NULL, 234),
(635, 'San Antonio de los Altos', NULL, NULL, 235),
(636, 'Río Chico', NULL, NULL, 236),
(637, 'El Guapo', NULL, NULL, 236),
(638, 'Tacarigua de la Laguna', NULL, NULL, 236),
(639, 'Paparo', NULL, NULL, 236),
(640, 'San Fernando del Guapo', NULL, NULL, 236),
(641, 'Santa Lucía del Tuy', NULL, NULL, 237),
(642, 'Cúpira', NULL, NULL, 238),
(643, 'Machurucuto', NULL, NULL, 238),
(644, 'Guarenas', NULL, NULL, 239),
(645, 'San Antonio de Yare', NULL, NULL, 240),
(646, 'San Francisco de Yare', NULL, NULL, 240),
(647, 'Leoncio Martínez', NULL, NULL, 241),
(648, 'Petare', NULL, NULL, 241),
(649, 'Caucagüita', NULL, NULL, 241),
(650, 'Filas de Mariche', NULL, NULL, 241),
(651, 'La Dolorita', NULL, NULL, 241),
(652, 'Cúa', NULL, NULL, 242),
(653, 'Nueva Cúa', NULL, NULL, 242),
(654, 'Guatire', NULL, NULL, 243),
(655, 'Bolívar', NULL, NULL, 243),
(656, 'San Antonio de Maturín', NULL, NULL, 258),
(657, 'San Francisco de Maturín', NULL, NULL, 258),
(658, 'Aguasay', NULL, NULL, 259),
(659, 'Caripito', NULL, NULL, 260),
(660, 'El Guácharo', NULL, NULL, 261),
(661, 'La Guanota', NULL, NULL, 261),
(662, 'Sabana de Piedra', NULL, NULL, 261),
(663, 'San Agustín', NULL, NULL, 261),
(664, 'Teresen', NULL, NULL, 261),
(665, 'Caripe', NULL, NULL, 261),
(666, 'Areo', NULL, NULL, 262),
(667, 'Capital Cedeño', NULL, NULL, 262),
(668, 'San Félix de Cantalicio', NULL, NULL, 262),
(669, 'Viento Fresco', NULL, NULL, 262),
(670, 'El Tejero', NULL, NULL, 263),
(671, 'Punta de Mata', NULL, NULL, 263),
(672, 'Chaguaramas', NULL, NULL, 264),
(673, 'Las Alhuacas', NULL, NULL, 264),
(674, 'Tabasca', NULL, NULL, 264),
(675, 'Temblador', NULL, NULL, 264),
(676, 'Alto de los Godos', NULL, NULL, 265),
(677, 'Boquerón', NULL, NULL, 265),
(678, 'Las Cocuizas', NULL, NULL, 265),
(679, 'La Cruz', NULL, NULL, 265),
(680, 'San Simón', NULL, NULL, 265),
(681, 'El Corozo', NULL, NULL, 265),
(682, 'El Furrial', NULL, NULL, 265),
(683, 'Jusepín', NULL, NULL, 265),
(684, 'La Pica', NULL, NULL, 265),
(685, 'San Vicente', NULL, NULL, 265),
(686, 'Aparicio', NULL, NULL, 266),
(687, 'Aragua de Maturín', NULL, NULL, 266),
(688, 'Chaguamal', NULL, NULL, 266),
(689, 'El Pinto', NULL, NULL, 266),
(690, 'Guanaguana', NULL, NULL, 266),
(691, 'La Toscana', NULL, NULL, 266),
(692, 'Taguaya', NULL, NULL, 266),
(693, 'Cachipo', NULL, NULL, 267),
(694, 'Quiriquire', NULL, NULL, 267),
(695, 'Santa Bárbara', NULL, NULL, 268),
(696, 'Barrancas', NULL, NULL, 269),
(697, 'Los Barrancos de Fajardo', NULL, NULL, 269),
(698, 'Uracoa', NULL, NULL, 270),
(699, 'Antolín del Campo', NULL, NULL, 271),
(700, 'Arismendi', NULL, NULL, 272),
(701, 'García', NULL, NULL, 273),
(702, 'Francisco Fajardo', NULL, NULL, 273),
(703, 'Bolívar', NULL, NULL, 274),
(704, 'Guevara', NULL, NULL, 274),
(705, 'Matasiete', NULL, NULL, 274),
(706, 'Santa Ana', NULL, NULL, 274),
(707, 'Sucre', NULL, NULL, 274),
(708, 'Aguirre', NULL, NULL, 275),
(709, 'Maneiro', NULL, NULL, 275),
(710, 'Adrián', NULL, NULL, 276),
(711, 'Juan Griego', NULL, NULL, 276),
(712, 'Yaguaraparo', NULL, NULL, 276),
(713, 'Porlamar', NULL, NULL, 277),
(714, 'San Francisco de Macanao', NULL, NULL, 278),
(715, 'Boca de Río', NULL, NULL, 278),
(716, 'Tubores', NULL, NULL, 279),
(717, 'Los Baleales', NULL, NULL, 279),
(718, 'Vicente Fuentes', NULL, NULL, 280),
(719, 'Villalba', NULL, NULL, 280),
(720, 'San Juan Bautista', NULL, NULL, 281),
(721, 'Zabala', NULL, NULL, 281),
(722, 'Capital Araure', NULL, NULL, 283),
(723, 'Río Acarigua', NULL, NULL, 283),
(724, 'Capital Esteller', NULL, NULL, 284),
(725, 'Uveral', NULL, NULL, 284),
(726, 'Guanare', NULL, NULL, 285),
(727, 'Córdoba', NULL, NULL, 285),
(728, 'San José de la Montaña', NULL, NULL, 285),
(729, 'San Juan de Guanaguanare', NULL, NULL, 285),
(730, 'Virgen de la Coromoto', NULL, NULL, 285),
(731, 'Guanarito', NULL, NULL, 286),
(732, 'Trinidad de la Capilla', NULL, NULL, 286),
(733, 'Divina Pastora', NULL, NULL, 286),
(734, 'Monseñor José Vicente de Unda', NULL, NULL, 287),
(735, 'Peña Blanca', NULL, NULL, 287),
(736, 'Capital Ospino', NULL, NULL, 288),
(737, 'Aparición', NULL, NULL, 288),
(738, 'La Estación', NULL, NULL, 288),
(739, 'Páez', NULL, NULL, 289),
(740, 'Payara', NULL, NULL, 289),
(741, 'Pimpinela', NULL, NULL, 289),
(742, 'Ramón Peraza', NULL, NULL, 289),
(743, 'Papelón', NULL, NULL, 290),
(744, 'Caño Delgadito', NULL, NULL, 290),
(745, 'San Genaro de Boconoito', NULL, NULL, 291),
(746, 'Antolín Tovar', NULL, NULL, 291),
(747, 'San Rafael de Onoto', NULL, NULL, 292),
(748, 'Santa Fe', NULL, NULL, 292),
(749, 'Thermo Morles', NULL, NULL, 292),
(750, 'Santa Rosalía', NULL, NULL, 293),
(751, 'Florida', NULL, NULL, 293),
(752, 'Sucre', NULL, NULL, 294),
(753, 'Concepción', NULL, NULL, 294),
(754, 'San Rafael de Palo Alzado', NULL, NULL, 294),
(755, 'Uvencio Antonio Velásquez', NULL, NULL, 294),
(756, 'San José de Saguaz', NULL, NULL, 294),
(757, 'Villa Rosa', NULL, NULL, 294),
(758, 'Turén', NULL, NULL, 295),
(759, 'Canelones', NULL, NULL, 295),
(760, 'Santa Cruz', NULL, NULL, 295),
(761, 'San Isidro Labrador', NULL, NULL, 295),
(762, 'Mariño', NULL, NULL, 296),
(763, 'Rómulo Gallegos', NULL, NULL, 296),
(764, 'San José de Aerocuar', NULL, NULL, 297),
(765, 'Tavera Acosta', NULL, NULL, 297),
(766, 'Río Caribe', NULL, NULL, 298),
(767, 'Antonio José de Sucre', NULL, NULL, 298),
(768, 'El Morro de Puerto Santo', NULL, NULL, 298),
(769, 'Puerto Santo', NULL, NULL, 298),
(770, 'San Juan de las Galdonas', NULL, NULL, 298),
(771, 'El Pilar', NULL, NULL, 299),
(772, 'El Rincón', NULL, NULL, 299),
(773, 'General Francisco Antonio Váquez', NULL, NULL, 299),
(774, 'Guaraúnos', NULL, NULL, 299),
(775, 'Tunapuicito', NULL, NULL, 299),
(776, 'Unión', NULL, NULL, 299),
(777, 'Santa Catalina', NULL, NULL, 300),
(778, 'Santa Rosa', NULL, NULL, 300),
(779, 'Santa Teresa', NULL, NULL, 300),
(780, 'Bolívar', NULL, NULL, 300),
(781, 'Maracapana', NULL, NULL, 300),
(782, 'Libertad', NULL, NULL, 302),
(783, 'El Paujil', NULL, NULL, 302),
(784, 'Yaguaraparo', NULL, NULL, 302),
(785, 'Cruz Salmerón Acosta', NULL, NULL, 303),
(786, 'Chacopata', NULL, NULL, 303),
(787, 'Manicuare', NULL, NULL, 303),
(788, 'Tunapuy', NULL, NULL, 304),
(789, 'Campo Elías', NULL, NULL, 304),
(790, 'Irapa', NULL, NULL, 305),
(791, 'Campo Claro', NULL, NULL, 305),
(792, 'Maraval', NULL, NULL, 305),
(793, 'San Antonio de Irapa', NULL, NULL, 305),
(794, 'Soro', NULL, NULL, 305),
(795, 'Mejía', NULL, NULL, 306),
(796, 'Cumanacoa', NULL, NULL, 307),
(797, 'Arenas', NULL, NULL, 307),
(798, 'Aricagua', NULL, NULL, 307),
(799, 'Cogollar', NULL, NULL, 307),
(800, 'San Fernando', NULL, NULL, 307),
(801, 'San Lorenzo', NULL, NULL, 307),
(802, 'Villa Frontado (Muelle de Cariaco)', NULL, NULL, 308),
(803, 'Catuaro', NULL, NULL, 308),
(804, 'Rendón', NULL, NULL, 308),
(805, 'San Cruz', NULL, NULL, 308),
(806, 'Santa María', NULL, NULL, 308),
(807, 'Altagracia', NULL, NULL, 309),
(808, 'Santa Inés', NULL, NULL, 309),
(809, 'Valentín Valiente', NULL, NULL, 309),
(810, 'Ayacucho', NULL, NULL, 309),
(811, 'San Juan', NULL, NULL, 309),
(812, 'Raúl Leoni', NULL, NULL, 309),
(813, 'Gran Mariscal', NULL, NULL, 309),
(814, 'Cristóbal Colón', NULL, NULL, 310),
(815, 'Bideau', NULL, NULL, 310),
(816, 'Punta de Piedras', NULL, NULL, 310),
(817, 'Güiria', NULL, NULL, 310),
(818, 'Andrés Bello', NULL, NULL, 341),
(819, 'Antonio Rómulo Costa', NULL, NULL, 342),
(820, 'Ayacucho', NULL, NULL, 343),
(821, 'Rivas Berti', NULL, NULL, 343),
(822, 'San Pedro del Río', NULL, NULL, 343),
(823, 'Bolívar', NULL, NULL, 344),
(824, 'Palotal', NULL, NULL, 344),
(825, 'General Juan Vicente Gómez', NULL, NULL, 344),
(826, 'Isaías Medina Angarita', NULL, NULL, 344),
(827, 'Cárdenas', NULL, NULL, 345),
(828, 'Amenodoro Ángel Lamus', NULL, NULL, 345),
(829, 'La Florida', NULL, NULL, 345),
(830, 'Córdoba', NULL, NULL, 346),
(831, 'Fernández Feo', NULL, NULL, 347),
(832, 'Alberto Adriani', NULL, NULL, 347),
(833, 'Santo Domingo', NULL, NULL, 347),
(834, 'Francisco de Miranda', NULL, NULL, 348),
(835, 'García de Hevia', NULL, NULL, 349),
(836, 'Boca de Grita', NULL, NULL, 349),
(837, 'José Antonio Páez', NULL, NULL, 349),
(838, 'Guásimos', NULL, NULL, 350),
(839, 'Independencia', NULL, NULL, 351),
(840, 'Juan Germán Roscio', NULL, NULL, 351),
(841, 'Román Cárdenas', NULL, NULL, 351),
(842, 'Jáuregui', NULL, NULL, 352),
(843, 'Emilio Constantino Guerrero', NULL, NULL, 352),
(844, 'Monseñor Miguel Antonio Salas', NULL, NULL, 352),
(845, 'José María Vargas', NULL, NULL, 353),
(846, 'Junín', NULL, NULL, 354),
(847, 'La Petrólea', NULL, NULL, 354),
(848, 'Quinimarí', NULL, NULL, 354),
(849, 'Bramón', NULL, NULL, 354),
(850, 'Libertad', NULL, NULL, 355),
(851, 'Cipriano Castro', NULL, NULL, 355),
(852, 'Manuel Felipe Rugeles', NULL, NULL, 355),
(853, 'Libertador', NULL, NULL, 356),
(854, 'Doradas', NULL, NULL, 356),
(855, 'Emeterio Ochoa', NULL, NULL, 356),
(856, 'San Joaquín de Navay', NULL, NULL, 356),
(857, 'Lobatera', NULL, NULL, 357),
(858, 'Constitución', NULL, NULL, 357),
(859, 'Michelena', NULL, NULL, 358),
(860, 'Panamericano', NULL, NULL, 359),
(861, 'La Palmita', NULL, NULL, 359),
(862, 'Pedro María Ureña', NULL, NULL, 360),
(863, 'Nueva Arcadia', NULL, NULL, 360),
(864, 'Delicias', NULL, NULL, 361),
(865, 'Pecaya', NULL, NULL, 361),
(866, 'Samuel Darío Maldonado', NULL, NULL, 362),
(867, 'Boconó', NULL, NULL, 362),
(868, 'Hernández', NULL, NULL, 362),
(869, 'La Concordia', NULL, NULL, 363),
(870, 'San Juan Bautista', NULL, NULL, 363),
(871, 'Pedro María Morantes', NULL, NULL, 363),
(872, 'San Sebastián', NULL, NULL, 363),
(873, 'Dr. Francisco Romero Lobo', NULL, NULL, 363),
(874, 'Seboruco', NULL, NULL, 364),
(875, 'Simón Rodríguez', NULL, NULL, 365),
(876, 'Sucre', NULL, NULL, 366),
(877, 'Eleazar López Contreras', NULL, NULL, 366),
(878, 'San Pablo', NULL, NULL, 366),
(879, 'Torbes', NULL, NULL, 367),
(880, 'Uribante', NULL, NULL, 368),
(881, 'Cárdenas', NULL, NULL, 368),
(882, 'Juan Pablo Peñalosa', NULL, NULL, 368),
(883, 'Potosí', NULL, NULL, 368),
(884, 'San Judas Tadeo', NULL, NULL, 369),
(885, 'Araguaney', NULL, NULL, 370),
(886, 'El Jaguito', NULL, NULL, 370),
(887, 'La Esperanza', NULL, NULL, 370),
(888, 'Santa Isabel', NULL, NULL, 370),
(889, 'Boconó', NULL, NULL, 371),
(890, 'El Carmen', NULL, NULL, 371),
(891, 'Mosquey', NULL, NULL, 371),
(892, 'Ayacucho', NULL, NULL, 371),
(893, 'Burbusay', NULL, NULL, 371),
(894, 'General Ribas', NULL, NULL, 371),
(895, 'Guaramacal', NULL, NULL, 371),
(896, 'Vega de Guaramacal', NULL, NULL, 371),
(897, 'Monseñor Jáuregui', NULL, NULL, 371),
(898, 'Rafael Rangel', NULL, NULL, 371),
(899, 'San Miguel', NULL, NULL, 371),
(900, 'San José', NULL, NULL, 371),
(901, 'Sabana Grande', NULL, NULL, 372),
(902, 'Cheregüé', NULL, NULL, 372),
(903, 'Granados', NULL, NULL, 372),
(904, 'Arnoldo Gabaldón', NULL, NULL, 373),
(905, 'Bolivia', NULL, NULL, 373),
(906, 'Carrillo', NULL, NULL, 373),
(907, 'Cegarra', NULL, NULL, 373),
(908, 'Chejendé', NULL, NULL, 373),
(909, 'Manuel Salvador Ulloa', NULL, NULL, 373),
(910, 'San José', NULL, NULL, 373),
(911, 'Carache', NULL, NULL, 374),
(912, 'La Concepción', NULL, NULL, 374),
(913, 'Cuicas', NULL, NULL, 374),
(914, 'Panamericana', NULL, NULL, 374),
(915, 'Santa Cruz', NULL, NULL, 374),
(916, 'Escuque', NULL, NULL, 375),
(917, 'La Unión', NULL, NULL, 375),
(918, 'Santa Rita', NULL, NULL, 375),
(919, 'Sabana Libre', NULL, NULL, 375),
(920, 'El Socorro', NULL, NULL, 376),
(921, 'Los Caprichos', NULL, NULL, 376),
(922, 'Antonio José de Sucre', NULL, NULL, 376),
(923, 'Campo Elías', NULL, NULL, 377),
(924, 'Arnoldo Gabaldón', NULL, NULL, 377),
(925, 'Santa Apolonia', NULL, NULL, 378),
(926, 'El Progreso', NULL, NULL, 378),
(927, 'La Ceiba', NULL, NULL, 378),
(928, 'Tres de Febrero', NULL, NULL, 378),
(929, 'El Dividive', NULL, NULL, 379),
(930, 'Agua Santa', NULL, NULL, 379),
(931, 'Agua Caliente', NULL, NULL, 379),
(932, 'El Cenizo', NULL, NULL, 379),
(933, 'Valerita', NULL, NULL, 379),
(934, 'Monte Carmelo', NULL, NULL, 380),
(935, 'Buena Vista', NULL, NULL, 380),
(936, 'Santa María del Horcón', NULL, NULL, 380),
(937, 'Motatán', NULL, NULL, 381),
(938, 'El Baño', NULL, NULL, 381),
(939, 'Jalisco', NULL, NULL, 381),
(940, 'Pampán', NULL, NULL, 382),
(941, 'Flor de Patria', NULL, NULL, 382),
(942, 'La Paz', NULL, NULL, 382),
(943, 'Santa Ana', NULL, NULL, 382),
(944, 'Pampanito', NULL, NULL, 383),
(945, 'La Concepción', NULL, NULL, 383),
(946, 'Pampanito II', NULL, NULL, 383),
(947, 'Betijoque', NULL, NULL, 384),
(948, 'José Gregorio Hernández', NULL, NULL, 384),
(949, 'La Pueblita', NULL, NULL, 384),
(950, 'Los Cedros', NULL, NULL, 384),
(951, 'Carvajal', NULL, NULL, 385),
(952, 'Campo Alegre', NULL, NULL, 385),
(953, 'Antonio Nicolás Briceño', NULL, NULL, 385),
(954, 'José Leonardo Suárez', NULL, NULL, 385),
(955, 'Sabana de Mendoza', NULL, NULL, 386),
(956, 'Junín', NULL, NULL, 386),
(957, 'Valmore Rodríguez', NULL, NULL, 386),
(958, 'El Paraíso', NULL, NULL, 386),
(959, 'Andrés Linares', NULL, NULL, 387),
(960, 'Chiquinquirá', NULL, NULL, 387),
(961, 'Cristóbal Mendoza', NULL, NULL, 387),
(962, 'Cruz Carrillo', NULL, NULL, 387),
(963, 'Matriz', NULL, NULL, 387),
(964, 'Monseñor Carrillo', NULL, NULL, 387),
(965, 'Tres Esquinas', NULL, NULL, 387),
(966, 'Cabimbú', NULL, NULL, 388),
(967, 'Jajó', NULL, NULL, 388),
(968, 'La Mesa de Esnujaque', NULL, NULL, 388),
(969, 'Santiago', NULL, NULL, 388),
(970, 'Tuñame', NULL, NULL, 388),
(971, 'La Quebrada', NULL, NULL, 388),
(972, 'Juan Ignacio Montilla', NULL, NULL, 389),
(973, 'La Beatriz', NULL, NULL, 389),
(974, 'La Puerta', NULL, NULL, 389),
(975, 'Mendoza del Valle de Momboy', NULL, NULL, 389),
(976, 'Mercedes Díaz', NULL, NULL, 389),
(977, 'San Luis', NULL, NULL, 389),
(978, 'Caraballeda', NULL, NULL, 390),
(979, 'Carayaca', NULL, NULL, 390),
(980, 'Carlos Soublette', NULL, NULL, 390),
(981, 'Caruao Chuspa', NULL, NULL, 390),
(982, 'Catia La Mar', NULL, NULL, 390),
(983, 'El Junko', NULL, NULL, 390),
(984, 'La Guaira', NULL, NULL, 390),
(985, 'Macuto', NULL, NULL, 390),
(986, 'Maiquetía', NULL, NULL, 390),
(987, 'Naiguatá', NULL, NULL, 390),
(988, 'Urimare', NULL, NULL, 390),
(989, 'Arístides Bastidas', NULL, NULL, 391),
(990, 'Bolívar', NULL, NULL, 392),
(991, 'Chivacoa', NULL, NULL, 407),
(992, 'Campo Elías', NULL, NULL, 407),
(993, 'Cocorote', NULL, NULL, 408),
(994, 'Independencia', NULL, NULL, 409),
(995, 'José Antonio Páez', NULL, NULL, 410),
(996, 'La Trinidad', NULL, NULL, 411),
(997, 'Manuel Monge', NULL, NULL, 412),
(998, 'Salóm', NULL, NULL, 413),
(999, 'Temerla', NULL, NULL, 413),
(1000, 'Nirgua', NULL, NULL, 413),
(1001, 'San Andrés', NULL, NULL, 414),
(1002, 'Yaritagua', NULL, NULL, 414),
(1003, 'San Javier', NULL, NULL, 415),
(1004, 'Albarico', NULL, NULL, 415),
(1005, 'San Felipe', NULL, NULL, 415),
(1006, 'Sucre', NULL, NULL, 416),
(1007, 'Urachiche', NULL, NULL, 417),
(1008, 'El Guayabo', NULL, NULL, 418),
(1009, 'Farriar', NULL, NULL, 418),
(1010, 'Isla de Toas', NULL, NULL, 441),
(1011, 'Monagas', NULL, NULL, 441),
(1012, 'San Timoteo', NULL, NULL, 442),
(1013, 'General Urdaneta', NULL, NULL, 442),
(1014, 'Libertador', NULL, NULL, 442),
(1015, 'Marcelino Briceño', NULL, NULL, 442),
(1016, 'Pueblo Nuevo', NULL, NULL, 442),
(1017, 'Manuel Guanipa Matos', NULL, NULL, 442),
(1018, 'Ambrosio', NULL, NULL, 443),
(1019, 'Carmen Herrera', NULL, NULL, 443),
(1020, 'La Rosa', NULL, NULL, 443),
(1021, 'Germán Ríos Linares', NULL, NULL, 443),
(1022, 'San Benito', NULL, NULL, 443),
(1023, 'Rómulo Betancourt', NULL, NULL, 443),
(1024, 'Jorge Hernández', NULL, NULL, 443),
(1025, 'Punta Gorda', NULL, NULL, 443),
(1026, 'Arístides Calvani', NULL, NULL, 443),
(1027, 'Encontrados', NULL, NULL, 444),
(1028, 'Udón Pérez', NULL, NULL, 444),
(1029, 'Moralito', NULL, NULL, 445),
(1030, 'San Carlos del Zulia', NULL, NULL, 445),
(1031, 'Santa Cruz del Zulia', NULL, NULL, 445),
(1032, 'Santa Bárbara', NULL, NULL, 445),
(1033, 'Urribarrí', NULL, NULL, 445),
(1034, 'Carlos Quevedo', NULL, NULL, 446),
(1035, 'Francisco Javier Pulgar', NULL, NULL, 446),
(1036, 'Simón Rodríguez', NULL, NULL, 446),
(1037, 'Guamo-Gavilanes', NULL, NULL, 446),
(1038, 'La Concepción', NULL, NULL, 448),
(1039, 'San José', NULL, NULL, 448),
(1040, 'Mariano Parra León', NULL, NULL, 448),
(1041, 'José Ramón Yépez', NULL, NULL, 448),
(1042, 'Jesús María Semprún', NULL, NULL, 449),
(1043, 'Barí', NULL, NULL, 449),
(1044, 'Concepción', NULL, NULL, 450),
(1045, 'Andrés Bello', NULL, NULL, 450),
(1046, 'Chiquinquirá', NULL, NULL, 450),
(1047, 'El Carmelo', NULL, NULL, 450),
(1048, 'Potreritos', NULL, NULL, 450),
(1049, 'Libertad', NULL, NULL, 451),
(1050, 'Alonso de Ojeda', NULL, NULL, 451),
(1051, 'Venezuela', NULL, NULL, 451),
(1052, 'Eleazar López Contreras', NULL, NULL, 451),
(1053, 'Campo Lara', NULL, NULL, 451),
(1054, 'Bartolomé de las Casas', NULL, NULL, 452),
(1055, 'Libertad', NULL, NULL, 452),
(1056, 'Río Negro', NULL, NULL, 452),
(1057, 'San José de Perijá', NULL, NULL, 452),
(1058, 'San Rafael', NULL, NULL, 453),
(1059, 'La Sierrita', NULL, NULL, 453),
(1060, 'Las Parcelas', NULL, NULL, 453),
(1061, 'Luis de Vicente', NULL, NULL, 453),
(1062, 'Monseñor Marcos Sergio Godoy', NULL, NULL, 453),
(1063, 'Ricaurte', NULL, NULL, 453),
(1064, 'Tamare', NULL, NULL, 453),
(1065, 'Antonio Borjas Romero', NULL, NULL, 454),
(1066, 'Bolívar', NULL, NULL, 454),
(1067, 'Cacique Mara', NULL, NULL, 454),
(1068, 'Carracciolo Parra Pérez', NULL, NULL, 454),
(1069, 'Cecilio Acosta', NULL, NULL, 454),
(1070, 'Cristo de Aranza', NULL, NULL, 454),
(1071, 'Coquivacoa', NULL, NULL, 454),
(1072, 'Chiquinquirá', NULL, NULL, 454),
(1073, 'Francisco Eugenio Bustamante', NULL, NULL, 454),
(1074, 'Idelfonzo Vásquez', NULL, NULL, 454),
(1075, 'Juana de Ávila', NULL, NULL, 454),
(1076, 'Luis Hurtado Higuera', NULL, NULL, 454),
(1077, 'Manuel Dagnino', NULL, NULL, 454),
(1078, 'Olegario Villalobos', NULL, NULL, 454),
(1079, 'Raúl Leoni', NULL, NULL, 454),
(1080, 'Santa Lucía', NULL, NULL, 454),
(1081, 'Venancio Pulgar', NULL, NULL, 454),
(1082, 'San Isidro', NULL, NULL, 454),
(1083, 'Altagracia', NULL, NULL, 455),
(1084, 'Faría', NULL, NULL, 455),
(1085, 'Ana María Campos', NULL, NULL, 455),
(1086, 'San Antonio', NULL, NULL, 455),
(1087, 'San José', NULL, NULL, 455),
(1088, 'Donaldo García', NULL, NULL, 456),
(1089, 'El Rosario', NULL, NULL, 456),
(1090, 'Sixto Zambrano', NULL, NULL, 456),
(1091, 'San Francisco', NULL, NULL, 457),
(1092, 'El Bajo', NULL, NULL, 457),
(1093, 'Domitila Flores', NULL, NULL, 457),
(1094, 'Francisco Ochoa', NULL, NULL, 457),
(1095, 'Los Cortijos', NULL, NULL, 457),
(1096, 'Marcial Hernández', NULL, NULL, 457),
(1097, 'Santa Rita', NULL, NULL, 458),
(1098, 'El Mene', NULL, NULL, 458),
(1099, 'Pedro Lucas Urribarrí', NULL, NULL, 458),
(1100, 'José Cenobio Urribarrí', NULL, NULL, 458),
(1101, 'Rafael Maria Baralt', NULL, NULL, 459),
(1102, 'Manuel Manrique', NULL, NULL, 459),
(1103, 'Rafael Urdaneta', NULL, NULL, 459),
(1104, 'Bobures', NULL, NULL, 460),
(1105, 'Gibraltar', NULL, NULL, 460),
(1106, 'Heras', NULL, NULL, 460),
(1107, 'Monseñor Arturo Álvarez', NULL, NULL, 460),
(1108, 'Rómulo Gallegos', NULL, NULL, 460),
(1109, 'El Batey', NULL, NULL, 460),
(1110, 'Rafael Urdaneta', NULL, NULL, 461),
(1111, 'La Victoria', NULL, NULL, 461),
(1112, 'Raúl Cuenca', NULL, NULL, 461),
(1113, 'Sinamaica', NULL, NULL, 447),
(1114, 'Alta Guajira', NULL, NULL, 447),
(1115, 'Elías Sánchez Rubio', NULL, NULL, 447),
(1116, 'Guajira', NULL, NULL, 447),
(1117, 'Altagracia', NULL, NULL, 462),
(1118, 'Antímano', NULL, NULL, 462),
(1119, 'Caricuao', NULL, NULL, 462),
(1120, 'Catedral', NULL, NULL, 462),
(1121, 'Coche', NULL, NULL, 462),
(1122, 'El Junquito', NULL, NULL, 462),
(1123, 'El Paraíso', NULL, NULL, 462),
(1124, 'El Recreo', NULL, NULL, 462),
(1125, 'El Valle', NULL, NULL, 462),
(1126, 'La Candelaria', NULL, NULL, 462),
(1127, 'La Pastora', NULL, NULL, 462),
(1128, 'La Vega', NULL, NULL, 462),
(1129, 'Macarao', NULL, NULL, 462),
(1130, 'San Agustín', NULL, NULL, 462),
(1131, 'San Bernardino', NULL, NULL, 462),
(1132, 'San José', NULL, NULL, 462),
(1133, 'San Juan', NULL, NULL, 462),
(1134, 'San Pedro', NULL, NULL, 462),
(1135, 'Santa Rosalía', NULL, NULL, 462),
(1136, 'Santa Teresa', NULL, NULL, 462),
(1137, 'Sucre (Catia)', NULL, NULL, 462),
(1138, '23 de enero', NULL, NULL, 462);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(2, 'browse_bread', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(3, 'browse_database', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(4, 'browse_media', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(5, 'browse_compass', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(6, 'browse_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(7, 'read_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(8, 'edit_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(9, 'add_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(10, 'delete_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(11, 'browse_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(12, 'read_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(13, 'edit_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(14, 'add_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(15, 'delete_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(16, 'browse_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(17, 'read_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(18, 'edit_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(19, 'add_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(20, 'delete_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(21, 'browse_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(22, 'read_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(23, 'edit_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(24, 'add_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(25, 'delete_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(41, 'browse_hooks', NULL, '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(57, 'browse_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(58, 'read_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(59, 'edit_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(60, 'add_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(61, 'delete_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(62, 'browse_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(63, 'read_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(64, 'edit_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(65, 'add_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(66, 'delete_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(67, 'browse_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(68, 'read_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(69, 'edit_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(70, 'add_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(71, 'delete_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(82, 'browse_estados', 'estados', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(83, 'read_estados', 'estados', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(84, 'edit_estados', 'estados', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(85, 'add_estados', 'estados', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(86, 'delete_estados', 'estados', '2018-08-31 00:34:28', '2018-08-31 00:34:28'),
(87, 'browse_informe_avaluo', 'informe_avaluo', '2018-08-31 19:10:54', '2018-08-31 19:10:54'),
(88, 'read_informe_avaluo', 'informe_avaluo', '2018-08-31 19:10:54', '2018-08-31 19:10:54'),
(89, 'edit_informe_avaluo', 'informe_avaluo', '2018-08-31 19:10:54', '2018-08-31 19:10:54'),
(90, 'add_informe_avaluo', 'informe_avaluo', '2018-08-31 19:10:54', '2018-08-31 19:10:54'),
(91, 'delete_informe_avaluo', 'informe_avaluo', '2018-08-31 19:10:54', '2018-08-31 19:10:54'),
(92, 'browse_informe_avaluos', 'informe_avaluos', '2018-08-31 19:22:58', '2018-08-31 19:22:58'),
(93, 'read_informe_avaluos', 'informe_avaluos', '2018-08-31 19:22:58', '2018-08-31 19:22:58'),
(94, 'edit_informe_avaluos', 'informe_avaluos', '2018-08-31 19:22:58', '2018-08-31 19:22:58'),
(95, 'add_informe_avaluos', 'informe_avaluos', '2018-08-31 19:22:58', '2018-08-31 19:22:58'),
(96, 'delete_informe_avaluos', 'informe_avaluos', '2018-08-31 19:22:58', '2018-08-31 19:22:58'),
(97, 'browse_informe_contenidos', 'informe_contenidos', '2018-08-31 20:15:21', '2018-08-31 20:15:21'),
(98, 'read_informe_contenidos', 'informe_contenidos', '2018-08-31 20:15:21', '2018-08-31 20:15:21'),
(99, 'edit_informe_contenidos', 'informe_contenidos', '2018-08-31 20:15:21', '2018-08-31 20:15:21'),
(100, 'add_informe_contenidos', 'informe_contenidos', '2018-08-31 20:15:21', '2018-08-31 20:15:21'),
(101, 'delete_informe_contenidos', 'informe_contenidos', '2018-08-31 20:15:21', '2018-08-31 20:15:21'),
(102, 'browse_informe_avaluos_informe_contenidos', 'informe_avaluos_informe_contenidos', '2018-08-31 22:02:16', '2018-08-31 22:02:16'),
(103, 'read_informe_avaluos_informe_contenidos', 'informe_avaluos_informe_contenidos', '2018-08-31 22:02:16', '2018-08-31 22:02:16'),
(104, 'edit_informe_avaluos_informe_contenidos', 'informe_avaluos_informe_contenidos', '2018-08-31 22:02:16', '2018-08-31 22:02:16'),
(105, 'add_informe_avaluos_informe_contenidos', 'informe_avaluos_informe_contenidos', '2018-08-31 22:02:16', '2018-08-31 22:02:16'),
(106, 'delete_informe_avaluos_informe_contenidos', 'informe_avaluos_informe_contenidos', '2018-08-31 22:02:16', '2018-08-31 22:02:16'),
(107, 'browse_avaluos_contenidos', 'avaluos_contenidos', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(108, 'read_avaluos_contenidos', 'avaluos_contenidos', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(109, 'edit_avaluos_contenidos', 'avaluos_contenidos', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(110, 'add_avaluos_contenidos', 'avaluos_contenidos', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(111, 'delete_avaluos_contenidos', 'avaluos_contenidos', '2018-08-31 22:36:18', '2018-08-31 22:36:18'),
(112, 'browse_avaluos', 'avaluos', '2018-09-02 20:06:11', '2018-09-02 20:06:11'),
(113, 'read_avaluos', 'avaluos', '2018-09-02 20:06:11', '2018-09-02 20:06:11'),
(114, 'edit_avaluos', 'avaluos', '2018-09-02 20:06:11', '2018-09-02 20:06:11'),
(115, 'add_avaluos', 'avaluos', '2018-09-02 20:06:11', '2018-09-02 20:06:11'),
(116, 'delete_avaluos', 'avaluos', '2018-09-02 20:06:11', '2018-09-02 20:06:11'),
(117, 'browse_contenidos', 'contenidos', '2018-09-02 20:12:42', '2018-09-02 20:12:42'),
(118, 'read_contenidos', 'contenidos', '2018-09-02 20:12:42', '2018-09-02 20:12:42'),
(119, 'edit_contenidos', 'contenidos', '2018-09-02 20:12:42', '2018-09-02 20:12:42'),
(120, 'add_contenidos', 'contenidos', '2018-09-02 20:12:42', '2018-09-02 20:12:42'),
(121, 'delete_contenidos', 'contenidos', '2018-09-02 20:12:42', '2018-09-02 20:12:42'),
(132, 'browse_solicitantes', 'solicitantes', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(133, 'read_solicitantes', 'solicitantes', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(134, 'edit_solicitantes', 'solicitantes', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(135, 'add_solicitantes', 'solicitantes', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(136, 'delete_solicitantes', 'solicitantes', '2018-09-04 17:48:17', '2018-09-04 17:48:17'),
(137, 'browse_solicitudes', 'solicitudes', '2018-09-04 18:24:51', '2018-09-04 18:24:51'),
(138, 'read_solicitudes', 'solicitudes', '2018-09-04 18:24:51', '2018-09-04 18:24:51'),
(139, 'edit_solicitudes', 'solicitudes', '2018-09-04 18:24:51', '2018-09-04 18:24:51'),
(140, 'add_solicitudes', 'solicitudes', '2018-09-04 18:24:51', '2018-09-04 18:24:51'),
(141, 'delete_solicitudes', 'solicitudes', '2018-09-04 18:24:51', '2018-09-04 18:24:51'),
(142, 'browse_certificaciones', 'certificaciones', '2018-09-12 02:49:22', '2018-09-12 02:49:22'),
(143, 'read_certificaciones', 'certificaciones', '2018-09-12 02:49:22', '2018-09-12 02:49:22'),
(144, 'edit_certificaciones', 'certificaciones', '2018-09-12 02:49:22', '2018-09-12 02:49:22'),
(145, 'add_certificaciones', 'certificaciones', '2018-09-12 02:49:22', '2018-09-12 02:49:22'),
(146, 'delete_certificaciones', 'certificaciones', '2018-09-12 02:49:22', '2018-09-12 02:49:22'),
(147, 'browse_bases', 'bases', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(148, 'read_bases', 'bases', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(149, 'edit_bases', 'bases', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(150, 'add_bases', 'bases', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(151, 'delete_bases', 'bases', '2018-09-12 16:43:57', '2018-09-12 16:43:57'),
(152, 'browse_normas', 'normas', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(153, 'read_normas', 'normas', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(154, 'edit_normas', 'normas', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(155, 'add_normas', 'normas', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(156, 'delete_normas', 'normas', '2018-09-12 16:44:38', '2018-09-12 16:44:38'),
(157, 'browse_enfoques', 'enfoques', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(158, 'read_enfoques', 'enfoques', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(159, 'edit_enfoques', 'enfoques', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(160, 'add_enfoques', 'enfoques', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(161, 'delete_enfoques', 'enfoques', '2018-09-12 16:45:08', '2018-09-12 16:45:08'),
(162, 'browse_planteamientos', 'planteamientos', '2018-09-12 17:02:21', '2018-09-12 17:02:21'),
(163, 'read_planteamientos', 'planteamientos', '2018-09-12 17:02:21', '2018-09-12 17:02:21'),
(164, 'edit_planteamientos', 'planteamientos', '2018-09-12 17:02:21', '2018-09-12 17:02:21'),
(165, 'add_planteamientos', 'planteamientos', '2018-09-12 17:02:21', '2018-09-12 17:02:21'),
(166, 'delete_planteamientos', 'planteamientos', '2018-09-12 17:02:21', '2018-09-12 17:02:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(57, 1),
(58, 1),
(62, 1),
(63, 1),
(67, 1),
(68, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteamientos`
--

CREATE TABLE `planteamientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `finalidad_avaluo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razon_avaluo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuarios_del_ia` text COLLATE utf8mb4_unicode_ci,
  `organizacion` text COLLATE utf8mb4_unicode_ci,
  `alcance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formulacion` text COLLATE utf8mb4_unicode_ci,
  `protocolo_valuatorio` text COLLATE utf8mb4_unicode_ci,
  `avaluo_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planteamientos`
--

INSERT INTO `planteamientos` (`id`, `finalidad_avaluo`, `razon_avaluo`, `usuarios_del_ia`, `organizacion`, `alcance`, `formulacion`, `protocolo_valuatorio`, `avaluo_id`, `created_at`, `updated_at`) VALUES
(1, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 17:17:11', '2018-09-12 17:17:11'),
(2, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 17:18:39', '2018-09-12 17:18:39'),
(3, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 17:28:43', '2018-09-12 17:28:43'),
(4, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 17:29:07', '2018-09-12 17:29:07'),
(5, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 17:40:19', '2018-09-12 17:40:19'),
(6, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, 'aa', 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 18:00:00', '2018-09-12 18:18:19'),
(7, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', NULL, '2018-09-12 18:18:34', '2018-09-12 18:18:34'),
(8, '1Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', 19, '2018-09-12 18:21:34', '2018-09-12 18:21:34'),
(9, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', 18, '2018-09-12 18:33:27', '2018-09-12 18:33:27'),
(10, 'Valuar los derechos de propiedad sobre la globalidad de los bienes definidos en la Carátula de este IA, considerando como base(s) de valor la(s) definida(s) para el caso, especificadas mas adelante en esta misma Planilla.', NULL, NULL, NULL, 'Alcance suficiente para satisfacer la finalidad del avalúo.', '1. Avalúo del derecho de propiedad sobre las UOP aplicando el enfoque de comparación de los precios. \r\n\r\n2. Avalúo del derecho de propiedad sobre el edificio como un único inmueble según la suma algebráica de los valores atribuidos a las UOP1, UOP2 y UOP3.', 'Paso 1: Definición de la valuación a resolver. \r\nPaso 2: Planificación del trabajo de valuación a ejecutar. \r\nPaso 3: Recolección, registro y verificación de datos en oficina y en campo, incluyendo inspección de los bienes. \r\nPaso 4: Estimación de los valores de avalúo según el o los enfoques y métodos pertinentes.  \r\nPaso 5: Revisión, validación y conciliación de resultados valorativos.  \r\nPaso 6: Formulación del Dictamen Valorativo razonadamente convalidado. \r\nPaso 7: Edición y entrega del Informe de Valuación. \r\nPaso 8: Actividades ex-post según fueren necesarias y/o convenientes de realizar mediante acuerdos específicos.', 17, '2018-09-12 18:33:49', '2018-09-12 18:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteamiento_base`
--

CREATE TABLE `planteamiento_base` (
  `id` int(10) UNSIGNED NOT NULL,
  `planteamiento_id` int(11) DEFAULT NULL,
  `base_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planteamiento_base`
--

INSERT INTO `planteamiento_base` (`id`, `planteamiento_id`, `base_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 4, NULL, NULL),
(3, 8, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteamiento_enfoque`
--

CREATE TABLE `planteamiento_enfoque` (
  `id` int(10) UNSIGNED NOT NULL,
  `planteamiento_id` int(11) DEFAULT NULL,
  `enfoque_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planteamiento_enfoque`
--

INSERT INTO `planteamiento_enfoque` (`id`, `planteamiento_id`, `enfoque_id`, `created_at`, `updated_at`) VALUES
(1, 5, 4, NULL, NULL),
(2, 5, 5, NULL, NULL),
(3, 6, 4, NULL, NULL),
(4, 7, 4, NULL, NULL),
(5, 8, 4, NULL, NULL),
(6, 10, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteamiento_norma`
--

CREATE TABLE `planteamiento_norma` (
  `id` int(10) UNSIGNED NOT NULL,
  `planteamiento_id` int(11) DEFAULT NULL,
  `norma_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planteamiento_norma`
--

INSERT INTO `planteamiento_norma` (`id`, `planteamiento_id`, `norma_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 2, 4, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 5, 1, NULL, NULL),
(9, 5, 2, NULL, NULL),
(10, 8, 1, NULL, NULL),
(11, 9, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', '2018-08-13 17:29:11', '2018-08-13 21:42:07'),
(2, 'user', 'Usuario Normal', '2018-08-13 17:29:11', '2018-08-22 12:52:23'),
(3, 'inspector', 'Inspector', '2018-08-14 16:58:32', '2018-08-14 16:58:48'),
(4, 'analista', 'Analista', '2018-08-14 17:15:03', '2018-08-14 17:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Tasaciones Comerciales', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Sistema de gestión de tasaciones comerciales', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2018\\OGnNztISwdcb5pwxMvwW.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\August2018\\Fz2Pqhgd1IL1Ejw98IEM.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Tasaciones Comerciales', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Sistema de gestión de tasaciones comerciales', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\August2018\\RN7kVe7c3G7y7iol54xC.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitantes`
--

CREATE TABLE `solicitantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `rif` int(11) DEFAULT NULL,
  `domicilio_fiscal` text COLLATE utf8mb4_unicode_ci,
  `codigo_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_fijo` double DEFAULT NULL,
  `celular` double DEFAULT NULL,
  `celular2` double DEFAULT NULL,
  `fax` double DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitio_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rep_telefono_fijo` double DEFAULT NULL,
  `rep_celular` double DEFAULT NULL,
  `rep_celular2` double DEFAULT NULL,
  `rep_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitantes`
--

INSERT INTO `solicitantes` (`id`, `nombre`, `cedula`, `rif`, `domicilio_fiscal`, `codigo_postal`, `zona_postal`, `telefono_fijo`, `celular`, `celular2`, `fax`, `email`, `sitio_web`, `created_at`, `updated_at`, `representante`, `estatus`, `rep_telefono_fijo`, `rep_celular`, `rep_celular2`, `rep_email`) VALUES
(1, 'Miguel Magdalena', 25409863, 254098631, 'Caracas', '1030', '1030', 4168239481, 4168239481, 8725355, 4168239481, 'miguelangelmagdalena@gmail.com', 'l', '2018-09-04 17:51:19', '2018-09-04 17:51:19', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Miguel Magdalena', 25409864, 25409864, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'perro@gmail.com', NULL, '2018-09-05 07:16:11', '2018-09-05 07:16:11', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Miguel Magdalena', 25409865, 25409865, 'eee', '1030', '1030', 4168239481, NULL, NULL, NULL, 'ga@gmail.com', NULL, '2018-09-05 07:27:11', '2018-09-05 07:27:11', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Miguel Magdalena', 25409866, 25409866, 'eee', '1030', '1030', 4168239481, NULL, NULL, NULL, 'gau@gmail.com', NULL, '2018-09-05 07:29:56', '2018-09-05 07:29:56', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Junior Magdalena', 25409873, 25409873, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'miguelangelmagdalena@gmail.com7', NULL, '2018-09-05 16:46:20', '2018-09-05 16:46:20', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Tete Magdalena', 12456123, 12456122, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'pepe@gmail.com', NULL, '2018-09-05 17:08:44', '2018-09-05 18:37:34', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Silena Ybarra', 745754, 745754, '11', '1031', '1030', 2128725355, NULL, NULL, NULL, 'silenaybarra@yahoo.com', NULL, '2018-09-05 21:37:08', '2018-09-05 21:37:22', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Miguel Magdalena', 25408, 25408, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'miguelangelmagdalena25408@gmail.com', NULL, '2018-09-07 06:11:19', '2018-09-07 06:11:19', NULL, 'option1', NULL, NULL, NULL, 'miguelangelmagdalenasdfsdf@gmail.com'),
(10, 'Miguel Magdalena', 254098633, 254098633, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'miguelangelmagdalena2@gmail.com', NULL, '2018-09-07 06:25:10', '2018-09-07 06:25:10', NULL, 'option1', NULL, NULL, NULL, 'miguelangghelmagdalena@gmail.com'),
(11, 'Miguel Magdalena2', 21, 21, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'miguelangelmagdalena2@gmail.com2', NULL, '2018-09-09 19:50:40', '2018-09-09 19:51:06', NULL, 'option1', NULL, NULL, NULL, 'miguelangelmagdalena2@gmail.com'),
(12, 'Carlos ubarra', 1111, 1111, '1', '1030', '1030', 2128725355, NULL, NULL, NULL, 'z@gmail.com', NULL, '2018-09-10 20:38:07', '2018-09-10 21:21:46', NULL, 'option1', NULL, NULL, NULL, NULL),
(13, 'Miguel Magdalena2f', 254098639, NULL, NULL, '1030', '1030', 4168239481, NULL, NULL, NULL, 'miguelangelmagdalena1@gmail.com', NULL, '2018-09-10 21:23:07', '2018-09-10 21:51:13', NULL, 'option1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(10) UNSIGNED NOT NULL,
  `requerimiento_informe` text COLLATE utf8mb4_unicode_ci,
  `finalidad_informe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `necesidad_informe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parroquia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urbanizacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edificio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parcela` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catastro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uso_potencial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uso_factico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden_trabajo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodo_entrevistas_inicio` date DEFAULT NULL,
  `periodo_entrevistas_fin` date DEFAULT NULL,
  `periodo_revision_inicio` date DEFAULT NULL,
  `periodo_revision_fin` date DEFAULT NULL,
  `periodo_inspeccion_inicio` date DEFAULT NULL,
  `periodo_inspeccion_fin` date DEFAULT NULL,
  `moneda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `solicitante_id` int(11) DEFAULT NULL,
  `avaluo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `requerimiento_informe`, `finalidad_informe`, `necesidad_informe`, `pais`, `estado`, `ciudad`, `municipio`, `parroquia`, `urbanizacion`, `calle`, `edificio`, `piso`, `local`, `parcela`, `catastro`, `uso_potencial`, `uso_factico`, `orden_trabajo`, `periodo_entrevistas_inicio`, `periodo_entrevistas_fin`, `periodo_revision_inicio`, `periodo_revision_fin`, `periodo_inspeccion_inicio`, `periodo_inspeccion_fin`, `moneda`, `created_at`, `updated_at`, `solicitante_id`, `avaluo_id`) VALUES
(8, 'sdfsdf', NULL, NULL, 'Venezuela', 'Distrito Capital', 'Caracas', 'Caracas', 'Caracas', NULL, 'Catia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-07 06:11:19', '2018-09-07 06:11:19', 9, 6),
(9, 'fghfgh', 'tryrty', NULL, 'fghfgh', 'Distrito Capital', 'Caracas', 'Caracas', 'Caracas', NULL, 'Catia', NULL, NULL, 'fgh', NULL, NULL, 'fgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-07 06:25:10', '2018-09-07 06:25:10', 10, NULL),
(10, 'xxxxxxxxxxxxx', 'ghjghjh', 'ert', 'ert', 'ert', 'Caracas', 'Caracas', 'Caracas', 'hjhg', 'Catia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-08', NULL, 'option1', '2018-09-09 19:50:40', '2018-09-09 19:51:06', 11, 8),
(11, 'aaaaaaaaaaaaaaaa', 'aaaaaaaaa', NULL, 'fg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aaa', 'aa', NULL, NULL, NULL, NULL, NULL, '2018-09-10', NULL, 'option1', '2018-09-10 20:25:38', '2018-09-10 20:25:38', 1, 9),
(13, 'qqqqqqqqqqqqqqq', 'qqqqq', NULL, NULL, NULL, NULL, NULL, NULL, 'qqq', NULL, NULL, NULL, NULL, NULL, NULL, 'qqq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-10 20:34:38', '2018-09-10 20:34:38', 3, 10),
(14, 'aaaaaa', NULL, NULL, 'aaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaaa', NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-10', '2018-09-10', 'option1', '2018-09-10 20:35:56', '2018-09-10 20:35:56', 3, 11),
(15, 'zzzzzzzzzzzzzzz', 'zzz', 'zzz', 'zzz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zzzz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-10 20:38:07', '2018-09-10 20:38:07', 12, 12),
(16, 'fffffffffffffffffffff', 'fffffffffffffffffffffff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-10 21:23:07', '2018-09-10 21:56:45', 13, 13),
(17, 'ioioiooioo', 'ioioi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ioio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-10 23:07:19', '2018-09-11 17:08:57', 3, 16),
(18, '2222222', '2', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-11 17:36:39', '2018-09-11 17:36:39', 1, 17),
(19, '..', NULL, NULL, '..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '..', NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-12 08:27:03', '2018-09-12 08:27:03', 1, 19),
(20, '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'option1', '2018-09-12 08:36:47', '2018-09-12 08:36:47', 1, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-13 17:29:14', '2018-08-13 17:29:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_estado` int(10) UNSIGNED DEFAULT NULL,
  `id_municipio` int(10) UNSIGNED DEFAULT NULL,
  `id_parroquia` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `id_estado`, `id_municipio`, `id_parroquia`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$Bdte22LQ7DMRxiAtojqoQeP6Ve3/22LFiFrXG8AVxFtn3DLjQRumq', 'sOyJMn3kFk5OkdneljNf9NdCJnO2Z2Ku49xTrLoRvd0XzDPWaQV3ZCv7UXKg', '{\"locale\":\"es\"}', '2018-08-13 17:29:13', '2018-08-13 18:48:45', NULL, NULL, NULL),
(2, 1, 'Miguel Magdalena2', 'miguelangelmagdalena@gmail.com', 'users/default.png', '$2y$10$Cf39lX9.wVoe8cToy03gtOMGw/UfSnKdNHzOyQehML/ZICRa6MqMS', 'wywpozuvHd6tSLi9rgvGdrpoXmiViSdEGFK1ZJWQwgMBQqMVbOYjLhSpDZlV', '{\"locale\":\"es\"}', '2018-08-13 18:49:26', '2018-08-22 13:30:19', NULL, NULL, NULL),
(4, 2, 'Miguel Angel', 'miguel@gmail.com', 'users/default.png', '$2y$10$9xpiNR2KDkzAlLLaWPU5gunTa13su0FHS7GxzCrA43k0gJ1Hna2cy', '2FgRsRH9hz5LzYV3fw9FpIAacyburfM43kda4IWKYSBiSBRdQmlmohEJ3kOY', NULL, '2018-08-15 22:24:33', '2018-08-15 22:24:33', NULL, NULL, NULL),
(6, 2, 'Mitchell2', 'mitch@gmail.com', 'users/default.png', '$2y$10$TDmonoYeDJYDTdAn.ZRkMuP232SXqoDRn9iEqzKH0GOrJu48ezHJu', 'xCQW1AHjCLUsptNtbZHfmkT8tmBEfxaxhvFST5L4BoWGXQVxNNy1E0S6UI1L', NULL, '2018-08-20 19:33:45', '2018-08-20 20:58:12', 24, 462, 1137),
(7, 2, 'Miguel Magdalena2', 'aa@gmail.com', 'users/default.png', '$2y$10$mTYvX30H87vxesZiObSOU.5Qmtu5rIiBgWt48zYBef5Zy69R25FSm', 'LF9QUnSRMX4qj1pv05ukhSXN8M1RQJWGpD0Lay0suvO5iVAxta2I8GrvFPDC', NULL, '2018-08-20 19:37:23', '2018-08-21 07:25:02', NULL, NULL, NULL),
(9, 2, 'Miguel', 'asdasdasdsa@gmail.com', 'users/default.png', '$2y$10$7TsY/f4V0z6GBSqn3bHbbeEE0/olKZ9MWOyt6Q8Xm4vUI1UbQQ8K2', 'MEt2ZaseaimYx8sQSnOKWBoU2nMivOcJG1FQtqrh7NZFQWJNjksiPh2ruPIQ', NULL, '2018-08-21 18:51:46', '2018-08-21 23:38:30', 1, 1, 1),
(11, 2, 'Miguel Magdalena', 'miguelanasdasdgelmagdalena@gmail.com', 'users/default.png', '$2y$10$SsZBuyXDf9CYHrKj6fg9RuZB6a7S93aiYBkhufwHj8Ak6kRgYaOsy', 'xJRP0MnLT2isOj61Gar3Es1RDADCWsJuRzVQygviEps6d8yTxWJX7Fr6Nej4', NULL, '2018-08-22 12:53:08', '2018-08-22 12:53:08', 24, NULL, NULL),
(12, 2, 'miguel angel', 'asamiguelangelmagdalena@gmail.com', 'users/default.png', '$2y$10$hYoA8Mui9SL96JV1zDRywORd5LrQVdHgO/p8mVjisuu4D1DSmAmZq', '03dqlLlGvOQdBPxyCkNIrby5vQzjBVlsfDG2G7Fmzf2snk6iapfOTUlgYScw', NULL, '2018-08-22 13:17:26', '2018-08-22 13:31:36', NULL, NULL, NULL),
(13, 2, 'Miguel Magdalen', 'miguelangelmagalena123@gmail.com', 'users/default.png', '$2y$10$0pDxFK2.N3I.HzBcWnyZ0O0PMYOwGdLcTqDNGJb/.WJvW2TDFBg2O', 'E2Vk7LuTPkXbus7nTKcWBT2EXMFQRYf3tdhi839JYMAxSLiVBIJn7JKZ7EUJ', NULL, '2018-08-31 00:41:54', '2018-09-11 17:32:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avaluos`
--
ALTER TABLE `avaluos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `avaluo_contenido`
--
ALTER TABLE `avaluo_contenido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bases`
--
ALTER TABLE `bases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `enfoques`
--
ALTER TABLE `enfoques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_id_estado_index` (`id_estado`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `normas`
--
ALTER TABLE `normas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parroquias_id_municipio_index` (`id_municipio`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `planteamientos`
--
ALTER TABLE `planteamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planteamiento_base`
--
ALTER TABLE `planteamiento_base`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planteamiento_enfoque`
--
ALTER TABLE `planteamiento_enfoque`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planteamiento_norma`
--
ALTER TABLE `planteamiento_norma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitantes_cedula_unique` (`cedula`),
  ADD UNIQUE KEY `solicitantes_rif_unique` (`rif`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitudes_contenido_id_unique` (`avaluo_id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_id_estado_index` (`id_estado`),
  ADD KEY `users_id_municipio_index` (`id_municipio`),
  ADD KEY `users_id_parroquia_index` (`id_parroquia`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avaluos`
--
ALTER TABLE `avaluos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `avaluo_contenido`
--
ALTER TABLE `avaluo_contenido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `bases`
--
ALTER TABLE `bases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `enfoques`
--
ALTER TABLE `enfoques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT de la tabla `normas`
--
ALTER TABLE `normas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `planteamientos`
--
ALTER TABLE `planteamientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `planteamiento_base`
--
ALTER TABLE `planteamiento_base`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `planteamiento_enfoque`
--
ALTER TABLE `planteamiento_enfoque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `planteamiento_norma`
--
ALTER TABLE `planteamiento_norma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD CONSTRAINT `parroquias_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
