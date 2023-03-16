-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: u6354r3es4optspf.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: oojft3dn725r957h
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `RoleId` varchar(127) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(127) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
INSERT INTO `aspnetroles` VALUES ('4c50c5ac-71aa-44e8-b058-8cbe99b04b57','302c862a-340f-4f74-b15c-467237523787','Empleado','EMPLEADO'),('556962b2-bd86-4597-ab05-7cd96fb4ffe2','ca374a95-22ff-4dfb-8d84-96cc3c3ac07f','Docente','DOCENTE'),('c9713766-40ce-41f2-98e6-20dbeef71a91','51c1ddec-7875-4780-a65f-0b6cd3bd03dc','Alumno','ALUMNO'),('d82e9bc1-e838-4318-9a4d-11c5dfb6fd81','e73ef89c-e1ee-4831-bca0-af2d77729544','Admin','ADMIN'),('efac5e44-dfd1-4b24-9d40-1caeaa6891c2','d940eaa0-b93a-495f-80f5-95bcbc886422','Gerente','GERENTE');
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  KEY `IX_AspNetUserClaims_UsuarioId` (`UsuarioId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserClaims_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(127) NOT NULL,
  `ProviderKey` varchar(127) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int DEFAULT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  KEY `IX_AspNetUserLogins_UsuarioId` (`UsuarioId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserLogins_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(127) NOT NULL,
  `RoleId` varchar(127) NOT NULL,
  `RolIdFK` int DEFAULT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RolIdFK` (`RolIdFK`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_Usuarios_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
INSERT INTO `aspnetuserroles` VALUES ('60c4d31f-7a1b-4aa8-abdd-1026d1272a42','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL),('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL),('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL);
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(127) NOT NULL,
  `AccessFailedCount` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('50c4d31f-7a1b-4aa8-abdd-1026d1272a42',0,'ac39529f-77cf-4d24-a107-0dfecc4f7cdc','matias@fastshop.com',_binary '\0',_binary '',NULL,'matias@fastshop.com','matias@fastshop.com','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','d8f80399-8c40-4474-9834-3febbad66fb1',_binary '\0','matias@fastshop.com'),('60c4d31f-7a1b-4aa8-abdd-1026d1272a42',0,'f6ee8e31-d6cc-4fb3-9074-ab2c26d56cb3','ADMIN@FASTSHOP.COM.AR',_binary '\0',_binary '',NULL,'ADMIN@FASTSHOP.COM.AR','ADMIN@FASTSHOP.COM.AR','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','a6f2411f-0491-481e-918a-6d15f62fe1a8',_binary '\0','ADMIN@FASTSHOP.COM.AR'),('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3',0,'ac39529f-77cf-4d24-a107-0dfecc4f7cdc','diogenes@fastshop.com',_binary '\0',_binary '',NULL,'diogenes@fastshop.com','diogenes@fastshop.com','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','d8f80399-8c40-4474-9834-3febbad66fb1',_binary '\0','diogenes@fastshop.com'),('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09',0,'d26c2edd-2cb8-4c1b-b6d3-5e2cefeb1293','ivan@fastshop.com',_binary '\0',_binary '',NULL,'ivan@fastshop.com','ivan@fastshop.com','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','f8a1a089-6321-4e24-9b0b-c8cb376dc4a9',_binary '\0','ivan@fastshop.com');
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `IdCategoria` int NOT NULL AUTO_INCREMENT,
  `Descripcion` longtext NOT NULL,
  `IdCategoriaSuperiorFK` int DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`),
  KEY `IX_Categorias_IdCategoriaSuperiorFK` (`IdCategoriaSuperiorFK`),
  CONSTRAINT `FK_Categorias_Categorias_IdCategoriaSuperiorFK` FOREIGN KEY (`IdCategoriaSuperiorFK`) REFERENCES `categorias` (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Almacen',NULL),(26,'Desayuno y Meriendas',1),(38,'Galletas Dulces',26),(39,'Galletas Saladas',26),(40,'Galletas De Arroz',26),(41,'Galletas De Agua',26),(51,'Bebidas',NULL),(52,'Energizantes',51),(53,'Aguas',51),(54,'Aceites y Vinagres',1),(55,'Aderezos',1),(56,'Snacks',1),(57,'Gaseosas',51),(58,'Vinos',51),(59,'Jugos',51),(60,'Limpieza',NULL),(61,'Lavandina',60),(62,'Limpieza de cocina',60),(63,'Limpieza de baño',60),(64,'Enlatados',NULL),(65,'Atun',64),(66,'Soda',51),(67,'Licor',51);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Apellido` longtext NOT NULL,
  `Email` longtext,
  `Nombre` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `nroDoc` int NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (4,'Krupik','ivan@gmail.com','Ivan','DNI','$2y$10$5uYStIqxJrtBLpVuht7ypOgOTbSThXAuDvo8J.Gcxc9Q8gchEJqEe',35652552),(5,'root','root@root.com','root','DNI','$2y$10$Q..cI1nfe1AONB0Gpbukz.s9rPtQBjtYAYt8IQf7Qe8c4ru4OdiLi',1111),(6,'test','test@test.com','test','DNI','$2y$10$5lgLzB31GaAJgv3loJZVhOPVDWXjFVD1XuGRk4OwCnmplo1ud50fi',1111),(7,'Krupik','ivan@test.com','Ivan','DNI','$2y$10$takjPev9hKmunvZZqUOxeOfifqf2HG/HTEoB35/wgIdOA9rSM11bu',1111);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `IdCompra` int NOT NULL AUTO_INCREMENT,
  `IdCliente` int DEFAULT NULL,
  `fechaCompra` datetime DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`IdCompra`),
  KEY `IdCliente_idx` (`IdCliente`),
  CONSTRAINT `IdCliente` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (24,7,'2023-03-16 00:00:00','130',5);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprasxproducto`
--

DROP TABLE IF EXISTS `comprasxproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprasxproducto` (
  `IdCompra` int NOT NULL,
  `IdProducto` int NOT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `IdCompraProducto` int NOT NULL AUTO_INCREMENT,
  `descuento` float DEFAULT NULL,
  PRIMARY KEY (`IdCompraProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprasxproducto`
--

LOCK TABLES `comprasxproducto` WRITE;
/*!40000 ALTER TABLE `comprasxproducto` DISABLE KEYS */;
INSERT INTO `comprasxproducto` VALUES (24,4,120,1,35,0),(24,13,10,4,36,10);
/*!40000 ALTER TABLE `comprasxproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Asunto` longtext NOT NULL,
  `DestinatarioFK` int NOT NULL,
  `FechaCreacion` datetime(6) DEFAULT NULL,
  `Mensaje` longtext NOT NULL,
  `RemitenteFK` int DEFAULT NULL,
  `leido` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_Correos_DestinatarioFK` (`DestinatarioFK`),
  KEY `IX_Correos_RemitenteFK` (`RemitenteFK`),
  CONSTRAINT `FK_Correos_Usuarios_DestinatarioFK` FOREIGN KEY (`DestinatarioFK`) REFERENCES `usuarios` (`UsuarioId`) ON DELETE CASCADE,
  CONSTRAINT `FK_Correos_Usuarios_RemitenteFK` FOREIGN KEY (`RemitenteFK`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correos`
--

LOCK TABLES `correos` WRITE;
/*!40000 ALTER TABLE `correos` DISABLE KEYS */;
INSERT INTO `correos` VALUES (1,'Sistema',11,'2021-05-02 20:36:51.266765','Che acordate de mandar los mails',5,_binary '\0'),(2,'Sistema',5,'2021-05-02 20:37:22.123307','Dale bro ahi lo mando',11,_binary '\0');
/*!40000 ALTER TABLE `correos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Legajo` int NOT NULL AUTO_INCREMENT,
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
  KEY `IX_Empleados_UsuarioAppIdFk` (`UsuarioAppIdFk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,_binary '','DELLEA',_binary '','34839158','MATIAS@MATIAS',NULL,'2018-08-28 00:00:00.000000','MATIAS','Masculino','DNI','60c4d31f-7a1b-4aa8-abdd-1026d1272a42'),(2,_binary '','CAROT',_binary '','33666555','diogenes@carot',NULL,'2018-08-28 00:00:00.000000','DIOGENES','Masculino','Pasaporte',NULL),(3,_binary '','HERNAN',_binary '','40000000N','HERNIROIZ@GMAIL.COM',NULL,'2018-08-28 00:00:00.000000','ROIZ','Masculino','Pasaporte',NULL),(5,_binary '','ROMERO',_binary '','25252525','pabloromero@gmail.com',NULL,'2018-09-11 00:00:00.000000','PABLO','Masculino','DNI','7a48e357-f5d3-4587-8ce3-a0981ab99689'),(6,_binary '','JAYMEZ',_binary '','35849651','sinejecutarentucara@gmail.com',NULL,'2018-10-13 00:00:00.000000','JEREMIAS','Masculino','DNI','f8ca5264-9116-4686-8698-fec86c02f5f2'),(7,_binary '','KRUPIK',_binary '','12345678','ivan@ivan.com',NULL,'2020-11-23 00:00:00.000000','IVAN','Masculino','DNI','b2b5bcf8-49e8-45c4-b924-6c9c0485ac09'),(8,_binary '','PABLO',_binary '','33000111','pablo@gmail.com',NULL,'2021-02-28 00:00:00.000000','NUMERO','Masculino','DNI',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listados`
--

DROP TABLE IF EXISTS `listados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listados` (
  `idListado` int NOT NULL AUTO_INCREMENT,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idListado`),
  KEY `IX_Listados_idCliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listados`
