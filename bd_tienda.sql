/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - tienda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tienda` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tienda`;

/*Table structure for table `asociacion` */

DROP TABLE IF EXISTS `asociacion`;

CREATE TABLE `asociacion` (
  `idAsociacion` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAsociacion`),
  KEY `FK_EMP_ASO` (`idEmpleado`),
  CONSTRAINT `FK_EMP_ASO` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `asociacion` */

insert  into `asociacion`(`idAsociacion`,`idEmpleado`,`nombre`,`apellido`,`fechaIngreso`,`email`,`telefono`) values (1,1,'John','Turner','2018-01-20','johnturner@ejemplo.com','410-944-0947'),(2,3,'Alice','Morales','2018-04-26','alicemorales@ejemplo.com','617 177 211'),(3,5,'Thiago','Pereira','2018-11-03','thiagopereira@ejemplo.com','757 579 534');

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `categoria` */

insert  into `categoria`(`idCategoria`,`nombre`,`descripcion`) values (1,'Panadería','Productos de panadería y pastelería'),(2,'Cereales','Productos como maíz, trigo, avena, arroz, etc'),(3,'Bebidas','Bebidas gaseosas y naturales'),(4,'Lácteos','Leches y quesos'),(5,'Frutas','Frutas naturales'),(6,'Carnes','Carnes blancas y carnes rojas');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `cliente` */

insert  into `cliente`(`idCliente`,`nombre`,`apellido`,`telefono`,`email`,`ciudad`,`pais`) values (1,'Jordi','Peña','(216)390596','jordip@test.com','Brasilia','Brasil'),(2,'Álvaro','Gutierrez','(884)639106','alvarog@test.com','Dublín','Irlanda'),(3,'Lara','Gomez','(121)907333','lgomez@test.net','Bogotá','Colombia'),(4,'Adriana','Garrido','(120)217209','adrianag@test.com','Tegucigalpa','Honduras'),(5,'Isabel','Mora','(167)281764','luismora@test.es','Brucelas','Bélgica'),(6,'Óscar','Flores','(574)181598','oflores@test.net','Dallas','Estados Unidos'),(7,'Darío','Moya','(708)179745','morad@test.com','Quebec','Canadá'),(8,'Carlos','Carmona','(225)417374','ccarmona@test.net','Santigo','Chile'),(9,'Natalia','Gallego','(940)689766','natig@test.com','Budapest','Hungría'),(10,'Laura','Solis','(152)685846','lsolis@test.com','Madrid','España'),(11,'Alonso','Ortiz','(158)785844','alonsortiz@test.com','París','Francia'),(12,'Pedro','Rojas','','pedrorojas@test.com','Quebec','Canadá'),(13,'Audrey','Mora',NULL,'audreymora@test.com','Brucelas','Bélgica'),(14,'Nancy','Monge','(131)785823',NULL,'Santigo','Chile');

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `departamento` */

insert  into `departamento`(`idDepartamento`,`nombre`) values (1,'Frutas'),(2,'Carnes'),(3,'General');

/*Table structure for table `detalle_factura` */

DROP TABLE IF EXISTS `detalle_factura`;

CREATE TABLE `detalle_factura` (
  `idDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idFactura` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalle`),
  KEY `FK_REL_FAC_DET_idx` (`idFactura`),
  KEY `FK_REL_PRO_DET_idx` (`idProducto`),
  CONSTRAINT `FK_REL_FAC_DET` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`) ON UPDATE CASCADE,
  CONSTRAINT `FK_REL_PRO_DET` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

/*Data for the table `detalle_factura` */

insert  into `detalle_factura`(`idDetalle`,`idFactura`,`idProducto`,`precioUnitario`,`cantidad`) values (1,1,5,2.20,1),(2,1,2,6.00,1),(3,1,4,2.30,4),(4,1,9,1.18,2),(5,2,5,2.20,1),(6,2,3,0.50,1),(7,2,8,0.50,4),(8,3,10,3.50,1),(9,3,2,6.00,2),(10,3,6,1.50,3),(11,4,7,1.80,1),(12,5,5,2.20,1),(13,5,10,3.50,4),(14,5,9,1.18,4),(15,5,11,1.60,2),(16,5,1,2.00,1),(17,6,7,1.80,3),(18,6,5,2.20,4),(19,6,6,1.50,4),(20,6,8,0.50,4),(21,7,7,1.80,2),(22,7,8,0.50,1),(23,7,2,6.00,2),(24,7,4,2.30,2),(25,7,10,3.50,1),(26,8,7,1.80,2),(27,8,5,2.20,4),(28,8,6,1.50,4),(29,9,8,0.50,1),(30,9,5,2.20,2),(31,9,7,1.80,4),(32,10,10,3.50,3),(33,11,6,1.50,1),(34,11,10,3.50,1),(35,11,9,1.18,4),(36,12,3,0.50,1),(37,12,6,1.50,1),(38,12,4,2.30,4),(39,12,11,1.60,1),(40,13,10,3.50,4),(41,14,5,2.20,3),(42,14,8,0.50,4),(43,14,2,6.00,1),(44,15,7,1.80,4),(45,16,7,1.80,3),(46,16,5,2.20,1),(47,16,4,2.30,1),(48,16,9,1.18,4),(49,17,8,0.50,1),(50,18,1,2.00,1),(51,18,3,0.50,2),(52,18,10,3.50,4),(53,19,1,2.00,1),(54,19,10,3.50,2),(55,19,4,2.30,1),(56,19,8,0.50,4),(57,20,6,1.50,3),(58,20,7,1.80,1);

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `sexo` enum('hombre','mujer') DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `FK_REL_DEP_EMP_idx` (`idDepartamento`),
  CONSTRAINT `FK_REL_DEP_EMP` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `empleado` */

insert  into `empleado`(`idEmpleado`,`nombre`,`apellido`,`fechaIngreso`,`fechaNacimiento`,`sexo`,`email`,`telefono`,`salario`,`idDepartamento`) values (1,'John','Turner','2018-01-20','1971-08-21','hombre','johnturner@ejemplo.com','410-944-0947',500.00,1),(2,'Hilda','Ulloa','2019-05-05','1950-07-03','mujer','hildaulloa@ejemplo.com','761 910 312',650.00,2),(3,'Alice','Morales','2018-04-26','1991-04-22','mujer','alicemorales@ejemplo.com','617 177 211',490.00,3),(4,'Anna','Cunha','2019-02-15','1980-01-27','mujer','annacunha@ejemplo.com','619 571 031',512.00,1),(5,'Thiago','Pereira','2018-11-03','1983-10-08','hombre','thiagopereira@ejemplo.com','757 579 534',360.00,2);

/*Table structure for table `factura` */

DROP TABLE IF EXISTS `factura`;

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `FK_REL_CLI_FAC_idx` (`idCliente`),
  KEY `FK_REL_EMP_FAC_idx` (`idEmpleado`),
  CONSTRAINT `FK_REL_CLI_FAC` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON UPDATE CASCADE,
  CONSTRAINT `FK_REL_EMP_FAC` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `factura` */

insert  into `factura`(`idFactura`,`fecha`,`idCliente`,`idEmpleado`) values (1,'2016-10-16 00:00:00',6,2),(2,'2016-11-29 00:00:00',5,3),(3,'2017-01-22 00:00:00',10,3),(4,'2017-02-20 00:00:00',3,1),(5,'2017-03-07 00:00:00',7,3),(6,'2017-03-16 00:00:00',9,2),(7,'2017-09-06 00:00:00',11,4),(8,'2017-11-09 00:00:00',1,2),(9,'2017-11-09 00:00:00',7,3),(10,'2017-12-05 00:00:00',9,3),(11,'2018-07-18 00:00:00',3,5),(12,'2018-08-01 00:00:00',4,1),(13,'2018-08-03 00:00:00',4,4),(14,'2019-01-17 00:00:00',1,3),(15,'2019-01-22 00:00:00',7,3),(16,'2019-02-08 00:00:00',9,4),(17,'2019-03-29 00:00:00',3,4),(18,'2019-06-14 00:00:00',6,4),(19,'2019-07-14 00:00:00',1,5),(20,'2019-07-17 00:00:00',9,1);

/*Table structure for table `inscriptos` */

DROP TABLE IF EXISTS `inscriptos`;

CREATE TABLE `inscriptos` (
  `numerosocio` int(11) NOT NULL,
  `deporte` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cuotas` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`numerosocio`,`deporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `inscriptos` */

insert  into `inscriptos`(`numerosocio`,`deporte`,`cuotas`) values (1,'basquet',2),(1,'natacion',1),(1,'tenis',1),(2,'basquet',NULL),(2,'futbol',2),(2,'natacion',1),(2,'tenis',9),(3,'basquet',9),(3,'natacion',0),(3,'tenis',8),(4,'basquet',10);

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `FK_PRODUCTO_CATEGORIA_idx` (`idCategoria`),
  CONSTRAINT `FK_PRODUCTO_CATEGORIA` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `producto` */

insert  into `producto`(`idProducto`,`nombre`,`idCategoria`,`precioUnitario`) values (1,'Avena',2,2.00),(2,'Queso',4,6.00),(3,'Kiwi',5,0.50),(4,'Coco',2,2.30),(5,'Leche',4,2.20),(6,'Agua',3,1.50),(7,'Jugo de Naranja',3,1.80),(8,'Manzanas',5,0.50),(9,'Peras',5,1.18),(10,'Uvas',5,3.50),(11,'Jugo de Manzana',3,1.60),(12,'Arroz',2,4.00),(13,'Ciruela',6,2.00);

/*Table structure for table `producto_copy` */

DROP TABLE IF EXISTS `producto_copy`;

CREATE TABLE `producto_copy` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `FK_PRODUCTO_CATEGORIA_idx` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `producto_copy` */

insert  into `producto_copy`(`idProducto`,`nombre`,`idCategoria`,`precioUnitario`) values (1,'Avena',2,2.00),(2,'Queso',4,6.00),(3,'Kiwi',5,0.50),(4,'Coco',2,2.30),(5,'Leche',4,2.20),(6,'Agua',3,1.50),(7,'Jugo de Naranja',3,1.80),(8,'Manzanas',5,0.50),(9,'Peras',5,1.18),(10,'Uvas',5,3.50),(11,'Jugo de Manzana',3,1.60),(12,'Arroz',2,4.00),(13,'Ciruela',6,2.00),(14,'gato',3,4.25);

/*Table structure for table `socios` */

DROP TABLE IF EXISTS `socios`;

CREATE TABLE `socios` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `documento` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `domicilio` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `socios` */

insert  into `socios`(`numero`,`documento`,`nombre`,`domicilio`) values (1,'23333333','Alberto Paredes','Colon 111'),(2,'24444444','Carlos Conte','Sarmiento 755'),(3,'25555555','Fabian Fuentes','Caseros 987'),(4,'26666666','Hector Lopez','Sucre 344');

/* Procedure structure for procedure `pro_productos_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `pro_productos_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `pro_productos_categoria`(IN categoria INT)
BEGIN
	select * from producto
	where idCategoria = categoria;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_actualizarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualizarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_actualizarProducto`(
	IN id int,
	IN nombre varchar(45),
	IN idCategoria int,
	in precioUnitario decimal(10,2)
    )
