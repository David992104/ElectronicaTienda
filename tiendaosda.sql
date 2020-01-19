/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 50524
 Source Host           : localhost:3306
 Source Schema         : tiendaosda

 Target Server Type    : MySQL
 Target Server Version : 50524
 File Encoding         : 65001

 Date: 19/01/2020 03:03:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bitacoraprodupdate
-- ----------------------------
DROP TABLE IF EXISTS `bitacoraprodupdate`;
CREATE TABLE `bitacoraprodupdate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fechaUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripAntes` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripDespues` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precioAntes` float(7, 2) NOT NULL,
  `precioDespues` float(7, 2) NOT NULL,
  `exisAntes` int(4) NOT NULL,
  `exisDespues` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bitacoraprodupdate
-- ----------------------------
INSERT INTO `bitacoraprodupdate` VALUES (1, 'root@localhost', '2019-12-17 15:28:20', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 10000.59, 1, 1);
INSERT INTO `bitacoraprodupdate` VALUES (2, 'root@localhost', '2019-12-17 15:31:40', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 10000.59, 25000.00, 1, 1);

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo`  (
  `idCargo` int(3) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Descripcion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idCargo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cargo
-- ----------------------------
INSERT INTO `cargo` VALUES (1, 'Lider', 'Puede realizar cambios en los datos');
INSERT INTO `cargo` VALUES (2, 'Gerente', 'Pueda realizar cambios basicos');
INSERT INTO `cargo` VALUES (3, 'Cajero', 'Solo cobrar');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `codigoCliente` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`codigoCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (1, 'Pedro', 'Martinez', 'Gonzalez', 'Calpulalpan, Jilotepec', '5596467810');
INSERT INTO `cliente` VALUES (2, 'María', 'Perez', 'Orta', 'Canalejas, Jilotepec', '7122564873');
INSERT INTO `cliente` VALUES (3, 'Juan', 'Orozco', 'Peña', 'Huertas, Jilotepec', '5595641784');
INSERT INTO `cliente` VALUES (4, 'Teresa', 'Rosales', 'Benitez', 'Canalejas, Jilotepec', '7124784526');
INSERT INTO `cliente` VALUES (5, 'Gonzalo', 'Ruiz', 'Soto', 'Xhixhata, Jilotepec', '7125678493');

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `noTicket` int(11) NOT NULL AUTO_INCREMENT,
  `codigoCliente` int(5) NOT NULL,
  `fechaCompra` date NULL DEFAULT NULL,
  PRIMARY KEY (`noTicket`) USING BTREE,
  INDEX `fk_compra_cliente`(`codigoCliente`) USING BTREE,
  CONSTRAINT `fk_compra_cliente` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10006 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (10001, 3, '2019-11-02');
INSERT INTO `compra` VALUES (10002, 5, '2019-11-02');
INSERT INTO `compra` VALUES (10003, 2, '2019-11-04');
INSERT INTO `compra` VALUES (10004, 1, '2019-11-06');
INSERT INTO `compra` VALUES (10005, 4, '2019-11-26');

