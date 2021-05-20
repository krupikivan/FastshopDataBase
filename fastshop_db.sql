-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 04:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL,
  `RoleId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(127) NOT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `ConcurrencyStamp`, `Name`, `NormalizedName`) VALUES
('4c50c5ac-71aa-44e8-b058-8cbe99b04b57', '302c862a-340f-4f74-b15c-467237523787', 'Empleado', 'EMPLEADO'),
('556962b2-bd86-4597-ab05-7cd96fb4ffe2', 'ca374a95-22ff-4dfb-8d84-96cc3c3ac07f', 'Docente', 'DOCENTE'),
('c9713766-40ce-41f2-98e6-20dbeef71a91', '51c1ddec-7875-4780-a65f-0b6cd3bd03dc', 'Alumno', 'ALUMNO'),
('d82e9bc1-e838-4318-9a4d-11c5dfb6fd81', 'e73ef89c-e1ee-4831-bca0-af2d77729544', 'Admin', 'ADMIN'),
('efac5e44-dfd1-4b24-9d40-1caeaa6891c2', 'd940eaa0-b93a-495f-80f5-95bcbc886422', 'Gerente', 'GERENTE');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL,
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
  `ProviderDisplayName` longtext DEFAULT NULL,
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

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`, `RolIdFK`) VALUES
('60c4d31f-7a1b-4aa8-abdd-1026d1272a42', 'd82e9bc1-e838-4318-9a4d-11c5dfb6fd81', NULL),
('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3', 'd82e9bc1-e838-4318-9a4d-11c5dfb6fd81', NULL),
('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09', 'd82e9bc1-e838-4318-9a4d-11c5dfb6fd81', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(127) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `AccessFailedCount`, `ConcurrencyStamp`, `Email`, `EmailConfirmed`, `LockoutEnabled`, `LockoutEnd`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `SecurityStamp`, `TwoFactorEnabled`, `UserName`) VALUES
('50c4d31f-7a1b-4aa8-abdd-1026d1272a42', 0, 'ac39529f-77cf-4d24-a107-0dfecc4f7cdc', 'matias@fastshop.com', b'0', b'1', NULL, 'matias@fastshop.com', 'matias@fastshop.com', 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'd8f80399-8c40-4474-9834-3febbad66fb1', b'0', 'matias@fastshop.com'),
('60c4d31f-7a1b-4aa8-abdd-1026d1272a42', 0, 'f6ee8e31-d6cc-4fb3-9074-ab2c26d56cb3', 'ADMIN@FASTSHOP.COM.AR', b'0', b'1', NULL, 'ADMIN@FASTSHOP.COM.AR', 'ADMIN@FASTSHOP.COM.AR', 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'a6f2411f-0491-481e-918a-6d15f62fe1a8', b'0', 'ADMIN@FASTSHOP.COM.AR'),
('ad25c9f2-cae9-4fd3-b2ce-901e33e498a3', 0, 'ac39529f-77cf-4d24-a107-0dfecc4f7cdc', 'diogenes@fastshop.com', b'0', b'1', NULL, 'diogenes@fastshop.com', 'diogenes@fastshop.com', 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'd8f80399-8c40-4474-9834-3febbad66fb1', b'0', 'diogenes@fastshop.com'),
('b2b5bcf8-49e8-45c4-b924-6c9c0485ac09', 0, 'd26c2edd-2cb8-4c1b-b6d3-5e2cefeb1293', 'ivan@fastshop.com', b'0', b'1', NULL, 'ivan@fastshop.com', 'ivan@fastshop.com', 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'f8a1a089-6321-4e24-9b0b-c8cb376dc4a9', b'0', 'ivan@fastshop.com');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `IdCategoria` int(11) NOT NULL,
  `Descripcion` longtext NOT NULL,
  `IdCategoriaSuperiorFK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`IdCategoria`, `Descripcion`, `IdCategoriaSuperiorFK`) VALUES
(1, 'Almacen', NULL),
(26, 'Desayuno y Meriendas', 1),
(38, 'Galletas Dulces', 26),
(39, 'Galletas Saladas', 26),
(40, 'Galletas De Arroz', 26),
(41, 'Galletas De Agua', 26),
(51, 'Bebidas', NULL),
(52, 'Energizantes', 51),
(53, 'Aguas', 51),
(54, 'Aceites y Vinagres', 1),
(55, 'Aderezos', 1),
(56, 'Snacks', 1),
(57, 'Gaseosas', 51),
(58, 'Vinos', 51),
(59, 'Jugos', 51),
(60, 'Limpieza', NULL),
(61, 'Lavandina', 60),
(62, 'Limpieza de cocina', 60),
(63, 'Limpieza de baño', 60),
(64, 'Enlatados', NULL),
(65, 'Atun', 64);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `Apellido` longtext NOT NULL,
  `Email` longtext DEFAULT NULL,
  `Nombre` longtext NOT NULL,
  `TipoDocumento` longtext NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `nroDoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`idCliente`, `Apellido`, `Email`, `Nombre`, `TipoDocumento`, `password`, `nroDoc`) VALUES
