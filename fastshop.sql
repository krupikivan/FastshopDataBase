-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 02:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `RoleId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(11) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Name` varchar(50) DEFAULT NULL,
  `NormalizedName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `ConcurrencyStamp`, `Name`, `NormalizedName`) VALUES
('550a97f8-15', 'bc03e419-d1db-44c9-bfb7-2ceec5bb6155', 'Admin', 'ADMIN'),
('581961b4-6e', 'fcf8251d-76b0-402a-9339-9a95d5669fed', 'Alumno', 'ALUMNO'),
('583a8e6a-a5', '17e06491-3a28-4683-a52c-b977a220c4d9', 'Empleado', 'EMPLEADO'),
('d769b57f-f1', 'd4cbacb7-b521-4229-9b41-6ba4d3706022', 'Gerente', 'GERENTE'),
('e6087055-d8', '58b2f0bc-bdfc-4414-aa8e-f66c162d95f8', 'Docente', 'DOCENTE');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(127) NOT NULL,
  `ProviderKey` varchar(127) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(127) NOT NULL,
  `RoleId` varchar(127) NOT NULL,
  `RolIdFK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(127) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `NormalizedEmail` varchar(25) DEFAULT NULL,
  `NormalizedUserName` varchar(25) DEFAULT NULL,
  `PasswordHash` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `AccessFailedCount`, `ConcurrencyStamp`, `Email`, `EmailConfirmed`, `LockoutEnabled`, `LockoutEnd`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `SecurityStamp`, `TwoFactorEnabled`, `UserName`) VALUES