-- ----------------------------
-- Table structure for detallecompra
-- ----------------------------
DROP TABLE IF EXISTS `detallecompra`;
CREATE TABLE `detallecompra`  (
  `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT,
  `noTicket` int(8) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `codigobarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idDetalleCompra`) USING BTREE,
  INDEX `fk_detallecompra_compra`(`noTicket`) USING BTREE,
  INDEX `fk_detallecompra_codigobarras`(`codigobarras`) USING BTREE,
  CONSTRAINT `fk_detallecompra_codigobarras` FOREIGN KEY (`codigobarras`) REFERENCES `producto` (`codigobarras`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_detallecompra_compra` FOREIGN KEY (`noTicket`) REFERENCES `compra` (`noTicket`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detallecompra
-- ----------------------------
INSERT INTO `detallecompra` VALUES (1, 10001, 1, '8500405');
INSERT INTO `detallecompra` VALUES (2, 10002, 2, '8500404');
INSERT INTO `detallecompra` VALUES (3, 10003, 2, '8500403');
INSERT INTO `detallecompra` VALUES (4, 10003, 1, '8500402');
INSERT INTO `detallecompra` VALUES (5, 10004, 1, '8500408');
INSERT INTO `detallecompra` VALUES (6, 10004, 2, '8500405');
INSERT INTO `detallecompra` VALUES (7, 10005, 3, '8500404');
INSERT INTO `detallecompra` VALUES (8, 10005, 1, '8500407');
INSERT INTO `detallecompra` VALUES (9, 10005, 1, '8500405');
INSERT INTO `detallecompra` VALUES (10, 10005, 2, '8500402');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `codigobarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio` float(7, 2) NOT NULL,
  `existencias` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`codigobarras`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('8500402', 'Mouse inalámbrico HP color rojo', 300.00, 3);
INSERT INTO `producto` VALUES ('8500403', 'Teclado Gamer Asus RGB', 600.00, 2);
INSERT INTO `producto` VALUES ('8500404', 'Pen Drive Kingston 32GB', 220.00, 24);
INSERT INTO `producto` VALUES ('8500405', 'Disco Duro Solido ADATA 500GB', 1450.00, 5);
INSERT INTO `producto` VALUES ('8500406', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 7);
INSERT INTO `producto` VALUES ('8500407', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 1);
INSERT INTO `producto` VALUES ('8500408', 'Audifonos SONY', 2500.00, 3);

-- ----------------------------
-- Table structure for provedor
-- ----------------------------
DROP TABLE IF EXISTS `provedor`;
CREATE TABLE `provedor`  (
  `codigoProvedor` int(5) NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rfc` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`codigoProvedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of provedor
-- ----------------------------
INSERT INTO `provedor` VALUES (1, 'Accesorios Lucas SA de CV', 'ACLU150625', 'accesorios.lucas@gmail.com', 'CDMX delegación Cuauthemoc No. 12', '55648783');
INSERT INTO `provedor` VALUES (2, 'Todo Informatica SA de CV', 'INTO101106', 'todo.informatica@gmail.com', 'Tequila Jalisco No. 3 Colonia Centro', '33064578');
INSERT INTO `provedor` VALUES (3, 'Accesorios y Sistemas Informaticos SA de CV', 'SIAS130429', 'sistemas.informaticos@hotmail.', 'Juriquilla no. 20 Colonia Carrizales, Qro.', '422784569');

-- ----------------------------
-- Table structure for proveedorproducto
-- ----------------------------
DROP TABLE IF EXISTS `proveedorproducto`;
CREATE TABLE `proveedorproducto`  (
  `idProductoProveedor` int(8) NOT NULL AUTO_INCREMENT,
  `codigoProveedor` int(5) NOT NULL,
  `codigoBarras` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idProductoProveedor`) USING BTREE,
  INDEX `fk_proveedor_proveedorproducto`(`codigoProveedor`) USING BTREE,
  INDEX `fk_producto_provproducto`(`codigoBarras`) USING BTREE,
  CONSTRAINT `fk_producto_provproducto` FOREIGN KEY (`codigoBarras`) REFERENCES `producto` (`codigobarras`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_proveedor_proveedorproducto` FOREIGN KEY (`codigoProveedor`) REFERENCES `provedor` (`codigoProvedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of proveedorproducto
-- ----------------------------
INSERT INTO `proveedorproducto` VALUES (1, 2, '8500404');
INSERT INTO `proveedorproducto` VALUES (2, 3, '8500408');
INSERT INTO `proveedorproducto` VALUES (3, 3, '8500403');
INSERT INTO `proveedorproducto` VALUES (4, 2, '8500403');
INSERT INTO `proveedorproducto` VALUES (5, 1, '8500406');
INSERT INTO `proveedorproducto` VALUES (7, 2, '8500406');
INSERT INTO `proveedorproducto` VALUES (8, 2, '8500407');
INSERT INTO `proveedorproducto` VALUES (9, 3, '8500402');
INSERT INTO `proveedorproducto` VALUES (10, 1, '8500405');
INSERT INTO `proveedorproducto` VALUES (11, 3, '8500405');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUser` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape1` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ape2` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contrasena` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idCargo` int(3) NOT NULL,
  PRIMARY KEY (`idUser`) USING BTREE,
  INDEX `cargo`(`idCargo`) USING BTREE,
  CONSTRAINT `cargo` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Mariel', 'Garcia', 'Espinoza', 'ismariel', 'alohomora', 2);
INSERT INTO `usuario` VALUES (2, 'Kevin', 'Osornio', 'Martinez', 'kevin', 'kevin', 3);
INSERT INTO `usuario` VALUES (3, 'David', 'Osornio', 'Sanchez', 'djos', 'qazplm10', 1);

-- ----------------------------
-- Table structure for usuariocompra
-- ----------------------------
DROP TABLE IF EXISTS `usuariocompra`;
CREATE TABLE `usuariocompra`  (
  `idUserCompra` int(5) NOT NULL AUTO_INCREMENT,
  `idUser` int(5) NOT NULL,
  `idCompra` int(5) NOT NULL,
  PRIMARY KEY (`idUserCompra`) USING BTREE,
  INDEX `user`(`idUser`) USING BTREE,
  INDEX `compra`(`idCompra`) USING BTREE,
  CONSTRAINT `compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`noTicket`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user` FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for addUserSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserSp`;
delimiter ;;
CREATE PROCEDURE `addUserSp`(IN nombre VARCHAR(30),
	IN ape1 VARCHAR(30),
	IN ape2 VARCHAR(30),
	IN users VARCHAR(20),
	IN pass VARCHAR(20),
	IN cargoN VARCHAR(30))
BEGIN
	DECLARE usuariosp VARCHAR(20);
	DECLARE cargo INT(3);
	SELECT usuario INTO usuariosp FROM usuario WHERE usuario = users;
	SELECT idCargo INTO cargo FROM cargo WHERE cargo = cargoN;
	IF usuariosp = users THEN
		SELECT 'fail' AS Error;
	ELSE
		INSERT INTO usuario VALUES (null, nombre, ape1, ape2, users, pass, idCargo);
		SELECT 'good' AS Good;
	END IF;
END
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
-- Procedure structure for loginSp
-- ----------------------------
DROP PROCEDURE IF EXISTS `loginSp`;
delimiter ;;
CREATE PROCEDURE `loginSp`(IN `usua` varchar(50),IN `pass` varchar(50))
BEGIN
DECLARE usuarios varchar (30);
DECLARE contrasenia VARCHAR(50);
SELECT usuario INTO usuarios FROM usuario WHERE usuario = Usua;
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