--

LOCK TABLES `listados` WRITE;
/*!40000 ALTER TABLE `listados` DISABLE KEYS */;
INSERT INTO `listados` VALUES (11,'2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000',4),(12,'2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000',4),(14,'2023-03-16 00:00:00.000000','2023-03-16 00:00:00.000000','2023-03-16 00:00:00.000000',7);
/*!40000 ALTER TABLE `listados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxconsumidor`
--

DROP TABLE IF EXISTS `listadoxconsumidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listadoxconsumidor` (
  `IdListadoxCliente` int NOT NULL AUTO_INCREMENT,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int NOT NULL,
  `idListado` int NOT NULL,
  `nombre` longtext,
  PRIMARY KEY (`IdListadoxCliente`),
  KEY `IX_ListadoxConsumidor_idCliente` (`idCliente`),
  KEY `IX_ListadoxConsumidor_idListado` (`idListado`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxconsumidor`
--

LOCK TABLES `listadoxconsumidor` WRITE;
/*!40000 ALTER TABLE `listadoxconsumidor` DISABLE KEYS */;
INSERT INTO `listadoxconsumidor` VALUES (11,'2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000',4,11,'Merienda'),(12,'2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000','2021-05-02 00:00:00.000000',4,12,'Desayuno viernes'),(14,'2023-03-16 00:00:00.000000','2023-03-16 00:00:00.000000','2023-03-16 00:00:00.000000',7,14,'Galletas');
/*!40000 ALTER TABLE `listadoxconsumidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxproductos`
--

DROP TABLE IF EXISTS `listadoxproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listadoxproductos` (
  `idListadoxProducto` int NOT NULL AUTO_INCREMENT,
  `cant` int NOT NULL,
  `escaneado` bit(1) NOT NULL,
  `idCategoriaFK` int NOT NULL,
  `idListado` int NOT NULL,
  PRIMARY KEY (`idListadoxProducto`),
  KEY `IX_ListadoXProductos_idCategoriaFK` (`idCategoriaFK`),
  KEY `IX_ListadoXProductos_idListado` (`idListado`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxproductos`
--

LOCK TABLES `listadoxproductos` WRITE;
/*!40000 ALTER TABLE `listadoxproductos` DISABLE KEYS */;
INSERT INTO `listadoxproductos` VALUES (30,1,_binary '\0',38,11),(31,1,_binary '\0',40,11),(32,1,_binary '\0',39,11),(33,1,_binary '\0',53,12),(34,1,_binary '\0',41,12),(41,1,_binary '\0',40,14),(42,1,_binary '\0',38,14),(43,1,_binary '\0',40,14),(44,1,_binary '\0',41,14),(45,1,_binary '\0',39,14);
/*!40000 ALTER TABLE `listadoxproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `IdMarca` int NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (11,'Windy'),(13,'Dimax'),(14,'Arrocitas'),(15,'Terrabusi'),(16,'Coca Cola'),(17,'Geau'),(18,'Blem'),(19,'Nugo');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `NotificacionesId` int NOT NULL AUTO_INCREMENT,
  `Cuerpo` varchar(150) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  PRIMARY KEY (`NotificacionesId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (11,'Viernes 13 cerrado por el dia','');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `IdProducto` int NOT NULL AUTO_INCREMENT,
  `Codigo` bigint NOT NULL,
  `Descripcion` longtext,
  `IdCategoriaFK` int DEFAULT NULL,
  `IdMarcaFK` int DEFAULT NULL,
  `IdTipoUnidadFK` int NOT NULL,
  `Precio` double NOT NULL,
  `Tamano` double NOT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `IX_Productos_IdCategoriaFK` (`IdCategoriaFK`),
  KEY `IX_Productos_IdMarcaFK` (`IdMarcaFK`),
  KEY `IX_Productos_IdTipoUnidadFK` (`IdTipoUnidadFK`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (3,7790538009516,'Galletas arroz',40,14,2,70.5,100),(4,7798144941039,'Pepas con chocolate',38,13,2,120,1),(5,7790538009547,'Mini Arrocitas',40,14,1,65,1),(7,77900845,'Tita chica',38,15,1,45,5),(10,7790895645778,'Smartwater sin gas 591 ml',53,17,1,55,1),(11,7790463000084,'Blem original 360 ml',62,18,1,120,1),(12,7790895067556,'Coca cola sin azucar 1.5 lts',57,16,1,150,1),(13,691535521018,'Real dark chocolate',38,19,2,10,50);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocion` (
  `IdTipoPromocion` int NOT NULL AUTO_INCREMENT,
  `CantidadProductos` int NOT NULL,
  `Descripcion` longtext,
  `Formula` double NOT NULL,
  `ProductoAplicado` int NOT NULL,
  `ClasePromocion` longtext,
  PRIMARY KEY (`IdTipoPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES (2,2,'2x1',0.5,1,'Producto');
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocionxproducto`
--

DROP TABLE IF EXISTS `promocionxproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocionxproducto` (
  `IdPromocion` int NOT NULL AUTO_INCREMENT,
  `FechaFin` datetime(6) NOT NULL,
  `FechaInicio` datetime(6) NOT NULL,
  `IdCategoriaFK` int DEFAULT NULL,
  `IdProductoFK` int DEFAULT NULL,
  `IdTipoPromocionFK` int NOT NULL,
  `Stock` double NOT NULL,
  `Prioridad` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`IdPromocion`),
  KEY `IX_PromocionXProducto_IdCategoriaFK` (`IdCategoriaFK`),
  KEY `IX_PromocionXProducto_IdProductoFK` (`IdProductoFK`),
  KEY `IX_PromocionXProducto_IdTipoPromocionFK` (`IdTipoPromocionFK`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocionxproducto`
--

LOCK TABLES `promocionxproducto` WRITE;
/*!40000 ALTER TABLE `promocionxproducto` DISABLE KEYS */;
INSERT INTO `promocionxproducto` VALUES (39,'2023-10-19 00:00:00.000000','2023-02-13 00:00:00.000000',1,4,2,10,3),(40,'2021-08-10 00:00:00.000000','2021-07-19 00:00:00.000000',NULL,12,2,2,1),(41,'2021-08-20 00:00:00.000000','2021-07-19 00:00:00.000000',NULL,10,2,4,0),(42,'2021-08-05 00:00:00.000000','2021-07-13 00:00:00.000000',NULL,7,2,1,7),(43,'2023-09-21 00:00:00.000000','2023-01-09 00:00:00.000000',NULL,13,2,10,1);
/*!40000 ALTER TABLE `promocionxproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos` (
  `IdTipoUnidad` int NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`IdTipoUnidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Unidad'),(2,'KG'),(3,'cm');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioroles`
--

DROP TABLE IF EXISTS `usuarioroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioroles` (
  `RolId` int NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioroles`
--

LOCK TABLES `usuarioroles` WRITE;
/*!40000 ALTER TABLE `usuarioroles` DISABLE KEYS */;
INSERT INTO `usuarioroles` VALUES (1,'Admin'),(2,'Empleado'),(3,'Gerente');
/*!40000 ALTER TABLE `usuarioroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `UsuarioId` int NOT NULL AUTO_INCREMENT,
  `AccessFailedCount` int NOT NULL,
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
  `RolIdFK` int NOT NULL,
  `SecurityStamp` longtext,
  `TipoDocumento` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` longtext,
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`UsuarioId`),
  KEY `IX_Usuarios_RolIdFK` (`RolIdFK`),
  KEY `IX_Usuarios_UsuarioAppIdFk` (`UsuarioAppIdFk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (5,0,'KRUPIK','86981b39-d602-42a4-8006-9cf71261f2a8','12345678','ivan@fastshop.com',_binary '\0',NULL,'2020-11-23 12:01:35.028886',_binary '','f88f37b6-184c-4175-bdda-8ae7b5a6e9d9',_binary '\0',NULL,'IVAN',NULL,NULL,'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','KRUPIK, IVAN. ADMIN',1,NULL,'DNI',_binary '\0',NULL,'b2b5bcf8-49e8-45c4-b924-6c9c0485ac09'),(11,0,'CAROT','86981b39-d602-42a4-8006-9cf71261f2a8','123456789','diogenes@fastshop.com',_binary '\0',NULL,'2020-11-23 12:01:35.028886',_binary '','f88f37b6-184c-4175-bdda-8ae7b5a6e9d9',_binary '\0',NULL,'DIOGENES',NULL,NULL,'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','CAROT, DIOGENES. ADMIN',1,NULL,'DNI',_binary '\0',NULL,'ad25c9f2-cae9-4fd3-b2ce-901e33e498a3'),(12,0,'DELLEA','86981b39-d602-42a4-8006-9cf71261f2a8','1234567890','matias@fastshop.com',_binary '\0',NULL,'2020-11-23 12:01:35.028886',_binary '','f88f37b6-184c-4175-bdda-8ae7b5a6e9d9',_binary '\0',NULL,'MATIAS',NULL,NULL,'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,_binary '\0','DELLEA, MATIAS. ADMIN',1,NULL,'DNI',_binary '\0',NULL,'50c4d31f-7a1b-4aa8-abdd-1026d1272a42');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 16:39:30