('416225db-07cc-4340-80a9-594dfd98def7', 0, 'f0f21f37-d04b-4b21-8f73-368ce8d11a2c', 'matias@matias', b'0', b'0', NULL, NULL, NULL, 'AQAAAAEAACcQAAAAEHrBnRYQuId8pER3B/3Vv9kLh3wSRTpQjWRkmnTX77Ij1NAC866L0lcNhq55rrevzQ==', NULL, b'0', '9eec8459-78e6-4a7f-a56b-6016fc9177ac', b'0', 'matias@matias'),
('5a94cd21-f98e-48fd-9794-7b73a267545d', 0, '1dc8a793-89b0-4a71-b5a3-95a2feb816e0', 'matias@matias', b'0', b'1', NULL, 'MATIAS@MATIAS', 'MATIAS@MATIAS', 'AQAAAAEAACcQAAAAEKpHAFhO2ReuyWgzU8vpknQAhAvlH0J72YjK89SbKKYbw7N+gcQWSTLEW/jTzwQmVg==', NULL, b'0', '3a39d260-6dda-40aa-81fa-adcef0f410f2', b'0', 'matias@matias'),
('60c4d31f-7a1b-4aa8-abdd-1026d1272a42', 0, 'f6ee8e31-d6cc-4fb3-9074-ab2c26d56cb3', 'ADMIN@FASTSHOP.COM.AR', b'0', b'1', NULL, 'ADMIN@FASTSHOP.COM.AR', 'ADMIN@FASTSHOP.COM.AR', 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'a6f2411f-0491-481e-918a-6d15f62fe1a8', b'0', 'ADMIN@FASTSHOP.COM.AR'),
('7a48e357-f5d3-4587-8ce3-a0981ab99689', 0, '0866dccf-ce6a-4b0c-978a-b139c6410b75', 'pabloromero@gmail.com', b'0', b'1', NULL, 'PABLOROMERO@GMAIL.COM', 'PABLOROMERO@GMAIL.COM', 'AQAAAAEAACcQAAAAEMuh0m2Bxrt+I80lj9M2Zc/1TWc1uJKS5bfnnZSvHCdJp5ND8NWDtzwJnOAUovmMkw==', NULL, b'0', 'b36a811a-60ca-40df-a466-203c1c65f833', b'0', 'pabloromero@gmail.com'),
('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3', 0, 'ac39529f-77cf-4d24-a107-0dfecc4f7cdc', 'DIOGENES@CAROT', b'0', b'1', NULL, 'DIOGENES@CAROT', 'DIOGENES@CAROT', 'AQAAAAEAACcQAAAAEKg8fYNPhwfrIqA+SlY7gRI/x+O/El7ZnKGkmh5/iINgIOmQzwX6v0Vj5AVgPE29Ig==', NULL, b'0', 'd8f80399-8c40-4474-9834-3febbad66fb1', b'0', 'DIOGENES@CAROT'),
('c330f62e-f592-4b0f-853c-18f9c9cfcea6', 0, '75fa93a2-0ce8-4e4b-8183-bb8516683477', 'herniroiz@gmail.com', b'0', b'1', NULL, 'HERNIROIZ@GMAIL.COM', 'HERNIROIZ@GMAIL.COM', 'AQAAAAEAACcQAAAAEAKXJAcV4xVbK5a+dDVB6jou2JktXxRMRcCTih5di8kjnknGpHCypOaK7dzKIf3szA==', NULL, b'0', 'd445c88d-309c-4c3a-9d05-ffc47b25a122', b'0', 'herniroiz@gmail.com'),
('f8ca5264-9116-4686-8698-fec86c02f5f2', 0, 'f24d8de4-1352-4c4c-923a-059a26c6a177', 'sinejecutarentucara@gmail.com', b'0', b'1', NULL, 'SINEJECUTARENTUCARA@GMAIL', 'SINEJECUTARENTUCARA@GMAIL', 'AQAAAAEAACcQAAAAEAaZ4nSoQyKHPk66Yr6QsUYqRafEPgdqgJpxoGP3Kq+VyjqeRNymo/ug1OyMdoEWfg==', NULL, b'0', '2e4a9968-c488-463b-afee-e7bce07cb04c', b'0', 'sinejecutarentucara@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `idCategoriaSuperiorFK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `descripcion`, `idCategoriaSuperiorFK`) VALUES
(1, 'Almacen', NULL),
(2, 'Aceites y aderezo', 1),
(3, 'Aceites', 2),
(4, 'Mayonesa', 2),
(5, 'Ketchup', 2),
(6, 'Salsa golf', 2),
(7, 'Mostaza', 2),
(8, 'Vinagre', 2),
(9, 'Aceto', 2),
(10, 'Jugo de limon', 2),
(11, 'Aderezos salsas', 2),
(12, 'Sal y pimienta', 2),
(13, 'Saborizadores', 2),
(14, 'Otros condimentos', 2),
(15, 'Aceitunas y encurtidos', 1),
(16, 'Aceitunas verdes', 15),
(17, 'Aceitunas negras', 15),
(18, 'Aceitunas Rellenas\r\n', 15),
(19, 'Encurtidos\r\n', 15),
(20, 'Conservas\r\n', 1),
(21, 'Conservas De Verdura\r\n', 20),
(22, 'Legumbres\r\n', 20),
(23, 'Coservas De Pescado\r\n', 20),
(24, 'Conservas De Frutas\r\n', 20),
(25, 'Tomates Y Salsas\r\n', 20),
(26, 'Desayuno Y Golosinas\r\n', 1),
(27, 'Azucar\r\n', 26),
(28, 'Edulcorante\r\n', 26),
(29, 'Cacao\r\n', 26),
(30, 'Leche En Polvo\r\n', 26),
(31, 'Mermelada\r\n', 26),
(32, 'Cafe\r\n', 26),
(33, 'Te\r\n', 26),
(34, 'Yerba\r\n', 26),
(35, 'Reposteria\r\n', 26),
(36, 'Golosina\r\n', 26),
(37, 'Cereales\r\n', 26),
(38, 'Galletas Dulces\r\n', 26),
(39, 'Galletas Saladas\r\n', 26),
(40, 'Galletas De Arroz\r\n', 26),
(41, 'Galletas De Agua\r\n', 26),
(42, 'Panificados\r\n', 1),
(43, 'Pan Arabe\r\n', 42),
(44, 'Pan De Molde\r\n', 42),
(45, 'Pan De Hamurguesa Y Panchos\r\n', 42),
(46, 'Pan Rallado\r\n', 42),
(47, 'Tostadas\r\n', 42),
(48, 'Budines\r\n', 42),
(49, 'Prepizza\r\n', 42),
(50, 'Magdalenas\r\n', 42),
(51, 'Arroz Y Leg\r\n', 1),
(52, 'Arroz Largo\r\n', 51),
(53, 'Arroz Integral\r\n', 51),
(54, 'Legumbres\r\n', 51),
(55, 'Snacks\r\n', 1),
(56, 'Papas Fritas\r\n', 55),
(57, 'Chizitos\r\n', 55),
(58, 'Mani\r\n', 55),
(59, 'Palitos\r\n', 55),
(60, 'Pochoclos\r\n', 55),
(61, 'Conos\r\n', 55),
(62, 'Snacks Mix\r\n', 55),
(63, 'Sopas Caldo Pure\r\n', 1),
(64, 'Sopa\r\n', 63),
(65, 'Caldo\r\n', 63),
(66, 'Pure\r\n', 63),
(67, 'Pasta Y Harinas\r\n', 1),
(68, 'Fideos\r\n', 67),
(69, 'Harinas\r\n', 67),
(70, 'Frescos\r\n', NULL),
(71, 'Lacteos\r\n', 70),
(72, 'Leches\r\n', 71),
(73, 'Yogures\r\n', 71),
(74, 'Crema De Leche\r\n', 71),
(75, 'Dulce De Leche\r\n', 71),
(76, 'Levadura Y Grasas\r\n', 71),
(77, 'Manteca\r\n', 71),
(78, 'Margarina\r\n', 71),
(79, 'Postre\r\n', 71),
(80, 'Flanes\r\n', 71),
(81, 'Ricota\r\n', 71),
(82, 'Pasta Y Tapas\r\n', 70),
(83, 'Ñoquis\r\n', 82),
(84, 'Pastas Rellenas\r\n', 82),
(85, 'Tapas De Tarta\r\n', 82),
(86, 'Tapas De Empanadas\r\n', 82),
(87, 'Otras Tapas\r\n', 82),
(88, 'Carniceria\r\n', 70),
(89, 'Carne De Cerdo\r\n', 88),
(90, 'Carne Vacuna\r\n', 88),
(91, 'Carne Preparada\r\n', 88),
(92, 'Embutidos\r\n', 88),
(93, 'Pollo\r\n', 88),
(94, 'Huevos\r\n', 88),
(95, 'Verduleria\r\n', 70),
(96, 'Frutas\r\n', 95),
(97, 'Papas\r\n', 95),
(98, 'Zanahoria\r\n', 95),
(99, 'Pimiento\r\n', 95),
(100, 'Tomate\r\n', 95),
(101, 'Cebolla\r\n', 95),
(102, 'Lechuga\r\n', 95),
(103, 'Acelga\r\n', 95),
(104, 'Otras Verduras\r\n', 95),
(105, 'Fiambreria\r\n', 70),
(106, 'Jamon Cocido\r\n', 105),
(107, 'Jamon Crudo\r\n', 105),
(108, 'Salame\r\n', 105),
(109, 'Salamin\r\n', 105),
(110, 'Salchicha\r\n', 105),
(111, 'Pate\r\n', 105),
(112, 'Queso Blando\r\n', 105),
(113, 'Quedo Rallado\r\n', 105),
(114, 'Queso Cremoso\r\n', 105),
(115, 'Queso Duro\r\n', 105),
(116, 'Bondiola\r\n', 105),
(117, 'Mortadela\r\n', 105),
(118, 'Salchichon\r\n', 105),
(119, 'Congelados\r\n', 70),
(120, 'Hamburguesas\r\n', 119),
(121, 'Papas\r\n', 119),
(122, 'Milanesas De Soja\r\n', 119),
(123, 'Prefitos\r\n', 119),
(124, 'Vegetales\r\n', 119),
(125, 'Pescados Y Marisco\r\n', 119),
(126, 'Comidas Preparadas\r\n', 119),
(127, 'Pizzas\r\n', 119),
(128, 'Helados\r\n', 119),
(129, 'Panaderia\r\n', 70),
(130, 'Donuts\r\n', 129),
(131, 'Alfajores\r\n', 129),
(132, 'Pionono\r\n', 129),
(133, 'Sandwicheria\r\n', 129),
(134, 'Torta\r\n', 129),
(135, 'Bebida\r\n', NULL),
(136, 'Aperitivo\r\n', 135),
(137, 'Fernet\r\n', 136),
(138, 'Cerveza', 135),
(139, 'Rubia\r\n', 138),
(140, 'Negra\r\n', 138),
(141, 'Roja\r\n', 138),
(142, 'Sin Alcohol\r\n', 138),
(143, 'Vinos Y Espumantes\r\n', 135),
(144, 'Vino Blanco\r\n', 143),
(145, 'Vino Tinto\r\n', 143),
(146, 'Vino Rosado\r\n', 143),
(147, 'Espumantes\r\n', 143),
(148, 'Bebidas Blancas\r\n', 135),
(149, 'Licores\r\n', 148),
(150, 'Vodka\r\n', 148),
(151, 'Whiskys\r\n', 135),
(152, 'Agua\r\n', 135),
(153, 'Agua Con Gas\r\n', 152),
(154, 'Agua Sin Gas\r\n', 152),
(155, 'Agua Saborizada\r\n', 152),
(156, 'Gaseosa\r\n', 135),
(157, 'Cola\r\n', 156),
(158, 'Limon\r\n', 156),
(159, 'Naranja\r\n', 156),
(160, 'Pomelo\r\n', 156),
(161, 'Tonica\r\n', 156),
(162, 'Otras\r\n', 156),
(163, 'Jugos\r\n', 135),
(164, 'Jugos En Polvo\r\n', 163),
(165, 'Jugos Listos\r\n', 163),
(166, 'Jugos Concentrados\r\n', 163),
(167, 'Isotonicas Y Energizantes\r\n', 135),
(168, 'Isotonicas\r\n', 167),
(169, 'Energizante\r\n', 167),
(170, 'Perfumeria\r\n', NULL),
(171, 'Cuidado Del Cabello\r\n', 170),
(172, 'Shampoo\r\n', 171),
(173, 'Acondicionador\r\n', 171),
(174, 'Coloracion\r\n', 171),
(175, 'Cuidado Oral\r\n', 170),
(176, 'Cepillo De Dientes\r\n', 175),
(177, 'Crema Dental\r\n', 175),
(178, 'Enjuague Bucal\r\n', 175),
(179, 'Hilo Dental\r\n', 175),
(180, 'Cuidado Facial\r\n', 170),
(181, 'Antiacne\r\n', 180),
(182, 'Limpieza Facial\r\n', 180),
(183, 'Afeitado\r\n', 180),
(184, 'Hidratantes\r\n', 180),
(185, 'Proteccion Femenina\r\n', 170),
(186, 'Protectores Diarios\r\n', 185),
(187, 'Toallitas Higienicas\r\n', 185),
(188, 'Tampones\r\n', 185),
(189, 'Higiene Femenina\r\n', 185),
(190, 'Cuidado Corporal\r\n', 170),
(191, 'Algodones E Hisopos\r\n', 190),
(192, 'Cremas Corporales\r\n', 190),
(193, 'Depilacion\r\n', 190),
(194, 'Desodorante\r\n', 190),
(195, 'Jabon\r\n', 190),
(196, 'Talco\r\n', 190),
(197, 'Protector Solar\r\n', 190),
(198, 'Bronceador\r\n', 190),
(199, 'Bebes\r\n', 170),
(200, 'Pañales\r\n', 199),
(201, 'Toalla Humeda Para Bebe\r\n', 199),
(202, 'Otros Productos De Bebe\r\n', 199),
(203, 'Limpieza\r\n', NULL),
(204, 'Desodorante De Ambiente\r\n', 203),
(205, 'Aceite Aromatizantes\r\n', 204),
(206, 'Aerosoles\r\n', 204),
(207, 'Atomizadores\r\n', 204),
(208, 'Desinfectantes\r\n', 204),
(209, 'Gel\r\n', 204),
(210, 'Papeles\r\n', 203),
(211, 'Pañuelos\r\n', 210),
(212, 'Papel Higienico\r\n', 210),
(213, 'Rollo De Cocina\r\n', 210),
(214, 'Servilleta\r\n', 210),
(215, 'Limpieza De Baño\r\n', 203),
(216, 'Pastilla\r\n', 215),
(217, 'Bloques\r\n', 215),
(218, 'Desinfectante De Baño\r\n', 215),
(219, 'Limpieza De Cocina\r\n', 203),
(220, 'Detergente\r\n', 219),
(221, 'Lavavajillas\r\n', 219),
(222, 'Limpiadores De Cocina\r\n', 219),
(223, 'Destapacañerias\r\n', 219),
(224, 'Esponjas\r\n', 219),
(225, 'Guantes\r\n', 219),
(226, 'Bolsas\r\n', 219),
(227, 'Fosforos\r\n', 219),
(228, 'Velas\r\n', 219),
(229, 'Limpieza De Piso Y Muebles\r\n', 203),
(230, 'Ceras Y Autobrillo\r\n', 229),
(231, 'Limpiador De Piso\r\n', 229),
(232, 'Limpia Vidrios\r\n', 229),
(233, 'Limpiadores Cremoso\r\n', 229),
(234, 'Lustramuebles\r\n', 229),
(235, 'Limpia Metales\r\n', 229),
(236, 'Limpieza De Ropa\r\n', 203),
(237, 'Prelavado\r\n', 236),
(238, 'Quitamancha\r\n', 236),
(239, 'Jabon En Pan\r\n', 236),
(240, 'Jabon En Polvo\r\n', 236),
(241, 'Jabon Liquido\r\n', 236),
(242, 'Ropa Fina\r\n', 236),
(243, 'Suavizante\r\n', 236),
(244, 'Perfume De Tela\r\n', 236),
(245, 'Aprestos\r\n', 236),
(246, 'Lavandina\r\n', 203),
(247, 'Lavandina En Gel\r\n', 246),
(248, 'Lavandina Liquida\r\n', 246),
(249, 'Limpieza De Calzado\r\n', 203),
(250, 'Limpiadores De Calzado\r\n', 249),
(251, 'Limpiadores De Calzado\r\n', 249),
(252, 'Cepillo De Zapatos\r\n', 249),
(253, 'Accesorios De Limpieza\r\n', 203),
(254, 'Esponjas\r\n', 253),
(255, 'Guantes\r\n', 253),
(256, 'Trapos\r\n', 253),
(257, 'Paños\r\n', 253),
(258, 'Secadores\r\n', 253),
(259, 'Cepillos\r\n', 253),
(260, 'Escoba\r\n', 253),
(261, 'Escobillones\r\n', 253),
(262, 'Lampazo\r\n', 253),
(263, 'Plumero\r\n', 253),
(264, 'Balde\r\n', 253),
(265, 'Palangana\r\n', 253),
(266, 'Sopapa\r\n', 253),
(267, 'Palas\r\n', 253),
(268, 'Cesto De Residuo\r\n', 253),
(269, 'Insenticida\r\n', 203),
(270, 'Cucharacha\r\n', 269),
(271, 'Hormiga\r\n', 269),
(272, 'Mosca Y Mosquito\r\n', 269),
(273, 'Polilla Y Pulgas\r\n', 269),
(274, 'Repelente\r\n', 269);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `apellido` longtext NOT NULL,
  `email` longtext,
  `nombre` longtext NOT NULL,
  `password` longtext NOT NULL,
  `nroDoc` int(11) NOT NULL,
  `idTipoDocFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`idCliente`, `username`, `apellido`, `email`, `nombre`, `password`, `nroDoc`, `idTipoDocFK`) VALUES
(9, 'admin', 'admin', 'admin', 'admin', '$2y$10$w3q0pKkwSWZWexloRI45X.gPJzghkxuj4r4rGo9qsZxMAaURtsBzm', 30000000, 1),
(10, 'ivan', 'ivan', 'ivan@g.com', 'ivan', '$2y$10$9wmJWQkChcRChMrkfT.no.geMjemIBKcrTuaIytLKHhxnYfksW1oi', 38180695, 1);

-- --------------------------------------------------------

--
-- Table structure for table `correos`
--

CREATE TABLE `correos` (
  `ID` int(11) NOT NULL,
  `Asunto` longtext NOT NULL,
  `DestinatarioFK` int(11) NOT NULL,
  `FechaCreacion` datetime(6) NOT NULL,
  `Mensaje` longtext NOT NULL,
  `RemitenteFK` int(11) NOT NULL,
  `leido` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `correos`
--

INSERT INTO `correos` (`ID`, `Asunto`, `DestinatarioFK`, `FechaCreacion`, `Mensaje`, `RemitenteFK`, `leido`) VALUES
(1, 'asd', 2, '2018-11-11 00:00:00.000000', 'asd', 2, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `Legajo` int(11) NOT NULL,
  `Activo` bit(1) NOT NULL,
  `Apellido` longtext NOT NULL,
  `Cuenta` bit(1) NOT NULL,
  `Documento` longtext NOT NULL,
  `Email` longtext,
  `FechaBaja` datetime(6) DEFAULT NULL,
  `FechaRegistro` datetime(6) NOT NULL,
  `Nombre` longtext NOT NULL,
  `Sexo` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`Legajo`, `Activo`, `Apellido`, `Cuenta`, `Documento`, `Email`, `FechaBaja`, `FechaRegistro`, `Nombre`, `Sexo`, `TipoDocumento`, `UsuarioAppIdFk`) VALUES
(1, b'1', 'DELLEA', b'1', '34839158', 'MATIAS@MATIAS', NULL, '2018-08-28 00:00:00.000000', 'MATIAS', 'Masculino', 'DNI', NULL),
(2, b'1', 'CAROT', b'1', '33666555', 'diogenes@carot', NULL, '2018-08-28 00:00:00.000000', 'DIOGENES', 'Masculino', 'Pasaporte', NULL),
(3, b'1', 'HERNAN', b'1', '40000000N', 'herniroiz@gmail.com', NULL, '2018-08-28 00:00:00.000000', 'ROIZ', 'Masculino', 'Pasaporte', NULL),
(5, b'1', 'ROMERO', b'1', '25252525', 'pabloromero@gmail.com', NULL, '2018-09-11 00:00:00.000000', 'PABLO', 'Masculino', 'DNI', '7a48e357-f5d3-4587-8ce3-a0981ab99689'),
(6, b'1', 'JAYMEZ', b'1', '35849651', 'sinejecutarentucara@gmail.com', NULL, '2018-10-13 00:00:00.000000', 'JEREMIAS', 'Masculino', 'DNI', 'f8ca5264-9116-4686-8698-fec86c02f5f2');

-- --------------------------------------------------------

--
-- Table structure for table `listados`
--

CREATE TABLE `listados` (
  `idListado` int(11) NOT NULL,
  `fechaCreacion` date NOT NULL,
  `fechaCobro` datetime(6) DEFAULT NULL,
  `fechaCompra` datetime(6) DEFAULT NULL,
  `nombre` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listados`
--

INSERT INTO `listados` (`idListado`, `fechaCreacion`, `fechaCobro`, `fechaCompra`, `nombre`) VALUES
(2, '2019-03-10', NULL, NULL, 'Purim'),
(3, '2019-03-17', NULL, NULL, 'Pesaj'),
(4, '2019-03-15', NULL, NULL, 'Shavuot'),
(105, '2019-03-23', NULL, NULL, 'Casa');

-- --------------------------------------------------------

--
-- Table structure for table `listadoxcliente`
--

CREATE TABLE `listadoxcliente` (
  `idCliente` int(11) NOT NULL,
  `idListado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadoxcliente`
--

INSERT INTO `listadoxcliente` (`idCliente`, `idListado`) VALUES
(9, 105);

-- --------------------------------------------------------

--
-- Table structure for table `listadoxproductos`
--

CREATE TABLE `listadoxproductos` (
  `idListadoxProducto` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `escaneado` bit(1) NOT NULL,
  `idListado` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadoxproductos`
--

INSERT INTO `listadoxproductos` (`idListadoxProducto`, `cant`, `escaneado`, `idListado`, `idProducto`) VALUES
(1, 3, b'1', 2, 15),
(2, 10, b'1', 2, 14),
(3, 15, b'1', 3, 20),
(4, 7, b'0', 3, 18),
(5, 4, b'1', 4, 21),
(6, 10, b'1', 4, 19);

-- --------------------------------------------------------

--
-- Table structure for table `listadoxsubcategoria`
--

CREATE TABLE `listadoxsubcategoria` (
  `idListado` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadoxsubcategoria`
--

INSERT INTO `listadoxsubcategoria` (`idListado`, `idCategoria`) VALUES
(105, 3),
(105, 205);

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` int(11) NOT NULL,
  `nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`idMarca`, `nombre`) VALUES
(1, 'AGD'),
(2, 'NATURA'),
(3, 'SAZON'),
(4, 'KNORR'),
(5, 'HELLMANS'),
(6, 'SANCOR'),
(7, 'LA SERENISIMA'),
(8, 'LA LACTEO'),
(9, 'MANFREY'),
(10, 'Yanovsky'),
(11, 'Windy'),
(12, 'Blueland');

-- --------------------------------------------------------

--
-- Table structure for table `precioxproductos`
--

CREATE TABLE `precioxproductos` (
  `idPPP` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precioxproductos`
--

INSERT INTO `precioxproductos` (`idPPP`, `fecha`, `idProducto`, `precio`) VALUES
(1, '2019-03-11 00:00:00.000000', 15, 50),
(2, '2019-03-14 00:00:00.000000', 14, 30),
(3, '2019-03-14 00:00:00.000000', 15, 40);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `codigo` bigint(20) NOT NULL,
  `descripcion` longtext,
  `idCategoriaFK` int(11) DEFAULT NULL,
  `idMarcaFK` int(11) NOT NULL,
  `idTipoUnidadFK` int(11) NOT NULL,
  `tamano` double NOT NULL,
  `precio` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`idProducto`, `codigo`, `descripcion`, `idCategoriaFK`, `idMarcaFK`, `idTipoUnidadFK`, `tamano`, `precio`) VALUES
(14, 25, 'Natura x 200 cc', 3, 2, 2, 200, '50'),
(15, 21554, 'Caldo knorr vegetal', 2, 4, 1, 1, '40'),
(18, 5454, 'Matza Shmura', 15, 10, 2, 1000, '580'),
(19, 2200, 'Queso en barra', 7, 11, 1, 500, '680'),
(20, 3320, 'Atun', 13, 12, 1, 120, '170'),
(21, 3250, 'Dulce de leche', 11, 11, 1, 500, '60');

-- --------------------------------------------------------

--
-- Table structure for table `promocion`
--

CREATE TABLE `promocion` (
  `idTipoPromocion` int(11) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `descripcion` longtext,
  `formula` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promocion`
--

INSERT INTO `promocion` (`idTipoPromocion`, `cantidadProductos`, `descripcion`, `formula`) VALUES
(1, 2, 'Llevas 2 pagas 1', 50),
(2, 2, 'segunda al 50%', 25);

-- --------------------------------------------------------

--
-- Table structure for table `promocionxproducto`
--

CREATE TABLE `promocionxproducto` (
  `idPromocion` int(11) NOT NULL,
  `fechaFin` datetime(6) NOT NULL,
  `fechaInicio` datetime(6) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idTipoPromocion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promocionxproducto`
--

INSERT INTO `promocionxproducto` (`idPromocion`, `fechaFin`, `fechaInicio`, `idProducto`, `idTipoPromocion`) VALUES
(1, '2019-03-31 00:00:00.000000', '2019-01-16 00:00:00.000000', 14, 1),
(2, '2019-01-08 00:00:00.000000', '2018-12-27 00:00:00.000000', 15, 1),
(3, '2019-09-26 00:00:00.000000', '2019-01-20 00:00:00.000000', 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tipodoc`
--

CREATE TABLE `tipodoc` (
  `idTipoDoc` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipodoc`
--

INSERT INTO `tipodoc` (`idTipoDoc`, `descripcion`) VALUES
(1, 'DNI'),
(2, 'PASAPORTE');

-- --------------------------------------------------------

--
-- Table structure for table `tipos`
--

CREATE TABLE `tipos` (
  `idTipoUnidad` int(11) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipos`
--

INSERT INTO `tipos` (`idTipoUnidad`, `descripcion`) VALUES
(1, 'Unidad'),
(2, 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `usuarioroles`
--

CREATE TABLE `usuarioroles` (
  `RolId` int(11) NOT NULL,
  `Nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarioroles`
--

INSERT INTO `usuarioroles` (`RolId`, `Nombre`) VALUES
(1, 'Admin'),
(2, 'Empleado'),
(3, 'Gerente');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `Apellido` longtext,
  `ConcurrencyStamp` longtext,
  `Documento` longtext,
  `Email` longtext,
  `EmailConfirmed` bit(1) NOT NULL,
  `FechaBaja` datetime(6) DEFAULT NULL,
  `FechaRegistro` datetime(6) NOT NULL,
  `Habilitado` bit(1) NOT NULL,
  `Id` longtext,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `Nombre` longtext,
  `NormalizedEmail` longtext,
  `NormalizedUserName` longtext,
  `PasswordHash` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `Presentar` longtext,
  `RolIdFK` int(11) NOT NULL,
  `SecurityStamp` longtext,
  `TipoDocumento` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` longtext,
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `AccessFailedCount`, `Apellido`, `ConcurrencyStamp`, `Documento`, `Email`, `EmailConfirmed`, `FechaBaja`, `FechaRegistro`, `Habilitado`, `Id`, `LockoutEnabled`, `LockoutEnd`, `Nombre`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `Presentar`, `RolIdFK`, `SecurityStamp`, `TipoDocumento`, `TwoFactorEnabled`, `UserName`, `UsuarioAppIdFk`) VALUES
(1, 0, NULL, 'eeac49e2-a7eb-4333-9c5e-3c7e0fd85ada', '40000000N', NULL, b'0', NULL, '2018-08-28 13:26:55.117308', b'1', '32b61fd8-fba4-457b-934c-d01016c71346', b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 1, NULL, 'Pasaporte', b'0', NULL, 'ad25c9f2-cae9-4fd3-b2ce-901e33e498a3'),
(2, 0, 'DELLEA', 'bd7e4b07-b9d0-4d2d-9ae1-558273b8da2c', '34839158', NULL, b'0', NULL, '2018-09-04 11:12:23.599164', b'1', '643ee8cf-8780-401d-88a7-dfcf6854b51a', b'0', NULL, 'MATIAS', NULL, NULL, NULL, NULL, b'0', 'DELLEA, MATIAS. DNI Nº: 34839158', 2, NULL, 'DNI', b'0', NULL, '416225db-07cc-4340-80a9-594dfd98def7'),
(3, 0, 'ROMERO', '1db9944c-ab0e-436a-bb18-585b14379c9c', '25252525', NULL, b'0', NULL, '2018-09-11 12:56:11.001743', b'1', 'dd103296-2d78-4b44-9213-18df30cdf1c1', b'0', NULL, 'PABLO', NULL, NULL, NULL, NULL, b'0', 'ROMERO, PABLO. DNI Nº: 25252525', 2, NULL, 'DNI', b'0', NULL, '7a48e357-f5d3-4587-8ce3-a0981ab99689'),
(4, 0, 'JAYMEZ', '13202b8e-d4e4-4271-93f5-80192ab23de0', '35849651', NULL, b'0', NULL, '2018-10-13 07:54:35.018823', b'1', 'a75fdedd-2b13-4c3f-b593-c748441a95df', b'0', NULL, 'JEREMIAS', NULL, NULL, NULL, NULL, b'0', 'JAYMEZ, JEREMIAS. DNI Nº: 35849651', 3, NULL, 'DNI', b'0', NULL, 'f8ca5264-9116-4686-8698-fec86c02f5f2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  ADD KEY `IX_AspNetUserClaims_UsuarioId` (`UsuarioId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  ADD KEY `IX_AspNetUserLogins_UsuarioId` (`UsuarioId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RolIdFK` (`RolIdFK`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`),
  ADD KEY `IX_Categorias_idCategoriaSuperiorFK` (`idCategoriaSuperiorFK`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY ` idTipoDocFK` (`idTipoDocFK`);

--
-- Indexes for table `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_Correos_DestinatarioFK` (`DestinatarioFK`),
  ADD KEY `IX_Correos_RemitenteFK` (`RemitenteFK`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Legajo`),
  ADD KEY `IX_Empleados_UsuarioAppIdFk` (`UsuarioAppIdFk`);

--
-- Indexes for table `listados`
--
ALTER TABLE `listados`
  ADD PRIMARY KEY (`idListado`);

--
-- Indexes for table `listadoxcliente`
--
ALTER TABLE `listadoxcliente`
  ADD PRIMARY KEY (`idCliente`,`idListado`) USING BTREE,
  ADD KEY `FK_ListadoxClientes_Listados_idListado` (`idListado`);

--
-- Indexes for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  ADD PRIMARY KEY (`idListadoxProducto`),
  ADD KEY `IX_ListadoXProductos_idProducto` (`idProducto`),
  ADD KEY `FK_ListadoXProductos_Listados_idListado` (`idListado`);

--
-- Indexes for table `listadoxsubcategoria`
--
ALTER TABLE `listadoxsubcategoria`
  ADD PRIMARY KEY (`idListado`,`idCategoria`),
  ADD KEY `FK_listadoxsubcategoria_categorias_idCategoria` (`idCategoria`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indexes for table `precioxproductos`
--
ALTER TABLE `precioxproductos`
  ADD PRIMARY KEY (`idPPP`),
  ADD KEY `IX_PrecioXProductos_idProducto` (`idProducto`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `IX_Productos_idCategoriaFK` (`idCategoriaFK`),
  ADD KEY `IX_Productos_idMarcaFK` (`idMarcaFK`),
  ADD KEY `IX_Productos_idTipoUnidadFK` (`idTipoUnidadFK`);

--
-- Indexes for table `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`idTipoPromocion`);

--
-- Indexes for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  ADD PRIMARY KEY (`idPromocion`),
  ADD KEY `IX_PromocionXProducto_idProducto` (`idProducto`),
  ADD KEY `IX_PromocionXProducto_idTipoPromocion` (`idTipoPromocion`);

--
-- Indexes for table `tipodoc`
--
ALTER TABLE `tipodoc`
  ADD PRIMARY KEY (`idTipoDoc`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`idTipoUnidad`);

--
-- Indexes for table `usuarioroles`
--
ALTER TABLE `usuarioroles`
  ADD PRIMARY KEY (`RolId`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`),
  ADD KEY `IX_Usuarios_RolIdFK` (`RolIdFK`),
  ADD KEY `IX_Usuarios_UsuarioAppIdFk` (`UsuarioAppIdFk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `correos`
--
ALTER TABLE `correos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listados`
--
ALTER TABLE `listados`
  MODIFY `idListado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  MODIFY `idListadoxProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `precioxproductos`
--
ALTER TABLE `precioxproductos`
  MODIFY `idPPP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `promocion`
--
ALTER TABLE `promocion`
  MODIFY `idTipoPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  MODIFY `idPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipodoc`
--
ALTER TABLE `tipodoc`
  MODIFY `idTipoDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `idTipoUnidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarioroles`
--
ALTER TABLE `usuarioroles`
  MODIFY `RolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserClaims_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserLogins_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_Usuarios_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `FK_Categorias_Categorias_idCategoriaSuperiorFK` FOREIGN KEY (`idCategoriaSuperiorFK`) REFERENCES `categorias` (`idCategoria`);

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT ` idTipoDocFK` FOREIGN KEY (`idTipoDocFK`) REFERENCES `tipodoc` (`idTipoDoc`);

--
-- Constraints for table `correos`
--
ALTER TABLE `correos`
  ADD CONSTRAINT `FK_Correos_Usuarios_DestinatarioFK` FOREIGN KEY (`DestinatarioFK`) REFERENCES `usuarios` (`UsuarioId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Correos_Usuarios_RemitenteFK` FOREIGN KEY (`RemitenteFK`) REFERENCES `usuarios` (`UsuarioId`) ON DELETE CASCADE;

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_Empleados_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `aspnetusers` (`Id`);

--
-- Constraints for table `listadoxcliente`
--
ALTER TABLE `listadoxcliente`
  ADD CONSTRAINT `FK_ListadoxClientes_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`),
  ADD CONSTRAINT `FK_ListadoxClientes_Usuarios_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

--
-- Constraints for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  ADD CONSTRAINT `FK_ListadoXProductos_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`),
  ADD CONSTRAINT `FK_ListadoXProductos_Productos_idProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE;

--
-- Constraints for table `listadoxsubcategoria`
--
ALTER TABLE `listadoxsubcategoria`
  ADD CONSTRAINT `FK_listadoxsubcategoria_categorias_idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  ADD CONSTRAINT `FK_listadoxsubcategoria_listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`);

--
-- Constraints for table `precioxproductos`
--
ALTER TABLE `precioxproductos`
  ADD CONSTRAINT `FK_PrecioXProductos_PrecioXProductos_idProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE;

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_Productos_Categorias_idCategoriaFK` FOREIGN KEY (`idCategoriaFK`) REFERENCES `categorias` (`idCategoria`),
  ADD CONSTRAINT `FK_Productos_Marcas_idMarcaFK` FOREIGN KEY (`idMarcaFK`) REFERENCES `marcas` (`idMarca`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Productos_Tipos_idTipoUnidadFK` FOREIGN KEY (`idTipoUnidadFK`) REFERENCES `tipos` (`idTipoUnidad`) ON DELETE CASCADE;

--
-- Constraints for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  ADD CONSTRAINT `FK_PromocionXProducto_Productos_idProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PromocionXProducto_Promocion_idTipoPromocion` FOREIGN KEY (`idTipoPromocion`) REFERENCES `promocion` (`idTipoPromocion`) ON DELETE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_Usuarios_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `aspnetusers` (`Id`),
  ADD CONSTRAINT `FK_Usuarios_UsuarioRoles_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarioroles` (`RolId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
