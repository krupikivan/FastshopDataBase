CREATE DATABASE  IF NOT EXISTS `fastshop_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `fastshop_db`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: fastshop
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20181108013255_initial','1.1.2'),('20181110174731_11-10','1.1.2'),('20200331134526_fkListado','1.1.2');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `AspNetRoleClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `RoleId` varchar(127) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `AspNetRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetRoles` (
  `Id` varchar(127) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `AspNetRoles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
INSERT INTO `AspNetRoles` VALUES ('4c50c5ac-71aa-44e8-b058-8cbe99b04b57','302c862a-340f-4f74-b15c-467237523787','Empleado','EMPLEADO'),('556962b2-bd86-4597-ab05-7cd96fb4ffe2','ca374a95-22ff-4dfb-8d84-96cc3c3ac07f','Docente','DOCENTE'),('c9713766-40ce-41f2-98e6-20dbeef71a91','51c1ddec-7875-4780-a65f-0b6cd3bd03dc','Alumno','ALUMNO'),('d82e9bc1-e838-4318-9a4d-11c5dfb6fd81','e73ef89c-e1ee-4831-bca0-af2d77729544','Admin','ADMIN'),('efac5e44-dfd1-4b24-9d40-1caeaa6891c2','d940eaa0-b93a-495f-80f5-95bcbc886422','Gerente','GERENTE');
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `AspNetUserClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  KEY `IX_AspNetUserClaims_UsuarioId` (`UsuarioId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserClaims_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuarios` (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `AspNetUserLogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(127) NOT NULL,
  `ProviderKey` varchar(127) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  KEY `IX_AspNetUserLogins_UsuarioId` (`UsuarioId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserLogins_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `AspNetUserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(127) NOT NULL,
  `RoleId` varchar(127) NOT NULL,
  `RolIdFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RolIdFK` (`RolIdFK`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_Usuarios_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarios` (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `AspNetUserRoles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
INSERT INTO `AspNetUserRoles` VALUES 
('60c4d31f-7a1b-4aa8-abdd-1026d1272a42','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL),
('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL);
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetUsers` (
  `Id` varchar(127) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `PasswordHash` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES 
('60c4d31f-7a1b-4aa8-abdd-1026d1272a42',0,'f6ee8e31-d6cc-4fb3-9074-ab2c26d56cb3','ADMIN@FASTSHOP.COM.AR','\0','1',NULL,'ADMIN@FASTSHOP.COM.AR','ADMIN@FASTSHOP.COM.AR','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,'\0','a6f2411f-0491-481e-918a-6d15f62fe1a8','\0','ADMIN@FASTSHOP.COM.AR'),
('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3',0,'ac39529f-77cf-4d24-a107-0dfecc4f7cdc','user@fastshop.com','\0','1',NULL,'user@fastshop.com','user@fastshop.com','AQAAAAEAACcQAAAAEKg8fYNPhwfrIqA+SlY7gRI/x+O/El7ZnKGkmh5/iINgIOmQzwX6v0Vj5AVgPE29Ig==',NULL,'\0','d8f80399-8c40-4474-9834-3febbad66fb1','\0','user@fastshop.com');
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserTokens`
--

DROP TABLE IF EXISTS `AspNetUserTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Categorias` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` longtext NOT NULL,
  `IdCategoriaSuperiorFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`),
  KEY `IX_Categorias_IdCategoriaSuperiorFK` (`IdCategoriaSuperiorFK`),
  CONSTRAINT `FK_Categorias_Categorias_IdCategoriaSuperiorFK` FOREIGN KEY (`IdCategoriaSuperiorFK`) REFERENCES `categorias` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES 
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
(18, 'Aceitunas Rellenas', 15),
(19, 'Encurtidos', 15),
(20, 'Conservas', 1),
(21, 'Conservas De Verdura', 20),
(22, 'Legumbres', 20),
(23, 'Coservas De Pescado', 20),
(24, 'Conservas De Frutas', 20),
(25, 'Tomates Y Salsas', 20),
(26, 'Desayuno Y Golosinas', 1),
(27, 'Azucar', 26),
(28, 'Edulcorante', 26),
(29, 'Cacao', 26),
(30, 'Leche En Polvo', 26),
(31, 'Mermelada', 26),
(32, 'Cafe', 26),
(33, 'Te', 26),
(34, 'Yerba', 26),
(35, 'Reposteria', 26),
(36, 'Golosina', 26),
(37, 'Cereales', 26),
(38, 'Galletas Dulces', 26),
(39, 'Galletas Saladas', 26),
(40, 'Galletas De Arroz', 26),
(41, 'Galletas De Agua', 26),
(42, 'Panificados', 1),
(43, 'Pan Arabe', 42),
(44, 'Pan De Molde', 42),
(45, 'Pan De Hamurguesa Y Panchos', 42),
(46, 'Pan Rallado', 42),
(47, 'Tostadas', 42),
(48, 'Budines', 42),
(49, 'Prepizza', 42),
(50, 'Magdalenas', 42),
(51, 'Arroz Y Leg', 1),
(52, 'Arroz Largo', 51),
(53, 'Arroz Integral', 51),
(54, 'Legumbres', 51),
(55, 'Snacks', 1),
(56, 'Papas Fritas', 55),
(57, 'Chizitos', 55),
(58, 'Mani', 55),
(59, 'Palitos', 55),
(60, 'Pochoclos', 55),
(61, 'Conos', 55),
(62, 'Snacks Mix', 55),
(63, 'Sopas Caldo Pure', 1),
(64, 'Sopa', 63),
(65, 'Caldo', 63),
(66, 'Pure', 63),
(67, 'Pasta Y Harinas', 1),
(68, 'Fideos', 67),
(69, 'Harinas', 67),
(70, 'Frescos', NULL),
(71, 'Lacteos', 70),
(72, 'Leches', 71),
(73, 'Yogures', 71),
(74, 'Crema De Leche', 71),
(75, 'Dulce De Leche', 71),
(76, 'Levadura Y Grasas', 71),
(77, 'Manteca', 71),
(78, 'Margarina', 71),
(79, 'Postre', 71),
(80, 'Flanes', 71),
(81, 'Ricota', 71),
(82, 'Pasta Y Tapas', 70),
(83, 'Ñoquis', 82),
(84, 'Pastas Rellenas', 82),
(85, 'Tapas De Tarta', 82),
(86, 'Tapas De Empanadas', 82),
(87, 'Otras Tapas', 82),
(88, 'Carniceria', 70),
(89, 'Carne De Cerdo', 88),
(90, 'Carne Vacuna', 88),
(91, 'Carne Preparada', 88),
(92, 'Embutidos', 88),
(93, 'Pollo', 88),
(94, 'Huevos', 88),
(95, 'Verduleria', 70),
(96, 'Frutas', 95),
(97, 'Papas', 95),
(98, 'Zanahoria', 95),
(99, 'Pimiento', 95),
(100, 'Tomate', 95),
(101, 'Cebolla', 95),
(102, 'Lechuga', 95),
(103, 'Acelga', 95),
(104, 'Otras Verduras', 95),
(105, 'Fiambreria', 70),
(106, 'Jamon Cocido', 105),
(107, 'Jamon Crudo', 105),
(108, 'Salame', 105),
(109, 'Salamin', 105),
(110, 'Salchicha', 105),
(111, 'Pate', 105),
(112, 'Queso Blando', 105),
(113, 'Quedo Rallado', 105),
(114, 'Queso Cremoso', 105),
(115, 'Queso Duro', 105),
(116, 'Bondiola', 105),
(117, 'Mortadela', 105),
(118, 'Salchichon', 105),
(119, 'Congelados', 70),
(120, 'Hamburguesas', 119),
(121, 'Papas', 119),
(122, 'Milanesas De Soja', 119),
(123, 'Prefitos', 119),
(124, 'Vegetales', 119),
(125, 'Pescados Y Marisco', 119),
(126, 'Comidas Preparadas', 119),
(127, 'Pizzas', 119),
(128, 'Helados', 119),
(129, 'Panaderia', 70),
(130, 'Donuts', 129),
(131, 'Alfajores', 129),
(132, 'Pionono', 129),
(133, 'Sandwicheria', 129),
(134, 'Torta', 129),
(135, 'Bebida', NULL),
(136, 'Aperitivo', 135),
(137, 'Fernet', 136),
(138, 'Cerveza', 135),
(139, 'Rubia', 138),
(140, 'Negra', 138),
(141, 'Roja', 138),
(142, 'Sin Alcohol', 138),
(143, 'Vinos Y Espumantes', 135),
(144, 'Vino Blanco', 143),
(145, 'Vino Tinto', 143),
(146, 'Vino Rosado', 143),
(147, 'Espumantes', 143),
(148, 'Bebidas Blancas', 135),
(149, 'Licores', 148),
(150, 'Vodka', 148),
(151, 'Whiskys', 135),
(152, 'Agua', 135),
(153, 'Agua Con Gas', 152),
(154, 'Agua Sin Gas', 152),
(155, 'Agua Saborizada', 152),
(156, 'Gaseosa', 135),
(157, 'Cola', 156),
(158, 'Limon', 156),
(159, 'Naranja', 156),
(160, 'Pomelo', 156),
(161, 'Tonica', 156),
(162, 'Otras', 156),
(163, 'Jugos', 135),
(164, 'Jugos En Polvo', 163),
(165, 'Jugos Listos', 163),
(166, 'Jugos Concentrados', 163),
(167, 'Isotonicas Y Energizantes', 135),
(168, 'Isotonicas', 167),
(169, 'Energizante', 167),
(170, 'Perfumeria', NULL),
(171, 'Cuidado Del Cabello', 170),
(172, 'Shampoo', 171),
(173, 'Acondicionador', 171),
(174, 'Coloracion', 171),
(175, 'Cuidado Oral', 170),
(176, 'Cepillo De Dientes', 175),
(177, 'Crema Dental', 175),
(178, 'Enjuague Bucal', 175),
(179, 'Hilo Dental', 175),
(180, 'Cuidado Facial', 170),
(181, 'Antiacne', 180),
(182, 'Limpieza Facial', 180),
(183, 'Afeitado', 180),
(184, 'Hidratantes', 180),
(185, 'Proteccion Femenina', 170),
(186, 'Protectores Diarios', 185),
(187, 'Toallitas Higienicas', 185),
(188, 'Tampones', 185),
(189, 'Higiene Femenina', 185),
(190, 'Cuidado Corporal', 170),
(191, 'Algodones E Hisopos', 190),
(192, 'Cremas Corporales', 190),
(193, 'Depilacion', 190),
(194, 'Desodorante', 190),
(195, 'Jabon', 190),
(196, 'Talco', 190),
(197, 'Protector Solar', 190),
(198, 'Bronceador', 190),
(199, 'Bebes', 170),
(200, 'Pañales', 199),
(201, 'Toalla Humeda Para Bebe', 199),
(202, 'Otros Productos De Bebe', 199),
(203, 'Limpieza', NULL),
(204, 'Desodorante De Ambiente', 203),
(205, 'Aceite Aromatizantes', 204),
(206, 'Aerosoles', 204),
(207, 'Atomizadores', 204),
(208, 'Desinfectantes', 204),
(209, 'Gel', 204),
(210, 'Papeles', 203),
(211, 'Pañuelos', 210),
(212, 'Papel Higienico', 210),
(213, 'Rollo De Cocina', 210),
(214, 'Servilleta', 210),
(215, 'Limpieza De Baño', 203),
(216, 'Pastilla', 215),
(217, 'Bloques', 215),
(218, 'Desinfectante De Baño', 215),
(219, 'Limpieza De Cocina', 203),
(220, 'Detergente', 219),
(221, 'Lavavajillas', 219),
(222, 'Limpiadores De Cocina', 219),
(223, 'Destapacañerias', 219),
(224, 'Esponjas', 219),
(225, 'Guantes', 219),
(226, 'Bolsas', 219),
(227, 'Fosforos', 219),
(228, 'Velas', 219),
(229, 'Limpieza De Piso Y Muebles', 203),
(230, 'Ceras Y Autobrillo', 229),
(231, 'Limpiador De Piso', 229),
(232, 'Limpia Vidrios', 229),
(233, 'Limpiadores Cremoso', 229),
(234, 'Lustramuebles', 229),
(235, 'Limpia Metales', 229),
(236, 'Limpieza De Ropa', 203),
(237, 'Prelavado', 236),
(238, 'Quitamancha', 236),
(239, 'Jabon En Pan', 236),
(240, 'Jabon En Polvo', 236),
(241, 'Jabon Liquido', 236),
(242, 'Ropa Fina', 236),
(243, 'Suavizante', 236),
(244, 'Perfume De Tela', 236),
(245, 'Aprestos', 236),
(246, 'Lavandina', 203),
(247, 'Lavandina En Gel', 246),
(248, 'Lavandina Liquida', 246),
(249, 'Limpieza De Calzado', 203),
(250, 'Limpiadores De Calzado', 249),
(251, 'Limpiadores De Calzado', 249),
(252, 'Cepillo De Zapatos', 249),
(253, 'Accesorios De Limpieza', 203),
(254, 'Esponjas', 253),
(255, 'Guantes', 253),
(256, 'Trapos', 253),
(257, 'Paños', 253),
(258, 'Secadores', 253),
(259, 'Cepillos', 253),
(260, 'Escoba', 253),
(261, 'Escobillones', 253),
(262, 'Lampazo', 253),
(263, 'Plumero', 253),
(264, 'Balde', 253),
(265, 'Palangana', 253),
(266, 'Sopapa', 253),
(267, 'Palas', 253),
(268, 'Cesto De Residuo', 253),
(269, 'Insenticida', 203),
(270, 'Cucharacha', 269),
(271, 'Hormiga', 269),
(272, 'Mosca Y Mosquito', 269),
(273, 'Polilla Y Pulgas', 269),
(274, 'Repelente', 269);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Apellido` longtext NOT NULL,
  `Email` longtext,
  `Nombre` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `contrasena` longtext NOT NULL,
  `nroDoc` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES 
(4,'admin','admin@admin.com','admin','DNI','$2y$10$5uYStIqxJrtBLpVuht7ypOgOTbSThXAuDvo8J.Gcxc9Q8gchEJqEe',35652552),
(5,'root','root@root.com','root','DNI','$2y$10$Q..cI1nfe1AONB0Gpbukz.s9rPtQBjtYAYt8IQf7Qe8c4ru4OdiLi',1111);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `correos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asunto` longtext NOT NULL,
  `DestinatarioFK` int(11) NOT NULL,
  `FechaCreacion` datetime(6) DEFAULT NULL,
  `Mensaje` longtext NOT NULL,
  `RemitenteFK` int(11) DEFAULT NULL,
  `leido` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_Correos_DestinatarioFK` (`DestinatarioFK`),
  KEY `IX_Correos_RemitenteFK` (`RemitenteFK`),
  CONSTRAINT `FK_Correos_Usuarios_DestinatarioFK` FOREIGN KEY (`DestinatarioFK`) REFERENCES `Usuarios` (`usuarioid`) ON DELETE CASCADE,
  CONSTRAINT `FK_Correos_Usuarios_RemitenteFK` FOREIGN KEY (`RemitenteFK`) REFERENCES `Usuarios` (`usuarioid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Empleados` (
  `Legajo` int(11) NOT NULL AUTO_INCREMENT,
  `Activo` bit(1) NOT NULL,
  `Apellido` longtext NOT NULL,
  `Cuenta` bit(1) NOT NULL,
  `Documento` longtext NOT NULL,
  `Email` longtext NOT NULL,
  `FechaBaja` datetime(6) DEFAULT NULL,
  `FechaRegistro` datetime(6) NOT NULL,
  `Nombre` longtext NOT NULL,
  `Sexo` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`Legajo`),
  KEY `IX_Empleados_UsuarioAppIdFk` (`UsuarioAppIdFk`),
  CONSTRAINT `FK_Empleados_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `AspNetUsers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES 
(1, b'1', 'DELLEA', b'1', '34839158', 'MATIAS@MATIAS', NULL, '2018-08-28 00:00:00.000000', 'MATIAS', 'Masculino', 'DNI', '60c4d31f-7a1b-4aa8-abdd-1026d1272a42'),
(2, b'1', 'CAROT', b'1', '33666555', 'diogenes@carot', NULL, '2018-08-28 00:00:00.000000', 'DIOGENES', 'Masculino', 'Pasaporte', NULL),
(3, b'1', 'HERNAN', b'1', '40000000N', 'herniroiz@gmail.com', NULL, '2018-08-28 00:00:00.000000', 'ROIZ', 'Masculino', 'Pasaporte', NULL),
(5, b'1', 'ROMERO', b'1', '25252525', 'pabloromero@gmail.com', NULL, '2018-09-11 00:00:00.000000', 'PABLO', 'Masculino', 'DNI', '7a48e357-f5d3-4587-8ce3-a0981ab99689'),
(6, b'1', 'JAYMEZ', b'1', '35849651', 'sinejecutarentucara@gmail.com', NULL, '2018-10-13 00:00:00.000000', 'JEREMIAS', 'Masculino', 'DNI', 'f8ca5264-9116-4686-8698-fec86c02f5f2');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listados`
--

DROP TABLE IF EXISTS `listados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listados` (
  `idListado` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idListado`),
  KEY `IX_Listados_idCliente` (`idCliente`),
  CONSTRAINT `FK_Listados_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idcliente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listados`
--

LOCK TABLES `listados` WRITE;
/*!40000 ALTER TABLE `listados` DISABLE KEYS */;
INSERT INTO `listados` VALUES 
(1,'2020-03-31 00:00:00.000000','2020-03-31 00:00:00.000000','2020-03-31 00:00:00.000000',4);
/*!40000 ALTER TABLE `listados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxconsumidor`
--

DROP TABLE IF EXISTS `listadoxconsumidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listadoxconsumidor` (
  `IdListadoxCliente` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idListado` int(11) NOT NULL,
  `nombre` longtext,
  PRIMARY KEY (`IdListadoxCliente`),
  KEY `IX_ListadoxConsumidor_idCliente` (`idCliente`),
  KEY `IX_ListadoxConsumidor_idListado` (`idListado`),
  CONSTRAINT `FK_ListadoxConsumidor_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idcliente`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoxConsumidor_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idlistado`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxconsumidor`
--

LOCK TABLES `listadoxconsumidor` WRITE;
/*!40000 ALTER TABLE `listadoxconsumidor` DISABLE KEYS */;
INSERT INTO `listadoxconsumidor` VALUES 
(1,'2020-03-31 00:00:00.000000','2020-03-31 00:00:00.000000','2020-03-31 00:00:00.000000',4,1,'Listado 1');
/*!40000 ALTER TABLE `listadoxconsumidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxproductos`
--

DROP TABLE IF EXISTS `listadoxproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listadoxproductos` (
  `idListadoxProducto` int(11) NOT NULL AUTO_INCREMENT,
  `cant` int(11) NOT NULL,
  `escaneado` bit(1) NOT NULL,
  `idCategoriaFK` int(11) NOT NULL,
  `idListado` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idListadoxProducto`),
  KEY `IX_ListadoXProductos_idCategoriaFK` (`idCategoriaFK`),
  KEY `IX_ListadoXProductos_idProducto` (`idProducto`),
  KEY `IX_ListadoXProductos_idListado` (`idListado`),
  CONSTRAINT `FK_ListadoXProductos_Categorias_idCategoriaFK` FOREIGN KEY (`idCategoriaFK`) REFERENCES `Categorias` (`idcategoria`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoXProductos_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idlistado`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoXProductos_Productos_idProducto` FOREIGN KEY (`idProducto`) REFERENCES `Productos` (`idproducto`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxproductos`
--

LOCK TABLES `listadoxproductos` WRITE;
/*!40000 ALTER TABLE `listadoxproductos` DISABLE KEYS */;
INSERT INTO `listadoxproductos` VALUES 
(1,1,'\0',2,1,1),(2,1,'\0',10,1,1),(3,1,'\0',11,1,1);
/*!40000 ALTER TABLE `listadoxproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `Marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Marcas` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `Marcas` WRITE;
/*!40000 ALTER TABLE `Marcas` DISABLE KEYS */;
INSERT INTO `Marcas` VALUES 
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
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Productos` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` bigint(20) NOT NULL,
  `Descripcion` longtext,
  `IdCategoriaFK` int(11) DEFAULT NULL,
  `IdMarcaFK` int(11) DEFAULT NULL,
  `IdTipoUnidadFK` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Tamano` double NOT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `IX_Productos_IdCategoriaFK` (`IdCategoriaFK`),
  KEY `IX_Productos_IdMarcaFK` (`IdMarcaFK`),
  KEY `IX_Productos_IdTipoUnidadFK` (`IdTipoUnidadFK`),
  CONSTRAINT `FK_Productos_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `Categorias` (`idcategoria`),
  CONSTRAINT `FK_Productos_Marcas_IdMarcaFK` FOREIGN KEY (`IdMarcaFK`) REFERENCES `Marcas` (`idmarca`),
  CONSTRAINT `FK_Productos_Tipos_IdTipoUnidadFK` FOREIGN KEY (`IdTipoUnidadFK`) REFERENCES `Tipos` (`idtipounidad`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES 
(1,1,'Generico',1,1,1,50,1),
(2,2,'Leche entera',3,1,1,50,2),
(3,3,'Dulce de Leche',5,1,1,50,3),
(4,4,'Budin marmolado',6,1,1,50,4),
(5,5,'Detergente ALA',6,1,1,50,5),
(6,6,'Lavandina',9,1,1,50,6),
(7,7,'Papel',9,1,1,50,7),
(8,0,'Atun en lata',2,1,1,50,8),
(9,9,'Milanesa de soja',8,1,1,50,9),
(10,10,'Escarbadientes',7,1,1,50,10),
(11,11,'Choclo cremoso',2,1,1,50,11),
(12,12,'Queso cremoso',4,1,1,50,12),
(13,13,'Hamburguesas',1,1,1,50,13);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promocion` (
  `IdTipoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `CantidadProductos` int(11) NOT NULL,
  `Descripcion` longtext,
  `Formula` double NOT NULL,
  `ProductoAplicado` int(11) NOT NULL,
  `ClasePromocion` longtext,
  PRIMARY KEY (`IdTipoPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES 
(1,2,'2x1 en Leches',0.5,1,'Clase 1');
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromocionXProducto`
--

DROP TABLE IF EXISTS `PromocionXProducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `PromocionXProducto` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `FechaFin` datetime(6) NOT NULL,
  `FechaInicio` datetime(6) NOT NULL,
  `IdCategoriaFK` int(11) DEFAULT NULL,
  `IdProductoFK` int(11) DEFAULT NULL,
  `IdTipoPromocionFK` int(11) NOT NULL,
  `Stock` double NOT NULL,
  PRIMARY KEY (`IdPromocion`),
  KEY `IX_PromocionXProducto_IdCategoriaFK` (`IdCategoriaFK`),
  KEY `IX_PromocionXProducto_IdProductoFK` (`IdProductoFK`),
  KEY `IX_PromocionXProducto_IdTipoPromocionFK` (`IdTipoPromocionFK`),
  CONSTRAINT `FK_PromocionXProducto_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `Categorias` (`idcategoria`),
  CONSTRAINT `FK_PromocionXProducto_Productos_IdProductoFK` FOREIGN KEY (`IdProductoFK`) REFERENCES `Productos` (`idproducto`),
  CONSTRAINT `FK_PromocionXProducto_Promocion_IdTipoPromocionFK` FOREIGN KEY (`IdTipoPromocionFK`) REFERENCES `Promocion` (`idtipopromocion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromocionXProducto`
--

LOCK TABLES `PromocionXProducto` WRITE;
/*!40000 ALTER TABLE `PromocionXProducto` DISABLE KEYS */;
INSERT INTO `PromocionXProducto` VALUES 
(1,'2021-10-03 00:00:00.000000','2020-03-03 00:00:00.000000',1,2,1,20);
/*!40000 ALTER TABLE `PromocionXProducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipos`
--

DROP TABLE IF EXISTS `Tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Tipos` (
  `IdTipoUnidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`IdTipoUnidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipos`
--

LOCK TABLES `Tipos` WRITE;
/*!40000 ALTER TABLE `Tipos` DISABLE KEYS */;
INSERT INTO `Tipos` VALUES 
(1,'Unidad'),(2,'KG'),(3,'cm');
/*!40000 ALTER TABLE `Tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioroles`
--

DROP TABLE IF EXISTS `usuarioroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarioroles` (
  `RolId` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioroles`
--

LOCK TABLES `usuarioroles` WRITE;
/*!40000 ALTER TABLE `usuarioroles` DISABLE KEYS */;
INSERT INTO `usuarioroles` VALUES 
(1,'Admin'),
(2,'Empleado'),
(3,'Gerente');
/*!40000 ALTER TABLE `usuarioroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Usuarios` (
  `UsuarioId` int(11) NOT NULL AUTO_INCREMENT,
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
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`UsuarioId`),
  KEY `IX_Usuarios_RolIdFK` (`RolIdFK`),
  KEY `IX_Usuarios_UsuarioAppIdFk` (`UsuarioAppIdFk`),
  CONSTRAINT `FK_Usuarios_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `AspNetUsers` (`id`),
  CONSTRAINT `FK_Usuarios_UsuarioRoles_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarioroles` (`rolid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES 
(1,0,NULL,'eeac49e2-a7eb-4333-9c5e-3c7e0fd85ada','40000000N',NULL,'\0',NULL,'2018-08-28 13:26:55.117308','','32b61fd8-fba4-457b-934c-d01016c71346','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,'Pasaporte','\0',NULL,'60c4d31f-7a1b-4aa8-abdd-1026d1272a42');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fastshop'
--

--
-- Dumping routines for database 'fastshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 12:15:44