(4, 'Krupik', 'ivan@gmail.com', 'Ivan', 'DNI', '$2y$10$5uYStIqxJrtBLpVuht7ypOgOTbSThXAuDvo8J.Gcxc9Q8gchEJqEe', 35652552),
(5, 'root', 'root@root.com', 'root', 'DNI', '$2y$10$Q..cI1nfe1AONB0Gpbukz.s9rPtQBjtYAYt8IQf7Qe8c4ru4OdiLi', 1111),
(6, 'test', 'test@test.com', 'test', 'DNI', '$2y$10$5lgLzB31GaAJgv3loJZVhOPVDWXjFVD1XuGRk4OwCnmplo1ud50fi', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `correos`
--

CREATE TABLE `correos` (
  `ID` int(11) NOT NULL,
  `Asunto` longtext NOT NULL,
  `DestinatarioFK` int(11) NOT NULL,
  `FechaCreacion` datetime(6) DEFAULT NULL,
  `Mensaje` longtext NOT NULL,
  `RemitenteFK` int(11) DEFAULT NULL,
  `leido` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `correos`
--

INSERT INTO `correos` (`ID`, `Asunto`, `DestinatarioFK`, `FechaCreacion`, `Mensaje`, `RemitenteFK`, `leido`) VALUES
(1, 'Sistema', 11, '2021-05-02 20:36:51.266765', 'Che acordate de mandar los mails', 5, b'0'),
(2, 'Sistema', 5, '2021-05-02 20:37:22.123307', 'Dale bro ahi lo mando', 11, b'0');

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
  `Email` longtext NOT NULL,
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
(1, b'1', 'DELLEA', b'1', '34839158', 'MATIAS@MATIAS', NULL, '2018-08-28 00:00:00.000000', 'MATIAS', 'Masculino', 'DNI', '60c4d31f-7a1b-4aa8-abdd-1026d1272a42'),
(2, b'1', 'CAROT', b'1', '33666555', 'diogenes@carot', NULL, '2018-08-28 00:00:00.000000', 'DIOGENES', 'Masculino', 'Pasaporte', NULL),
(3, b'1', 'HERNAN', b'1', '40000000N', 'HERNIROIZ@GMAIL.COM', NULL, '2018-08-28 00:00:00.000000', 'ROIZ', 'Masculino', 'Pasaporte', NULL),
(5, b'1', 'ROMERO', b'1', '25252525', 'pabloromero@gmail.com', NULL, '2018-09-11 00:00:00.000000', 'PABLO', 'Masculino', 'DNI', '7a48e357-f5d3-4587-8ce3-a0981ab99689'),
(6, b'1', 'JAYMEZ', b'1', '35849651', 'sinejecutarentucara@gmail.com', NULL, '2018-10-13 00:00:00.000000', 'JEREMIAS', 'Masculino', 'DNI', 'f8ca5264-9116-4686-8698-fec86c02f5f2'),
(7, b'1', 'KRUPIK', b'1', '12345678', 'ivan@ivan.com', NULL, '2020-11-23 00:00:00.000000', 'IVAN', 'Masculino', 'DNI', 'b2b5bcf8-49e8-45c4-b924-6c9c0485ac09'),
(8, b'1', 'PABLO', b'1', '33000111', 'pablo@gmail.com', NULL, '2021-02-28 00:00:00.000000', 'NUMERO', 'Masculino', 'DNI', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listados`
--

CREATE TABLE `listados` (
  `idListado` int(11) NOT NULL,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listados`
--

INSERT INTO `listados` (`idListado`, `fechaCobro`, `fechaCompra`, `fechaCreacion`, `idCliente`) VALUES
(11, '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', 4),
(12, '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', 4),
(13, '2021-05-03 00:00:00.000000', '2021-05-03 00:00:00.000000', '2021-05-03 00:00:00.000000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `listadoxconsumidor`
--

CREATE TABLE `listadoxconsumidor` (
  `IdListadoxCliente` int(11) NOT NULL,
  `fechaCobro` datetime(6) NOT NULL,
  `fechaCompra` datetime(6) NOT NULL,
  `fechaCreacion` datetime(6) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idListado` int(11) NOT NULL,
  `nombre` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadoxconsumidor`
--

INSERT INTO `listadoxconsumidor` (`IdListadoxCliente`, `fechaCobro`, `fechaCompra`, `fechaCreacion`, `idCliente`, `idListado`, `nombre`) VALUES
(11, '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', 4, 11, 'Merienda'),
(12, '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', '2021-05-02 00:00:00.000000', 4, 12, 'Desayuno viernes'),
(13, '2021-05-03 00:00:00.000000', '2021-05-03 00:00:00.000000', '2021-05-03 00:00:00.000000', 4, 13, 'Domingo Camping');

-- --------------------------------------------------------

--
-- Table structure for table `listadoxproductos`
--

CREATE TABLE `listadoxproductos` (
  `idListadoxProducto` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `escaneado` bit(1) NOT NULL,
  `idCategoriaFK` int(11) NOT NULL,
  `idListado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadoxproductos`
--

INSERT INTO `listadoxproductos` (`idListadoxProducto`, `cant`, `escaneado`, `idCategoriaFK`, `idListado`) VALUES
(30, 1, b'0', 38, 11),
(31, 1, b'0', 40, 11),
(32, 1, b'0', 39, 11),
(33, 1, b'0', 53, 12),
(34, 1, b'0', 41, 12),
(35, 1, b'0', 65, 13),
(36, 1, b'0', 53, 13),
(37, 1, b'0', 55, 13),
(38, 1, b'0', 39, 13),
(39, 1, b'0', 57, 13),
(40, 1, b'0', 59, 13);

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `IdMarca` int(11) NOT NULL,
  `Nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`IdMarca`, `Nombre`) VALUES
(11, 'Windy'),
(13, 'Dimax'),
(14, 'Arrocitas'),
(15, 'Terrabusi'),
(16, 'Coca Cola'),
(17, 'Geau'),
(18, 'Blem');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `Codigo` bigint(20) NOT NULL,
  `Descripcion` longtext DEFAULT NULL,
  `IdCategoriaFK` int(11) DEFAULT NULL,
  `IdMarcaFK` int(11) DEFAULT NULL,
  `IdTipoUnidadFK` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Tamano` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`IdProducto`, `Codigo`, `Descripcion`, `IdCategoriaFK`, `IdMarcaFK`, `IdTipoUnidadFK`, `Precio`, `Tamano`) VALUES
(3, 7790538009516, 'Galletas arroz', 40, 14, 2, 70.5, 100),
(4, 7798144941039, 'Pepas con chocolate', 38, 13, 2, 120, 1),
(5, 7790538009547, 'Mini Arrocitas', 40, 14, 1, 65, 1),
(7, 77900845, 'Tita chica', 38, 15, 1, 45, 5),
(10, 7790895645778, 'Smartwater sin gas 591 ml', 53, 17, 1, 55, 1),
(11, 7790463000084, 'Blem original 360 ml', 62, 18, 1, 120, 1),
(12, 7790895067556, 'Coca cola sin azucar 1.5 lts', 57, 16, 1, 150, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promocion`
--

CREATE TABLE `promocion` (
  `IdTipoPromocion` int(11) NOT NULL,
  `CantidadProductos` int(11) NOT NULL,
  `Descripcion` longtext DEFAULT NULL,
  `Formula` double NOT NULL,
  `ProductoAplicado` int(11) NOT NULL,
  `ClasePromocion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promocion`
--

INSERT INTO `promocion` (`IdTipoPromocion`, `CantidadProductos`, `Descripcion`, `Formula`, `ProductoAplicado`, `ClasePromocion`) VALUES
(2, 2, '2x1', 0.5, 1, 'Producto');

-- --------------------------------------------------------

--
-- Table structure for table `promocionxproducto`
--

CREATE TABLE `promocionxproducto` (
  `IdPromocion` int(11) NOT NULL,
  `FechaFin` datetime(6) NOT NULL,
  `FechaInicio` datetime(6) NOT NULL,
  `IdCategoriaFK` int(11) DEFAULT NULL,
  `IdProductoFK` int(11) DEFAULT NULL,
  `IdTipoPromocionFK` int(11) NOT NULL,
  `Stock` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promocionxproducto`
--

INSERT INTO `promocionxproducto` (`IdPromocion`, `FechaFin`, `FechaInicio`, `IdCategoriaFK`, `IdProductoFK`, `IdTipoPromocionFK`, `Stock`) VALUES
(33, '2021-05-12 00:00:00.000000', '2021-05-02 00:00:00.000000', NULL, 5, 2, 1),
(38, '2021-06-02 00:00:00.000000', '2021-05-02 00:00:00.000000', NULL, 12, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tipos`
--

CREATE TABLE `tipos` (
  `IdTipoUnidad` int(11) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipos`
--

INSERT INTO `tipos` (`IdTipoUnidad`, `descripcion`) VALUES
(1, 'Unidad'),
(2, 'KG'),
(3, 'cm');

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
  `Apellido` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `Documento` longtext DEFAULT NULL,
  `Email` longtext DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `FechaBaja` datetime(6) DEFAULT NULL,
  `FechaRegistro` datetime(6) NOT NULL,
  `Habilitado` bit(1) NOT NULL,
  `Id` longtext DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `Nombre` longtext DEFAULT NULL,
  `NormalizedEmail` longtext DEFAULT NULL,
  `NormalizedUserName` longtext DEFAULT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `Presentar` longtext DEFAULT NULL,
  `RolIdFK` int(11) NOT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `TipoDocumento` longtext DEFAULT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` longtext DEFAULT NULL,
  `UsuarioAppIdFk` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `AccessFailedCount`, `Apellido`, `ConcurrencyStamp`, `Documento`, `Email`, `EmailConfirmed`, `FechaBaja`, `FechaRegistro`, `Habilitado`, `Id`, `LockoutEnabled`, `LockoutEnd`, `Nombre`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `Presentar`, `RolIdFK`, `SecurityStamp`, `TipoDocumento`, `TwoFactorEnabled`, `UserName`, `UsuarioAppIdFk`) VALUES
(5, 0, 'KRUPIK', '86981b39-d602-42a4-8006-9cf71261f2a8', '12345678', 'ivan@fastshop.com', b'0', NULL, '2020-11-23 12:01:35.028886', b'1', 'f88f37b6-184c-4175-bdda-8ae7b5a6e9d9', b'0', NULL, 'IVAN', NULL, NULL, 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'KRUPIK, IVAN. ADMIN', 1, NULL, 'DNI', b'0', NULL, 'b2b5bcf8-49e8-45c4-b924-6c9c0485ac09'),
(11, 0, 'CAROT', '86981b39-d602-42a4-8006-9cf71261f2a8', '123456789', 'diogenes@fastshop.com', b'0', NULL, '2020-11-23 12:01:35.028886', b'1', 'f88f37b6-184c-4175-bdda-8ae7b5a6e9d9', b'0', NULL, 'DIOGENES', NULL, NULL, 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'CAROT, DIOGENES. ADMIN', 1, NULL, 'DNI', b'0', NULL, 'ad25c9f2-cae9-4fd3-b2ce-901e33e498a3'),
(12, 0, 'DELLEA', '86981b39-d602-42a4-8006-9cf71261f2a8', '1234567890', 'matias@fastshop.com', b'0', NULL, '2020-11-23 12:01:35.028886', b'1', 'f88f37b6-184c-4175-bdda-8ae7b5a6e9d9', b'0', NULL, 'MATIAS', NULL, NULL, 'AQAAAAEAACcQAAAAEAe4ztUtYTxfZ36hTM8ASFrXyCuxkxkPIWDHkT/LRSvZiEYLxCQUkSbDqCLZeR3N/g==', NULL, b'0', 'DELLEA, MATIAS. ADMIN', 1, NULL, 'DNI', b'0', NULL, '50c4d31f-7a1b-4aa8-abdd-1026d1272a42');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20181108013255_initial', '1.1.2'),
('20181110174731_11-10', '1.1.2'),
('20200331134526_fkListado', '1.1.2');

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
  ADD PRIMARY KEY (`IdCategoria`),
  ADD KEY `IX_Categorias_IdCategoriaSuperiorFK` (`IdCategoriaSuperiorFK`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

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
  ADD PRIMARY KEY (`idListado`),
  ADD KEY `IX_Listados_idCliente` (`idCliente`);

--
-- Indexes for table `listadoxconsumidor`
--
ALTER TABLE `listadoxconsumidor`
  ADD PRIMARY KEY (`IdListadoxCliente`),
  ADD KEY `IX_ListadoxConsumidor_idCliente` (`idCliente`),
  ADD KEY `IX_ListadoxConsumidor_idListado` (`idListado`);

--
-- Indexes for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  ADD PRIMARY KEY (`idListadoxProducto`),
  ADD KEY `IX_ListadoXProductos_idCategoriaFK` (`idCategoriaFK`),
  ADD KEY `IX_ListadoXProductos_idListado` (`idListado`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`IdMarca`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `IX_Productos_IdCategoriaFK` (`IdCategoriaFK`),
  ADD KEY `IX_Productos_IdMarcaFK` (`IdMarcaFK`),
  ADD KEY `IX_Productos_IdTipoUnidadFK` (`IdTipoUnidadFK`);

--
-- Indexes for table `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`IdTipoPromocion`);

--
-- Indexes for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  ADD PRIMARY KEY (`IdPromocion`),
  ADD KEY `IX_PromocionXProducto_IdCategoriaFK` (`IdCategoriaFK`),
  ADD KEY `IX_PromocionXProducto_IdProductoFK` (`IdProductoFK`),
  ADD KEY `IX_PromocionXProducto_IdTipoPromocionFK` (`IdTipoPromocionFK`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`IdTipoUnidad`);

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
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

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
  MODIFY `IdCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `correos`
--
ALTER TABLE `correos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `listados`
--
ALTER TABLE `listados`
  MODIFY `idListado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `listadoxconsumidor`
--
ALTER TABLE `listadoxconsumidor`
  MODIFY `IdListadoxCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  MODIFY `idListadoxProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `IdMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `IdProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promocion`
--
ALTER TABLE `promocion`
  MODIFY `IdTipoPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  MODIFY `IdPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `IdTipoUnidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarioroles`
--
ALTER TABLE `usuarioroles`
  MODIFY `RolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserLogins_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`usuarioid`);

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_Usuarios_RolIdFK` FOREIGN KEY (`RolIdFK`) REFERENCES `usuarios` (`usuarioid`);

--
-- Constraints for table `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `FK_Categorias_Categorias_IdCategoriaSuperiorFK` FOREIGN KEY (`IdCategoriaSuperiorFK`) REFERENCES `categorias` (`IdCategoria`);

--
-- Constraints for table `correos`
--
ALTER TABLE `correos`
  ADD CONSTRAINT `FK_Correos_Usuarios_DestinatarioFK` FOREIGN KEY (`DestinatarioFK`) REFERENCES `usuarios` (`UsuarioId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Correos_Usuarios_RemitenteFK` FOREIGN KEY (`RemitenteFK`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_Empleados_AspNetUsers_UsuarioAppIdFk` FOREIGN KEY (`UsuarioAppIdFk`) REFERENCES `aspnetusers` (`Id`);

--
-- Constraints for table `listados`
--
ALTER TABLE `listados`
  ADD CONSTRAINT `FK_Listados_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE;

--
-- Constraints for table `listadoxconsumidor`
--
ALTER TABLE `listadoxconsumidor`
  ADD CONSTRAINT `FK_ListadoxConsumidor_Clientes_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ListadoxConsumidor_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`) ON DELETE CASCADE;

--
-- Constraints for table `listadoxproductos`
--
ALTER TABLE `listadoxproductos`
  ADD CONSTRAINT `FK_ListadoXProductos_Categorias_idCategoriaFK` FOREIGN KEY (`idCategoriaFK`) REFERENCES `categorias` (`IdCategoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ListadoXProductos_Listados_idListado` FOREIGN KEY (`idListado`) REFERENCES `listados` (`idListado`) ON DELETE CASCADE;

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_Productos_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `categorias` (`IdCategoria`),
  ADD CONSTRAINT `FK_Productos_Marcas_IdMarcaFK` FOREIGN KEY (`IdMarcaFK`) REFERENCES `marcas` (`IdMarca`),
  ADD CONSTRAINT `FK_Productos_Tipos_IdTipoUnidadFK` FOREIGN KEY (`IdTipoUnidadFK`) REFERENCES `tipos` (`idtipounidad`) ON DELETE CASCADE;

--
-- Constraints for table `promocionxproducto`
--
ALTER TABLE `promocionxproducto`
  ADD CONSTRAINT `FK_PromocionXProducto_Categorias_IdCategoriaFK` FOREIGN KEY (`IdCategoriaFK`) REFERENCES `categorias` (`IdCategoria`),
  ADD CONSTRAINT `FK_PromocionXProducto_Productos_IdProductoFK` FOREIGN KEY (`IdProductoFK`) REFERENCES `productos` (`IdProducto`),
  ADD CONSTRAINT `FK_PromocionXProducto_Promocion_IdTipoPromocionFK` FOREIGN KEY (`IdTipoPromocionFK`) REFERENCES `promocion` (`IdTipoPromocion`) ON DELETE CASCADE;

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
