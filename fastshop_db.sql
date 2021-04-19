-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: fastshop_db
-- ------------------------------------------------------
-- Server version	5.7.32-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `fastshop_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fastshop_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fastshop_db`;

--
-- Table structure for table `AspNetRoleClaims`
--

DROP TABLE IF EXISTS `AspNetRoleClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Dumping data for table `AspNetRoleClaims`
--

LOCK TABLES `AspNetRoleClaims` WRITE;
/*!40000 ALTER TABLE `AspNetRoleClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoleClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoles`
--

DROP TABLE IF EXISTS `AspNetRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Dumping data for table `AspNetRoles`
--

LOCK TABLES `AspNetRoles` WRITE;
/*!40000 ALTER TABLE `AspNetRoles` DISABLE KEYS */;
INSERT INTO `AspNetRoles` VALUES ('4c50c5ac-71aa-44e8-b058-8cbe99b04b57','302c862a-340f-4f74-b15c-467237523787','Empleado','EMPLEADO'),('556962b2-bd86-4597-ab05-7cd96fb4ffe2','ca374a95-22ff-4dfb-8d84-96cc3c3ac07f','Docente','DOCENTE'),('c9713766-40ce-41f2-98e6-20dbeef71a91','51c1ddec-7875-4780-a65f-0b6cd3bd03dc','Alumno','ALUMNO'),('d82e9bc1-e838-4318-9a4d-11c5dfb6fd81','e73ef89c-e1ee-4831-bca0-af2d77729544','Admin','ADMIN'),('efac5e44-dfd1-4b24-9d40-1caeaa6891c2','d940eaa0-b93a-495f-80f5-95bcbc886422','Gerente','GERENTE');
/*!40000 ALTER TABLE `AspNetRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserClaims`
--

DROP TABLE IF EXISTS `AspNetUserClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(127) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  KEY `IX_AspNetUserClaims_UsuarioId` (`UsuarioId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserClaims_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuarios` (`UsuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserClaims`
--

LOCK TABLES `AspNetUserClaims` WRITE;
/*!40000 ALTER TABLE `AspNetUserClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserLogins`
--

DROP TABLE IF EXISTS `AspNetUserLogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Dumping data for table `AspNetUserLogins`
--

LOCK TABLES `AspNetUserLogins` WRITE;
/*!40000 ALTER TABLE `AspNetUserLogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserLogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserRoles`
--

DROP TABLE IF EXISTS `AspNetUserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(127) NOT NULL,
  `RoleId` varchar(127) NOT NULL,
  `RolIdFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RolIdFK` (`RolIdFK`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_Usuarios_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarios` (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserRoles`
--

LOCK TABLES `AspNetUserRoles` WRITE;
/*!40000 ALTER TABLE `AspNetUserRoles` DISABLE KEYS */;
INSERT INTO `AspNetUserRoles` VALUES ('60c4d31f-7a1b-4aa8-abdd-1026d1272a42','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL),('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL),('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09','d82e9bc1-e838-4318-9a4d-11c5dfb6fd81',NULL);
/*!40000 ALTER TABLE `AspNetUserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserTokens`
--

DROP TABLE IF EXISTS `AspNetUserTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserTokens`
--

LOCK TABLES `AspNetUserTokens` WRITE;
/*!40000 ALTER TABLE `AspNetUserTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `AspNetUsers` VALUES ('60c4d31f-7a1b-4aa8-abdd-1026d1272a42',0,'f6ee8e31-d6cc-4fb3-9074-ab2c26d56cb3','ADMIN@FASTSHOP.COM.AR',0x00,0x01,NULL,'ADMIN@FASTSHOP.COM.AR','ADMIN@FASTSHOP.COM.AR','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,0x00,'a6f2411f-0491-481e-918a-6d15f62fe1a8',0x00,'ADMIN@FASTSHOP.COM.AR'),('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3',0,'ac39529f-77cf-4d24-a107-0dfecc4f7cdc','user@fastshop.com',0x00,0x01,NULL,'user@fastshop.com','user@fastshop.com','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,0x00,'d8f80399-8c40-4474-9834-3febbad66fb1',0x00,'user@fastshop.com'),('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09',0,'d26c2edd-2cb8-4c1b-b6d3-5e2cefeb1293','ivan@ivan.com',0x00,0x01,NULL,'IVAN@IVAN.COM','IVAN@IVAN.COM','AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,0x00,'f8a1a089-6321-4e24-9b0b-c8cb376dc4a9',0x00,'ivan@ivan.com');
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorias` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` longtext NOT NULL,
  `IdCategoriaSuperiorFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`),
  KEY `IX_Categorias_IdCategoriaSuperiorFK` (`IdCategoriaSuperiorFK`),
  CONSTRAINT `FK_Categorias_Categorias_IdCategoriaSuperiorFK` FOREIGN KEY (`IdCategoriaSuperiorFK`) REFERENCES `Categorias` (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (1,'Almacen',NULL),(2,'Aceites y aderezo',1),(3,'Aceites',2),(4,'Mayonesa',2),(5,'Ketchup',2),(6,'Salsa golf',2),(7,'Mostaza',2),(8,'Vinagre',2),(9,'Aceto',2),(10,'Jugo de limon',2),(11,'Aderezos salsas',2),(12,'Sal y pimienta',2),(13,'Saborizadores',2),(14,'Otros condimentos',2),(15,'Aceitunas y encurtidos',1),(16,'Aceitunas verdes',15),(17,'Aceitunas negras',15),(18,'Aceitunas Rellenas',15),(19,'Encurtidos',15),(20,'Conservas',1),(21,'Conservas De Verdura',20),(22,'Legumbres',20),(23,'Coservas De Pescado',20),(24,'Conservas De Frutas',20),(25,'Tomates Y Salsas',20),(26,'Desayuno Y Golosinas',1),(27,'Azucar',26),(28,'Edulcorante',26),(29,'Cacao',26),(30,'Leche En Polvo',26),(31,'Mermelada',26),(32,'Cafe',26),(33,'Te',26),(34,'Yerba',26),(35,'Reposteria',26),(36,'Golosina',26),(37,'Cereales',26),(38,'Galletas Dulces',26),(39,'Galletas Saladas',26),(40,'Galletas De Arroz',26),(41,'Galletas De Agua',26),(42,'Panificados',1),(43,'Pan Arabe',42),(44,'Pan De Molde',42),(45,'Pan De Hamurguesa Y Panchos',42),(46,'Pan Rallado',42),(47,'Tostadas',42),(48,'Budines',42),(49,'Prepizza',42),(50,'Magdalenas',42);
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_Empleados_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `AspNetUsers` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (1,0x01,'DELLEA',0x01,'34839158','MATIAS@MATIAS',NULL,'2018-08-28 00:00:00.000000','MATIAS','Masculino','DNI','60c4d31f-7a1b-4aa8-abdd-1026d1272a42'),(2,0x01,'CAROT',0x01,'33666555','diogenes@carot',NULL,'2018-08-28 00:00:00.000000','DIOGENES','Masculino','Pasaporte',NULL),(3,0x01,'HERNAN',0x01,'40000000N','HERNIROIZ@GMAIL.COM',NULL,'2018-08-28 00:00:00.000000','ROIZ','Masculino','Pasaporte',NULL),(5,0x01,'ROMERO',0x01,'25252525','pabloromero@gmail.com',NULL,'2018-09-11 00:00:00.000000','PABLO','Masculino','DNI','7a48e357-f5d3-4587-8ce3-a0981ab99689'),(6,0x01,'JAYMEZ',0x01,'35849651','sinejecutarentucara@gmail.com',NULL,'2018-10-13 00:00:00.000000','JEREMIAS','Masculino','DNI','f8ca5264-9116-4686-8698-fec86c02f5f2'),(7,0x01,'KRUPIK',0x01,'12345678','ivan@ivan.com',NULL,'2020-11-23 00:00:00.000000','IVAN','Masculino','DNI','b2b5bcf8-49e8-45c4-b924-6c9c0485ac09'),(8,0x01,'PABLO',0x01,'33000111','pablo@gmail.com',NULL,'2021-02-28 00:00:00.000000','NUMERO','Masculino','DNI',NULL);
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marcas`
--

DROP TABLE IF EXISTS `Marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marcas` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marcas`
--

LOCK TABLES `Marcas` WRITE;
/*!40000 ALTER TABLE `Marcas` DISABLE KEYS */;
INSERT INTO `Marcas` VALUES (1,'AGD'),(2,'NATURA'),(3,'SAZON'),(4,'KNORR'),(5,'HELLMANS'),(6,'SANCOR'),(7,'LA SERENISIMA'),(8,'LA LACTEO'),(9,'MANFREY'),(10,'Yanovsky'),(11,'Windy'),(13,'Dimax'),(14,'Arrocitas'),(15,'Terrabusi');
/*!40000 ALTER TABLE `Marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_Productos_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `Categorias` (`IdCategoria`),
  CONSTRAINT `FK_Productos_Marcas_IdMarcaFK` FOREIGN KEY (`IdMarcaFK`) REFERENCES `Marcas` (`IdMarca`),
  CONSTRAINT `FK_Productos_Tipos_IdTipoUnidadFK` FOREIGN KEY (`IdTipoUnidadFK`) REFERENCES `Tipos` (`idtipounidad`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (2,779053800956,'Leche entera',3,1,1,50,2),(3,7790538009516,'Galletas arroz',6,11,2,70.5,100),(4,7798144941039,'Pepas con chocolate',38,13,2,120,1),(5,7790538009547,'Mini Arrocitas',40,14,1,65,1),(7,77900845,'Tita chica',38,15,1,45,5);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promocion`
--

DROP TABLE IF EXISTS `Promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promocion` (
  `IdTipoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `CantidadProductos` int(11) NOT NULL,
  `Descripcion` longtext,
  `Formula` double NOT NULL,
  `ProductoAplicado` int(11) NOT NULL,
  `ClasePromocion` longtext,
  PRIMARY KEY (`IdTipoPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promocion`
--

LOCK TABLES `Promocion` WRITE;
/*!40000 ALTER TABLE `Promocion` DISABLE KEYS */;
INSERT INTO `Promocion` VALUES (1,2,'2x1 en Leches',0.5,1,'Clase 1'),(2,2,'2x1 bebidas',0.5,1,'Producto'),(3,4,'4x3',0.75,3,'Producto');
/*!40000 ALTER TABLE `Promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromocionXProducto`
--

DROP TABLE IF EXISTS `PromocionXProducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_PromocionXProducto_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `Categorias` (`IdCategoria`),
  CONSTRAINT `FK_PromocionXProducto_Productos_IdProductoFK` FOREIGN KEY (`IdProductoFK`) REFERENCES `Productos` (`IdProducto`),
  CONSTRAINT `FK_PromocionXProducto_Promocion_IdTipoPromocionFK` FOREIGN KEY (`IdTipoPromocionFK`) REFERENCES `Promocion` (`IdTipoPromocion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromocionXProducto`
--

LOCK TABLES `PromocionXProducto` WRITE;
/*!40000 ALTER TABLE `PromocionXProducto` DISABLE KEYS */;
INSERT INTO `PromocionXProducto` VALUES (1,'2021-07-15 00:00:00.000000','2021-01-05 00:00:00.000000',1,2,1,20),(2,'2021-06-30 00:00:00.000000','2021-02-22 00:00:00.000000',NULL,7,2,10),(3,'2021-05-20 00:00:00.000000','2021-02-16 00:00:00.000000',NULL,7,3,10);
/*!40000 ALTER TABLE `PromocionXProducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipos`
--

DROP TABLE IF EXISTS `Tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `Tipos` VALUES (1,'Unidad'),(2,'KG'),(3,'cm');
/*!40000 ALTER TABLE `Tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioRoles`
--

DROP TABLE IF EXISTS `UsuarioRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsuarioRoles` (
  `RolId` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` longtext NOT NULL,
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioRoles`
--

LOCK TABLES `UsuarioRoles` WRITE;
/*!40000 ALTER TABLE `UsuarioRoles` DISABLE KEYS */;
INSERT INTO `UsuarioRoles` VALUES (1,'Admin'),(2,'Empleado'),(3,'Gerente');
/*!40000 ALTER TABLE `UsuarioRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_Usuarios_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `AspNetUsers` (`Id`),
  CONSTRAINT `FK_Usuarios_UsuarioRoles_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `UsuarioRoles` (`RolId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (5,0,'KRUPIK','86981b39-d602-42a4-8006-9cf71261f2a8','12345678','ivan@ivan.com',0x00,NULL,'2020-11-23 12:01:35.028886',0x01,'f88f37b6-184c-4175-bdda-8ae7b5a6e9d9',0x00,NULL,'IVAN',NULL,NULL,'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==',NULL,0x00,'KRUPIK, IVAN. ADMIN',1,NULL,'DNI',0x00,NULL,'b2b5bcf8-49e8-45c4-b924-6c9c0485ac09');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Apellido` longtext NOT NULL,
  `Email` longtext,
  `Nombre` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `nroDoc` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (4,'admin','admin@admin.com','admin','DNI','$2y$10$5uYStIqxJrtBLpVuht7ypOgOTbSThXAuDvo8J.Gcxc9Q8gchEJqEe',35652552),(5,'root','root@root.com','root','DNI','$2y$10$Q..cI1nfe1AONB0Gpbukz.s9rPtQBjtYAYt8IQf7Qe8c4ru4OdiLi',1111),(6,'test','test@test.com','test','DNI','$2y$10$5lgLzB31GaAJgv3loJZVhOPVDWXjFVD1XuGRk4OwCnmplo1ud50fi',1111);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_Correos_Usuarios_DestinatarioFK` FOREIGN KEY (`DestinatarioFK`) REFERENCES `usuarios` (`usuarioid`) ON DELETE CASCADE,
  CONSTRAINT `FK_Correos_Usuarios_RemitenteFK` FOREIGN KEY (`RemitenteFK`) REFERENCES `usuarios` (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correos`
--

LOCK TABLES `correos` WRITE;
/*!40000 ALTER TABLE `correos` DISABLE KEYS */;
/*!40000 ALTER TABLE `correos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listados`
--

DROP TABLE IF EXISTS `listados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listados` (
  `idListado` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idListado`),
  KEY `IX_Listados_idCliente` (`idCliente`),
  CONSTRAINT `FK_Listados_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listados`
--

LOCK TABLES `listados` WRITE;
/*!40000 ALTER TABLE `listados` DISABLE KEYS */;
INSERT INTO `listados` VALUES (6,'2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000',4),(7,'2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000',4);
/*!40000 ALTER TABLE `listados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxconsumidor`
--

DROP TABLE IF EXISTS `listadoxconsumidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_ListadoxConsumidor_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoxConsumidor_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxconsumidor`
--

LOCK TABLES `listadoxconsumidor` WRITE;
/*!40000 ALTER TABLE `listadoxconsumidor` DISABLE KEYS */;
INSERT INTO `listadoxconsumidor` VALUES (6,'2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000',4,6,'num'),(7,'2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000','2021-02-28 00:00:00.000000',4,7,'hhhh');
/*!40000 ALTER TABLE `listadoxconsumidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoxproductos`
--

DROP TABLE IF EXISTS `listadoxproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `FK_ListadoXProductos_Categorias_idCategoriaFK` FOREIGN KEY (`idCategoriaFK`) REFERENCES `Categorias` (`IdCategoria`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoXProductos_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`) ON DELETE CASCADE,
  CONSTRAINT `FK_ListadoXProductos_Productos_idProducto` FOREIGN KEY (`idProducto`) REFERENCES `Productos` (`IdProducto`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoxproductos`
--

LOCK TABLES `listadoxproductos` WRITE;
/*!40000 ALTER TABLE `listadoxproductos` DISABLE KEYS */;
INSERT INTO `listadoxproductos` VALUES (22,1,0x00,17,7,2),(23,1,0x00,18,7,2);
/*!40000 ALTER TABLE `listadoxproductos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28 15:21:23
