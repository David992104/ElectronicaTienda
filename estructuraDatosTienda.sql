/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 100504
 Source Host           : localhost:3307
 Source Schema         : electronica

 Target Server Type    : MySQL
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 03/02/2021 22:14:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bitacoraprodupdate
-- ----------------------------
DROP TABLE IF EXISTS `bitacoraprodupdate`;
CREATE TABLE `bitacoraprodupdate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fechaUpdate` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `descripAntes` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripDespues` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precioAntes` float(7, 2) NOT NULL,
  `precioDespues` float(7, 2) NOT NULL,
  `exisAntes` int NOT NULL,
  `exisDespues` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bitacoraprodupdate
-- ----------------------------
INSERT INTO `bitacoraprodupdate` VALUES (155, 'root@localhost', '2021-01-18 23:18:13', 'Computadora hp', 'Computadora hp', 12578.90, 12578.90, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (156, 'root@localhost', '2021-02-03 09:06:15', 'Computadora hp', 'Computadora hp', 12578.90, 12578.90, 1, 5);

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo`  (
  `idCargo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Descripcion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idCargo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cargo
-- ----------------------------
INSERT INTO `cargo` VALUES (4, 'gerente', 'Puede controlar todos los controles');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `codigoCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`codigoCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (14, 'Flor', 'Huerta', '', 'Corrales', '77313348767', '1');

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `noTicket` int NOT NULL AUTO_INCREMENT,
  `codigoCliente` int NOT NULL,
  `fechaCompra` datetime(0) NULL DEFAULT NULL,
  `idUser` int NOT NULL,
  PRIMARY KEY (`noTicket`) USING BTREE,
  INDEX `fk_compra_cliente`(`codigoCliente`) USING BTREE,
  INDEX `user`(`idUser`) USING BTREE,
  CONSTRAINT `fk_compra_cliente` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user` FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10031 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (10026, 14, '0000-00-00 00:00:00', 9);
INSERT INTO `compra` VALUES (10027, 14, '2021-01-18 23:16:52', 9);
INSERT INTO `compra` VALUES (10028, 14, '2021-01-18 23:18:13', 9);

-- ----------------------------
-- Table structure for detallecompra
-- ----------------------------
DROP TABLE IF EXISTS `detallecompra`;
CREATE TABLE `detallecompra`  (
  `idDetalleCompra` int NOT NULL AUTO_INCREMENT,
  `noTicket` int NOT NULL,
  `codigobarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cantidad` int NOT NULL,
  `precioVenta` double(10, 2) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`) USING BTREE,
  INDEX `fk_detallecompra_compra`(`noTicket`) USING BTREE,
  INDEX `fk_detallecompra_codigobarras`(`codigobarras`) USING BTREE,
  CONSTRAINT `fk_detallecompra_codigobarras` FOREIGN KEY (`codigobarras`) REFERENCES `producto` (`codigobarras`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_detallecompra_compra` FOREIGN KEY (`noTicket`) REFERENCES `compra` (`noTicket`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of detallecompra
-- ----------------------------
INSERT INTO `detallecompra` VALUES (25, 10026, '1023', 1, 0.00);
INSERT INTO `detallecompra` VALUES (26, 10027, '1023', 1, 0.00);

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `codigobarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio` float(7, 2) NOT NULL,
  `existencias` int NOT NULL,
  `activo` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'Sigue activo el producto ? 0 no, 1 si',
  PRIMARY KEY (`codigobarras`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('1023', 'Computadora hp', 12578.90, 5, '1');

-- ----------------------------
-- Table structure for provedor
-- ----------------------------
DROP TABLE IF EXISTS `provedor`;
CREATE TABLE `provedor`  (
  `codigoProvedor` int NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rfc` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`codigoProvedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of provedor
-- ----------------------------
INSERT INTO `provedor` VALUES (13, 'OSDA electronicos', 'osda12312', 'osda@osda.com.mx', 'Tepeji del Rio', '5567102230');

-- ----------------------------
-- Table structure for proveedorproducto
-- ----------------------------
DROP TABLE IF EXISTS `proveedorproducto`;
CREATE TABLE `proveedorproducto`  (
  `idProductoProveedor` int NOT NULL AUTO_INCREMENT,
  `codigoProveedor` int NOT NULL,
  `codigoBarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idProductoProveedor`) USING BTREE,
  INDEX `fk_proveedor_proveedorproducto`(`codigoProveedor`) USING BTREE,
  INDEX `fk_producto_provproducto`(`codigoBarras`) USING BTREE,
  CONSTRAINT `fk_producto_provproducto` FOREIGN KEY (`codigoBarras`) REFERENCES `producto` (`codigobarras`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_proveedor_proveedorproducto` FOREIGN KEY (`codigoProveedor`) REFERENCES `provedor` (`codigoProvedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of proveedorproducto
-- ----------------------------
INSERT INTO `proveedorproducto` VALUES (12, 13, '1023');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape1` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape2` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contrasena` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idCargo` int NOT NULL,
  `activo` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUser`) USING BTREE,
  INDEX `cargo`(`idCargo`) USING BTREE,
  CONSTRAINT `cargo` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (9, 'David', 'Osornio', '', 'dave', 'dave', 4, '1');

-- ----------------------------
-- Procedure structure for addProductoSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `addProductoSp`;
delimiter ;;
CREATE PROCEDURE `addProductoSp`(IN codigo VARCHAR(8),
IN producto VARCHAR(100),
IN precio FLOAT(7.2),
IN existencias INT(5))
BEGIN 
DECLARE codigoBD VARCHAR(8);
DECLARE productoBD VARCHAR(50);
SET codigoBD = '';
SET productoBD = '';
SELECT codigobarras INTO codigoBD FROM producto WHERE codigobarras = codigo;
SELECT descripcion INTO productoBD FROM producto WHERE descripcion = producto;
If existencias < 0 or precio <= 0 THEN
	SELECT 'Error' As Errorsito;
ELSE
	IF codigoBD = codigo OR productoBD = producto THEN
		SELECT 'prodExistente' AS Error;
	ELSE
		INSERT INTO producto VALUES (codigo, producto, precio, existencias);
		SELECT 'Aniadido' AS Exito;
	END IF;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for addProvedorSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `addProvedorSp`;
delimiter ;;
CREATE PROCEDURE `addProvedorSp`(IN rsocial VARCHAR(50),
IN rfcA VARCHAR(30),
IN correo VARCHAR(30),
IN direcccion VARCHAR(100),
IN telefon VARCHAR(10))
BEGIN 
	DECLARE rfcN VARCHAR(30);
	DECLARE telefonoN VARCHAR(10);

	SET rfcN = '';
	SET telefonoN = '';

	SELECT rfc INTO rfcN FROM provedor WHERE rfc = rfcA;
	SELECT provedor.telefono INTO telefonoN FROM provedor WHERE provedor.telefono = telefon;

	IF rfcN = rfcA OR telefonoN = telefon THEN
		SELECT 'proveedorExistente' AS Error;
	ELSE
		INSERT INTO provedor VALUES (null, rsocial, rfcA, correo, direcccion, telefon);
		SELECT 'Aniadido' AS Exito;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for addSell
-- ----------------------------
DROP PROCEDURE IF EXISTS `addSell`;
delimiter ;;
CREATE PROCEDURE `addSell`(IN ticket INT(11),
	IN codigoB VARCHAR(8),
	IN cant INT(3),
	in precioVenta double(7,2))
BEGIN
	DECLARE exis INT(10);
	SELECT existencias INTO exis FROM producto WHERE codigobarras = codigoB;
	
		if cant > 0 THEN
			INSERT INTO detallecompra VALUES(NULL, ticket, cant, codigoB, precioVenta);
			UPDATE producto SET existencias = (exis - cant) WHERE codigobarras = codigoB;
			SELECT "1";
		END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for addUserSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserSp`;
delimiter ;;
CREATE PROCEDURE `addUserSp`(IN nombre VARCHAR(30),
	IN ape1 VARCHAR(30),
	IN ape2 VARCHAR(30),
	IN users VARCHAR(20),
	IN pass VARCHAR(20))
BEGIN
	
	IF pass = pass THEN
		
		INSERT INTO usuario VALUES (null, nombre, ape1, ape2, users, pass, 3);
		SELECT '1' AS Good;
	ELSE
		SELECT '0' AS Error;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for createClient
-- ----------------------------
DROP PROCEDURE IF EXISTS `createClient`;
delimiter ;;
CREATE PROCEDURE `createClient`(IN `nombre` varchar(30),
	IN `ape1` varchar(20),
	IN `ape2` varchar(20),
	IN `numero` varchar(10),
	IN `direccion` varchar(100))
BEGIN
	if nombre = "" or ape1 = "" or numero = "" or direccion = "" then
		select "0" as error;
	else
		insert into cliente values (null, nombre, ape1, ape2, direccion, numero, "1");
		select "1";
	end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for createTicket
-- ----------------------------
DROP PROCEDURE IF EXISTS `createTicket`;
delimiter ;;
CREATE PROCEDURE `createTicket`(IN codigoC INT(5),
	IN usua VARCHAR(20))
BEGIN
	DECLARE fecha DATETIME;
	
	SELECT NOW() INTO fecha;
	IF (SELECT codigoCliente FROM cliente WHERE codigoCliente = codigoC) = codigoC THEN
		IF (SELECT usuario from usuario WHERE usuario=usua) = usua THEN
		
			INSERT INTO compra VALUES (null, codigoC, fecha, (select idUser from usuario where usuario=usua));
			-- INSERT INTO usuariocompra VALUES (null, 
			-- 	(SELECT idUser from usuario WHERE usuario = usua), 
			-- 	(SELECT noTicket FROM compra WHERE fechaCompra = fecha AND codigoCliente = codigoC),);
			SELECT noTicket FROM compra WHERE fechaCompra = fecha AND codigoCliente = codigoC;
			
		ELSE
			SELECT "0";
		END IF;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for editClient
-- ----------------------------
DROP PROCEDURE IF EXISTS `editClient`;
delimiter ;;
CREATE PROCEDURE `editClient`(IN id INT(2),
	IN nombreA VARCHAR(30),
	IN ape1A VARCHAR(20),
	IN ape2A VARCHAR(20),
	IN direccionA VARCHAR(100),
	IN telefonoA VARCHAR(10),
	IN estadoA CHAR)
BEGIN

	
	IF (SELECT codigoCliente FROM cliente WHERE codigoCliente = id) = id THEN
		UPDATE cliente SET
			nombre = nombreA,
			ape1 = ape1A,
			ape2 = ape2A,
			direccion = direccionA,
			telefono = telefonoA,
			`status` = estadoA
		WHERE codigoCliente = id ;
		SELECT "1";
	else
		select  "0";
	end if;		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for fech
-- ----------------------------
DROP PROCEDURE IF EXISTS `fech`;
delimiter ;;
CREATE PROCEDURE `fech`()
begin
DECLARE fecha date;
SET fecha = NOW();
#SELECT NOW() INTO fecha;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for fecha
-- ----------------------------
DROP PROCEDURE IF EXISTS `fecha`;
delimiter ;;
CREATE PROCEDURE `fecha`()
begin
DECLARE fecha date;
#SET fecha = NOW();
#SELECT NOW() INTO fecha;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findAdminSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `findAdminSp`;
delimiter ;;
CREATE PROCEDURE `findAdminSp`(IN `userAdmin` varchar(30),
	IN `passAdmin` varchar(20))
BEGIN
	DECLARE usuarios VARCHAR(50);
	DECLARE pass varchar(30);
	SELECT usuario INTO usuarios FROM usuario WHERE usuario = userAdmin AND (idCargo = 1 OR idCargo = 2);
	
	IF userAdmin = usuarios THEN
		SELECT contrasena INTO pass FROM usuario WHERE usuario = usuarios;
		IF pass = passAdmin THEN
			SELECT '1';
		END IF;
	ELSE
		SELECT '0';
	END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `getProduct`;
delimiter ;;
CREATE PROCEDURE `getProduct`()
BEGIN
	SELECT * FROM producto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `getProveedor`;
delimiter ;;
CREATE PROCEDURE `getProveedor`()
BEGIN
	SELECT * FROM provedor;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for loginSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `loginSp`;
delimiter ;;
CREATE PROCEDURE `loginSp`(IN `usua` varchar(50),IN `pass` varchar(50))
BEGIN
DECLARE usuarios varchar (30);
DECLARE contrasenia VARCHAR(50);
SELECT usuario INTO usuarios FROM usuario WHERE usuario = usua;
if usua = usuarios then
	SELECT contrasena INTO contrasenia FROM usuario WHERE usuario=usuarios ;

	IF contrasenia = pass then 
		SELECT "Bienvenido" as Bienvenido;
		
	else
		SELECT "Contraseña mal" as Error;
	END IF;
else
	select "Usuario no existe" as Error;
end if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for modifCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `modifCliente`;
delimiter ;;
CREATE PROCEDURE `modifCliente`(IN id INT(2),
	IN nombreA VARCHAR(30),
	IN ape1A VARCHAR(20),
	IN ape2A VARCHAR(20),
	IN direccionA VARCHAR(100),
	IN telefonoA VARCHAR(10),
	IN estadoA CHAR)
BEGIN
	IF (SELECT codigoCliente FROM cliente WHERE codigoCliente = id) = id THEN
		UPDATE cliente SET
			nombre = nombreA,
			ape1 = ape1A,
			ape2 = ape2A,
			direccion = direccionA,
			telefono = telefonoA,
			`status` = estadoA
		WHERE codigoCliente = id ;
		SELECT "1";
	else
		select  "0";
	end if;		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for modifProd
-- ----------------------------
DROP PROCEDURE IF EXISTS `modifProd`;
delimiter ;;
CREATE PROCEDURE `modifProd`(IN codigoN VARCHAR(8),
IN product VARCHAR(100),
IN precioN FLOAT(7.2),
IN existencia INT(5))
BEGIN 
DECLARE codigoBD VARCHAR(8);
DECLARE productoBD VARCHAR(100);

SELECT codigobarras INTO codigoBD FROM producto WHERE codigobarras = codigoN;
SELECT descripcion INTO productoBD FROM producto WHERE descripcion = product;

If existencia <= 0 or precioN <= 0 THEN
	SELECT 'Error' As Errorsito;
ELSE 
  IF codigoBD = codigoN then
		UPDATE producto set descripcion=product, precio=precioN, existencias=existencia WHERE codigobarras = codigoBD;
		SELECT'Modificado' AS Exito;
  ELSE
		SELECT 'NoMod' AS Error;
	end if;
end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for modifProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `modifProduct`;
delimiter ;;
CREATE PROCEDURE `modifProduct`(IN id INT(2),
	IN nombreA VARCHAR(30),
	IN ape1A VARCHAR(20),
	IN ape2A VARCHAR(20),
	IN direccionA VARCHAR(100),
	IN telefonoA VARCHAR(10),
	IN estadoA CHAR)
BEGIN
	IF (SELECT codigoCliente FROM cliente WHERE codigoCliente = id) = id THEN
		UPDATE cliente SET
			nombre = nombreA,
			ape1 = ape1A,
			ape2 = ape2A,
			direccion = direccionA,
			telefono = telefonoA,
			`status` = estadoA
		WHERE codigoCliente = id ;
		SELECT "1";
	else
		select  "0";
	end if;		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for modifProve
-- ----------------------------
DROP PROCEDURE IF EXISTS `modifProve`;
delimiter ;;
CREATE PROCEDURE `modifProve`(IN rsocial VARCHAR(50),
IN rfcN VARCHAR(30),
IN correo VARCHAR(30),
IN direccionN VARCHAR(100),
iN telef VARCHAR(10))
BEGIN 

DECLARE rfcNew VARCHAR(30);
DECLARE telfNew VARCHAR(10);

SELECT rfc INTO rfcNew FROM provedor WHERE rfc = rfcN;
SELECT telefono INTO telfNew FROM provedor WHERE telefono = telef;
If rfcN = "" or telef = "" then
   SELECT 'lleneCampos' as errorr;
ELSE
  IF rfcNew = rfcN or telfNew = telef then
		UPDATE provedor set razonsocial=rsocial,email=correo, direccion=direccionN, telefono=telef;
		SELECT 'Modificado' AS Exito;
  ELSE
		SELECT 'NoMod' AS Error;
  end if;
 
End if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ressetPassSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `ressetPassSp`;
delimiter ;;
CREATE PROCEDURE `ressetPassSp`(IN usua VARCHAR(30),
		IN passNew VARCHAR(30))
BEGIN
	IF (SELECT usuario FROM usuario WHERE usuario = usua) = usua THEN
		UPDATE usuario SET contrasena = passNew WHERE usuario = usua;
		SELECT '1';
	ELSE
		SELECT '0';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchClient
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchClient`;
delimiter ;;
CREATE PROCEDURE `searchClient`(in codigo int(3))
BEGIN
	IF (SELECT codigoCliente from cliente where codigoCliente = codigo) = codigo THEN
		IF (SELECT cliente.`status` from cliente where codigoCliente = codigo) = "1" THEN
			SELECT nombre, ape1, ape2, direccion FROM cliente where codigoCliente = codigo;
		ELSE
			SELECT "00";
		END IF;
	ELSE
		SELECT "0";
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchProduct`;
delimiter ;;
CREATE PROCEDURE `searchProduct`(IN codigo VARCHAR(8))
BEGIN
	IF (SELECT producto.codigobarras FROM producto WHERE codigobarras=codigo) = codigo THEN
		 SELECT * FROM producto WHERE codigobarras =codigo;
	ELSE
		SELECT "0";
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table producto
-- ----------------------------
DROP TRIGGER IF EXISTS `trigProductUpdate`;
delimiter ;;
CREATE TRIGGER `trigProductUpdate` AFTER UPDATE ON `producto` FOR EACH ROW BEGIN
INSERT INTO bitacoraProdUpdate VALUES (
NULL,
USER(),
NOW(),
OLD.descripcion,
NEW.descripcion,
OLD.precio,
NEW.precio,
OLD.existencias,
NEW.existencias
);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