BEGIN
	update producto set 
		nombre = nombre,
		idCategoria = idCategoria,
		precioUnitario = precioUnitario
	WHERE
		idProducto = id;
		
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_consultarProductoCursor` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_consultarProductoCursor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_consultarProductoCursor`(in id int)
BEGIN
	declare precioProducto decimal(10,2);
	declare cursorPrecio cursor for
		select precioUnitario from producto where idProducto = id;
	
	open cursorPrecio;
		fetch cursorPrecio into precioProducto;
	close cursorPrecio;
	
	select concat('El precio del producto usando cursor es ', precioProducto) as mensaje;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_eliminarProducto`(in id int)
BEGIN
	delete from producto where idProducto = id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_insertarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_insertarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_insertarProducto`(
	in nombre varchar(45), 
	IN idCategoria int,
	IN precioUnitario decimal(10,2)
    )
BEGIN
	insert into producto (
		nombre, 
		idCategoria, 
		precioUnitario
		)
		value(
			nombre,
			idCategoria,
			precioUnitario
		);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_insertarRegistroValidacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_insertarRegistroValidacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_insertarRegistroValidacion`(
	IN nombre VARCHAR(45), 
	IN idCategoria INT,
	IN precioUnitario DECIMAL(10,2)
    )
BEGIN
	DECLARE fk_problema CONDITION FOR 1452;
	declare continue handler for fk_problema	
	BEGIN
		SELECT 'No existe la categoria' AS mensaje;
	END;
	INSERT INTO producto (
		nombre, 
		idCategoria, 
		precioUnitario
		)
		VALUE(
			nombre,
			idCategoria,
			precioUnitario
		);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_numEmpleadosDepartamento` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_numEmpleadosDepartamento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_numEmpleadosDepartamento`(inout idDepartamento int)
BEGIN
	SELECT COUNT(*) INTO idDepartamento FROM empleado WHERE empleado.idDepartamento = idDepartamento;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtener_salario_minimo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtener_salario_minimo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`usr_apptics`@`localhost` PROCEDURE `sp_obtener_salario_minimo`(out salario double)
BEGIN
	select min(empleado.salario) into salario from empleado;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
