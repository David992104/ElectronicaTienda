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

 Date: 22/01/2020 20:54:01
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
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bitacoraprodupdate
-- ----------------------------
INSERT INTO `bitacoraprodupdate` VALUES (1, 'root@localhost', '2019-12-17 15:28:20', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 10000.59, 1, 1);
INSERT INTO `bitacoraprodupdate` VALUES (2, 'root@localhost', '2019-12-17 15:31:40', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 10000.59, 25000.00, 1, 1);
INSERT INTO `bitacoraprodupdate` VALUES (3, 'root@localhost', '2020-01-22 07:12:36', 'sfsd', 'sfsd', 124.00, 124.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (4, 'root@localhost', '2020-01-22 07:12:36', 'Pruebas', 'Pruebas', 12345.00, 12345.00, 4, 3);
INSERT INTO `bitacoraprodupdate` VALUES (5, 'root@localhost', '2020-01-22 07:12:36', 'iPhone', 'iPhone', 2000.00, 2000.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (6, 'root@localhost', '2020-01-22 07:12:36', 'prueba', 'prueba', 123.00, 123.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (7, 'root@localhost', '2020-01-22 07:12:36', 'Pruab', 'Pruab', 120.00, 120.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (8, 'root@localhost', '2020-01-22 07:12:36', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (9, 'root@localhost', '2020-01-22 07:12:36', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (10, 'root@localhost', '2020-01-22 07:12:36', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 24, 23);
INSERT INTO `bitacoraprodupdate` VALUES (11, 'root@localhost', '2020-01-22 07:12:36', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, 5, 4);
INSERT INTO `bitacoraprodupdate` VALUES (12, 'root@localhost', '2020-01-22 07:12:36', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, 7, 6);
INSERT INTO `bitacoraprodupdate` VALUES (13, 'root@localhost', '2020-01-22 07:12:36', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (14, 'root@localhost', '2020-01-22 07:12:36', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (15, 'root@localhost', '2020-01-22 15:59:51', 'sfsd', 'sfsd', 124.00, 124.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (16, 'root@localhost', '2020-01-22 15:59:51', 'Pruebas', 'Pruebas', 12345.00, 12345.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (17, 'root@localhost', '2020-01-22 15:59:51', 'iPhone', 'iPhone', 2000.00, 2000.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (18, 'root@localhost', '2020-01-22 15:59:51', 'prueba', 'prueba', 123.00, 123.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (19, 'root@localhost', '2020-01-22 15:59:51', 'Pruab', 'Pruab', 120.00, 120.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (20, 'root@localhost', '2020-01-22 15:59:51', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (21, 'root@localhost', '2020-01-22 15:59:51', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (22, 'root@localhost', '2020-01-22 15:59:51', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 23, 22);
INSERT INTO `bitacoraprodupdate` VALUES (23, 'root@localhost', '2020-01-22 15:59:51', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, 4, 3);
INSERT INTO `bitacoraprodupdate` VALUES (24, 'root@localhost', '2020-01-22 15:59:51', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, 6, 5);
INSERT INTO `bitacoraprodupdate` VALUES (25, 'root@localhost', '2020-01-22 15:59:51', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (26, 'root@localhost', '2020-01-22 15:59:51', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (39, 'root@localhost', '2020-01-22 16:54:06', 'sfsd', 'sfsd', 124.00, 124.00, -1, -2);
INSERT INTO `bitacoraprodupdate` VALUES (40, 'root@localhost', '2020-01-22 16:54:06', 'Pruebas', 'Pruebas', 12345.00, 12345.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (41, 'root@localhost', '2020-01-22 16:54:06', 'iPhone', 'iPhone', 2000.00, 2000.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (42, 'root@localhost', '2020-01-22 16:54:06', 'prueba', 'prueba', 123.00, 123.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (43, 'root@localhost', '2020-01-22 16:54:06', 'Pruab', 'Pruab', 120.00, 120.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (44, 'root@localhost', '2020-01-22 16:54:06', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (45, 'root@localhost', '2020-01-22 16:54:06', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (46, 'root@localhost', '2020-01-22 16:54:06', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 22, 21);
INSERT INTO `bitacoraprodupdate` VALUES (47, 'root@localhost', '2020-01-22 16:54:06', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (48, 'root@localhost', '2020-01-22 16:54:06', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, 5, 4);
INSERT INTO `bitacoraprodupdate` VALUES (49, 'root@localhost', '2020-01-22 16:54:06', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, -1, -2);
INSERT INTO `bitacoraprodupdate` VALUES (50, 'root@localhost', '2020-01-22 16:54:06', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, 1, 0);
INSERT INTO `bitacoraprodupdate` VALUES (51, 'root@localhost', '2020-01-22 18:33:45', 'sfsd', 'sfsd', 124.00, 124.00, -2, 10);
INSERT INTO `bitacoraprodupdate` VALUES (52, 'root@localhost', '2020-01-22 18:33:49', 'iPhone', 'iPhone', 2000.00, 2000.00, -1, 3);
INSERT INTO `bitacoraprodupdate` VALUES (53, 'root@localhost', '2020-01-22 18:33:52', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -1, 3);
INSERT INTO `bitacoraprodupdate` VALUES (54, 'root@localhost', '2020-01-22 18:33:56', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, -2, 3);
INSERT INTO `bitacoraprodupdate` VALUES (55, 'root@localhost', '2020-01-22 18:34:18', 'prueba', 'prueba', 123.00, 123.00, 0, 10);
INSERT INTO `bitacoraprodupdate` VALUES (56, 'root@localhost', '2020-01-22 18:34:55', 'sfsd', 'sfsd', 124.00, 124.00, 10, 0);
INSERT INTO `bitacoraprodupdate` VALUES (57, 'root@localhost', '2020-01-22 18:34:55', 'Pruebas', 'Pruebas', 12345.00, 12345.00, 1, -9);
INSERT INTO `bitacoraprodupdate` VALUES (58, 'root@localhost', '2020-01-22 18:34:55', 'iPhone', 'iPhone', 2000.00, 2000.00, 3, -7);
INSERT INTO `bitacoraprodupdate` VALUES (59, 'root@localhost', '2020-01-22 18:34:55', 'prueba', 'prueba', 123.00, 123.00, 10, 0);
INSERT INTO `bitacoraprodupdate` VALUES (60, 'root@localhost', '2020-01-22 18:34:55', 'Pruab', 'Pruab', 120.00, 120.00, 0, -10);
INSERT INTO `bitacoraprodupdate` VALUES (61, 'root@localhost', '2020-01-22 18:34:55', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, 0, -10);
INSERT INTO `bitacoraprodupdate` VALUES (62, 'root@localhost', '2020-01-22 18:34:55', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, 3, -7);
INSERT INTO `bitacoraprodupdate` VALUES (63, 'root@localhost', '2020-01-22 18:34:55', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 21, 11);
INSERT INTO `bitacoraprodupdate` VALUES (64, 'root@localhost', '2020-01-22 18:34:55', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, 2, -8);
INSERT INTO `bitacoraprodupdate` VALUES (65, 'root@localhost', '2020-01-22 18:34:55', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, 4, -6);
INSERT INTO `bitacoraprodupdate` VALUES (66, 'root@localhost', '2020-01-22 18:34:55', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 3, -7);
INSERT INTO `bitacoraprodupdate` VALUES (67, 'root@localhost', '2020-01-22 18:34:55', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, 0, -10);
INSERT INTO `bitacoraprodupdate` VALUES (68, 'root@localhost', '2020-01-22 18:57:28', 'sfsd', 'qwerty', 124.00, 7880.00, 0, 5);
INSERT INTO `bitacoraprodupdate` VALUES (69, 'root@localhost', '2020-01-22 19:22:18', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, -7, 3);
INSERT INTO `bitacoraprodupdate` VALUES (70, 'root@localhost', '2020-01-22 19:27:02', 'qwerty', 'qwerty', 7880.00, 7880.00, 5, 4);
INSERT INTO `bitacoraprodupdate` VALUES (71, 'root@localhost', '2020-01-22 19:27:02', 'Pruebas', 'Pruebas', 12345.00, 12345.00, -9, -10);
INSERT INTO `bitacoraprodupdate` VALUES (72, 'root@localhost', '2020-01-22 19:27:02', 'iPhone', 'iPhone', 2000.00, 2000.00, -7, -8);
INSERT INTO `bitacoraprodupdate` VALUES (73, 'root@localhost', '2020-01-22 19:27:02', 'prueba', 'prueba', 123.00, 123.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (74, 'root@localhost', '2020-01-22 19:27:02', 'Pruab', 'Pruab', 120.00, 120.00, -10, -11);
INSERT INTO `bitacoraprodupdate` VALUES (75, 'root@localhost', '2020-01-22 19:27:02', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, -10, -11);
INSERT INTO `bitacoraprodupdate` VALUES (76, 'root@localhost', '2020-01-22 19:27:02', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -7, -8);
INSERT INTO `bitacoraprodupdate` VALUES (77, 'root@localhost', '2020-01-22 19:27:02', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 11, 10);
INSERT INTO `bitacoraprodupdate` VALUES (78, 'root@localhost', '2020-01-22 19:27:02', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, -8, -9);
INSERT INTO `bitacoraprodupdate` VALUES (79, 'root@localhost', '2020-01-22 19:27:02', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, -6, -7);
INSERT INTO `bitacoraprodupdate` VALUES (80, 'root@localhost', '2020-01-22 19:27:02', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 3, 2);
INSERT INTO `bitacoraprodupdate` VALUES (81, 'root@localhost', '2020-01-22 19:27:02', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, -10, -11);
INSERT INTO `bitacoraprodupdate` VALUES (82, 'root@localhost', '2020-01-22 19:27:02', 'qwerty', 'qwerty', 7880.00, 7880.00, 4, 2);
INSERT INTO `bitacoraprodupdate` VALUES (83, 'root@localhost', '2020-01-22 19:27:02', 'Pruebas', 'Pruebas', 12345.00, 12345.00, -10, -12);
INSERT INTO `bitacoraprodupdate` VALUES (84, 'root@localhost', '2020-01-22 19:27:02', 'iPhone', 'iPhone', 2000.00, 2000.00, -8, -10);
INSERT INTO `bitacoraprodupdate` VALUES (85, 'root@localhost', '2020-01-22 19:27:02', 'prueba', 'prueba', 123.00, 123.00, -1, -3);
INSERT INTO `bitacoraprodupdate` VALUES (86, 'root@localhost', '2020-01-22 19:27:02', 'Pruab', 'Pruab', 120.00, 120.00, -11, -13);
INSERT INTO `bitacoraprodupdate` VALUES (87, 'root@localhost', '2020-01-22 19:27:02', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, -11, -13);
INSERT INTO `bitacoraprodupdate` VALUES (88, 'root@localhost', '2020-01-22 19:27:02', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -8, -10);
INSERT INTO `bitacoraprodupdate` VALUES (89, 'root@localhost', '2020-01-22 19:27:02', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 10, 8);
INSERT INTO `bitacoraprodupdate` VALUES (90, 'root@localhost', '2020-01-22 19:27:02', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, -9, -11);
INSERT INTO `bitacoraprodupdate` VALUES (91, 'root@localhost', '2020-01-22 19:27:02', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, -7, -9);
INSERT INTO `bitacoraprodupdate` VALUES (92, 'root@localhost', '2020-01-22 19:27:02', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 2, 0);
INSERT INTO `bitacoraprodupdate` VALUES (93, 'root@localhost', '2020-01-22 19:27:02', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, -11, -13);
INSERT INTO `bitacoraprodupdate` VALUES (94, 'root@localhost', '2020-01-22 19:29:53', 'qwerty', 'qwerty', 7880.00, 7880.00, 2, 1);
INSERT INTO `bitacoraprodupdate` VALUES (95, 'root@localhost', '2020-01-22 19:29:53', 'Pruebas', 'Pruebas', 12345.00, 12345.00, -12, -13);
INSERT INTO `bitacoraprodupdate` VALUES (96, 'root@localhost', '2020-01-22 19:29:53', 'iPhone', 'iPhone', 2000.00, 2000.00, -10, -11);
INSERT INTO `bitacoraprodupdate` VALUES (97, 'root@localhost', '2020-01-22 19:29:53', 'prueba', 'prueba', 123.00, 123.00, -3, -4);
INSERT INTO `bitacoraprodupdate` VALUES (98, 'root@localhost', '2020-01-22 19:29:53', 'Pruab', 'Pruab', 120.00, 120.00, -13, -14);
INSERT INTO `bitacoraprodupdate` VALUES (99, 'root@localhost', '2020-01-22 19:29:53', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, -13, -14);
INSERT INTO `bitacoraprodupdate` VALUES (100, 'root@localhost', '2020-01-22 19:29:53', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -10, -11);
INSERT INTO `bitacoraprodupdate` VALUES (101, 'root@localhost', '2020-01-22 19:29:53', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 8, 7);
INSERT INTO `bitacoraprodupdate` VALUES (102, 'root@localhost', '2020-01-22 19:29:53', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, -11, -12);
INSERT INTO `bitacoraprodupdate` VALUES (103, 'root@localhost', '2020-01-22 19:29:53', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, -9, -10);
INSERT INTO `bitacoraprodupdate` VALUES (104, 'root@localhost', '2020-01-22 19:29:53', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 0, -1);
INSERT INTO `bitacoraprodupdate` VALUES (105, 'root@localhost', '2020-01-22 19:29:53', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, -13, -14);
INSERT INTO `bitacoraprodupdate` VALUES (106, 'root@localhost', '2020-01-22 19:29:53', 'qwerty', 'qwerty', 7880.00, 7880.00, 1, -1);
INSERT INTO `bitacoraprodupdate` VALUES (107, 'root@localhost', '2020-01-22 19:29:53', 'Pruebas', 'Pruebas', 12345.00, 12345.00, -13, -15);
INSERT INTO `bitacoraprodupdate` VALUES (108, 'root@localhost', '2020-01-22 19:29:53', 'iPhone', 'iPhone', 2000.00, 2000.00, -11, -13);
INSERT INTO `bitacoraprodupdate` VALUES (109, 'root@localhost', '2020-01-22 19:29:53', 'prueba', 'prueba', 123.00, 123.00, -4, -6);
INSERT INTO `bitacoraprodupdate` VALUES (110, 'root@localhost', '2020-01-22 19:29:53', 'Pruab', 'Pruab', 120.00, 120.00, -14, -16);
INSERT INTO `bitacoraprodupdate` VALUES (111, 'root@localhost', '2020-01-22 19:29:53', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, -14, -16);
INSERT INTO `bitacoraprodupdate` VALUES (112, 'root@localhost', '2020-01-22 19:29:53', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -11, -13);
INSERT INTO `bitacoraprodupdate` VALUES (113, 'root@localhost', '2020-01-22 19:29:53', 'Pen Drive Kingston 32GB', 'Pen Drive Kingston 32GB', 220.00, 220.00, 7, 5);
INSERT INTO `bitacoraprodupdate` VALUES (114, 'root@localhost', '2020-01-22 19:29:53', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, -12, -14);
INSERT INTO `bitacoraprodupdate` VALUES (115, 'root@localhost', '2020-01-22 19:29:53', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, -10, -12);
INSERT INTO `bitacoraprodupdate` VALUES (116, 'root@localhost', '2020-01-22 19:29:53', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, -1, -3);
INSERT INTO `bitacoraprodupdate` VALUES (117, 'root@localhost', '2020-01-22 19:29:53', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, -14, -16);
INSERT INTO `bitacoraprodupdate` VALUES (142, 'root@localhost', '2020-01-22 19:57:44', 'qwerty', 'qwerty', 7880.00, 7880.00, -1, 1);
INSERT INTO `bitacoraprodupdate` VALUES (143, 'root@localhost', '2020-01-22 19:57:48', 'Pruebas', 'Pruebas', 12345.00, 12345.00, -15, 15);
INSERT INTO `bitacoraprodupdate` VALUES (144, 'root@localhost', '2020-01-22 19:57:52', 'iPhone', 'iPhone', 2000.00, 2000.00, -13, 13);
INSERT INTO `bitacoraprodupdate` VALUES (145, 'root@localhost', '2020-01-22 19:57:57', 'prueba', 'prueba', 123.00, 123.00, -6, 6);
INSERT INTO `bitacoraprodupdate` VALUES (146, 'root@localhost', '2020-01-22 19:58:03', 'Pruab', 'Pruab', 120.00, 120.00, -16, 16);
INSERT INTO `bitacoraprodupdate` VALUES (147, 'root@localhost', '2020-01-22 19:58:05', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, -16, 16);
INSERT INTO `bitacoraprodupdate` VALUES (148, 'root@localhost', '2020-01-22 19:58:07', 'Teclado Gamer Asus RGB', 'Teclado Gamer Asus RGB', 600.00, 600.00, -13, 13);
INSERT INTO `bitacoraprodupdate` VALUES (149, 'root@localhost', '2020-01-22 19:58:10', 'Disco Duro Solido ADATA 500GB', 'Disco Duro Solido ADATA 500GB', 1450.00, 1450.00, -14, 14);
INSERT INTO `bitacoraprodupdate` VALUES (150, 'root@localhost', '2020-01-22 19:58:11', 'Memoria RAM DDR4 ADATA 8GB', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 1200.00, -12, 2);
INSERT INTO `bitacoraprodupdate` VALUES (151, 'root@localhost', '2020-01-22 19:58:12', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, -3, 3);
INSERT INTO `bitacoraprodupdate` VALUES (152, 'root@localhost', '2020-01-22 19:58:14', 'Audifonos SONY', 'Audifonos SONY', 2500.00, 2500.00, -16, 16);
INSERT INTO `bitacoraprodupdate` VALUES (153, 'root@localhost', '2020-01-22 19:59:36', 'Mouse inalámbrico HP color rojo', 'Mouse inalámbrico HP color rojo', 300.00, 300.00, 16, 6);
INSERT INTO `bitacoraprodupdate` VALUES (154, 'root@localhost', '2020-01-22 19:59:36', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 25000.00, 3, 2);

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
  `telefono` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`codigoCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (1, 'Pedro', 'Martinez', 'Gonzalez', 'Calpulalpan, Jilotepec', '5596467810', '1');
INSERT INTO `cliente` VALUES (2, 'María', 'Perez', 'Orta', 'Canalejas, Jilotepec', '7122564873', '1');
INSERT INTO `cliente` VALUES (3, 'Juan', 'Orozco', 'Peña', 'Huertas, Jilotepec', '5595641784', '1');
INSERT INTO `cliente` VALUES (4, 'Teresa', 'Rosales', 'Benitez', 'Canalejas, Jilotepec', '7124784526', '1');
INSERT INTO `cliente` VALUES (5, 'Gonzalo', 'Ruiz', 'Soto', 'Xhixhata, Jilotepec', '7125678493', '1');
INSERT INTO `cliente` VALUES (6, 'David', 'Osornio', '', 'Tepeji del Rio', '', '1');
INSERT INTO `cliente` VALUES (7, 'David', 'Osornio', 'Sanchez', 'Tepeji del Rio', '', '1');
INSERT INTO `cliente` VALUES (9, 'Mariel', 'Garcia', '', 'Aldama', '7122583716', '1');
INSERT INTO `cliente` VALUES (10, 'Citlalli', 'Osornio', 'Martinez', 'Tepeji del Rio', '5567102230', '1');
INSERT INTO `cliente` VALUES (11, 'ftygbuhnij', 'vgybhunji', 'gybhunji', 'bhunijmko', 'bhuni', '1');
INSERT INTO `cliente` VALUES (12, 'Joel', 'Lara', 'Hernandez', 'Aculco, Edo Mex.', '550000000', '1');
INSERT INTO `cliente` VALUES (13, 'karla', 'hernandez', 'perez', 'jilotepec', '5523196889', '1');

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `noTicket` int(11) NOT NULL AUTO_INCREMENT,
  `codigoCliente` int(5) NOT NULL,
  `fechaCompra` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`noTicket`) USING BTREE,
  INDEX `fk_compra_cliente`(`codigoCliente`) USING BTREE,
  CONSTRAINT `fk_compra_cliente` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10025 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (10001, 3, '2019-11-02 00:00:00');
INSERT INTO `compra` VALUES (10002, 5, '2019-11-02 00:00:00');
INSERT INTO `compra` VALUES (10003, 2, '2019-11-04 00:00:00');
INSERT INTO `compra` VALUES (10004, 1, '2019-11-06 00:00:00');
INSERT INTO `compra` VALUES (10005, 4, '2019-11-26 00:00:00');
INSERT INTO `compra` VALUES (10006, 1, '2020-01-22 06:53:29');
INSERT INTO `compra` VALUES (10007, 1, '2020-01-22 00:00:00');
INSERT INTO `compra` VALUES (10008, 1, '2020-01-22 00:00:00');
INSERT INTO `compra` VALUES (10009, 1, '2020-01-22 00:00:00');
INSERT INTO `compra` VALUES (10010, 1, '2020-01-22 07:04:36');
INSERT INTO `compra` VALUES (10011, 2, '2020-01-22 07:06:35');
INSERT INTO `compra` VALUES (10016, 2, '2020-01-22 15:58:25');
INSERT INTO `compra` VALUES (10017, 1, '2020-01-22 15:59:07');
INSERT INTO `compra` VALUES (10019, 1, '2020-01-22 16:54:06');
INSERT INTO `compra` VALUES (10020, 1, '2020-01-22 18:34:55');
INSERT INTO `compra` VALUES (10021, 2, '2020-01-22 19:27:02');
INSERT INTO `compra` VALUES (10022, 2, '2020-01-22 19:29:53');
INSERT INTO `compra` VALUES (10024, 13, '2020-01-22 19:59:36');

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
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `detallecompra` VALUES (11, 10011, 1, '1');
INSERT INTO `detallecompra` VALUES (12, 10011, 1, '1');
INSERT INTO `detallecompra` VALUES (13, 10017, 1, '2');
INSERT INTO `detallecompra` VALUES (15, 10019, 1, '2');
INSERT INTO `detallecompra` VALUES (16, 10020, 10, '2');
INSERT INTO `detallecompra` VALUES (17, 10021, 1, '8500407');
INSERT INTO `detallecompra` VALUES (18, 10021, 2, '8500404');
INSERT INTO `detallecompra` VALUES (19, 10022, 1, '8500407');
INSERT INTO `detallecompra` VALUES (20, 10022, 2, '8500404');
INSERT INTO `detallecompra` VALUES (23, 10024, 10, '8500402');
INSERT INTO `detallecompra` VALUES (24, 10024, 1, '8500407');

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
INSERT INTO `producto` VALUES ('1', 'qwerty', 7880.00, 1);
INSERT INTO `producto` VALUES ('123', 'Pruebas', 12345.00, 15);
INSERT INTO `producto` VALUES ('12345', 'iPhone', 2000.00, 13);
INSERT INTO `producto` VALUES ('2', 'prueba', 123.00, 6);
INSERT INTO `producto` VALUES ('808080', 'Pruab', 120.00, 16);
INSERT INTO `producto` VALUES ('8500402', 'Mouse inalámbrico HP color rojo', 300.00, 6);
INSERT INTO `producto` VALUES ('8500403', 'Teclado Gamer Asus RGB', 600.00, 13);
INSERT INTO `producto` VALUES ('8500404', 'Pen Drive Kingston 32GB', 220.00, 5);
INSERT INTO `producto` VALUES ('8500405', 'Disco Duro Solido ADATA 500GB', 1450.00, 14);
INSERT INTO `producto` VALUES ('8500406', 'Memoria RAM DDR4 ADATA 8GB', 1200.00, 2);
INSERT INTO `producto` VALUES ('8500407', 'Laptop Gamer HP OMEN 16GB RAM, disco sólido 512GB', 25000.00, 2);
INSERT INTO `producto` VALUES ('8500408', 'Audifonos SONY', 2500.00, 16);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of provedor
-- ----------------------------
INSERT INTO `provedor` VALUES (1, 'Accesorios Lucas SA de CV', 'ACLU150625', 'accesorios.lucas@gmail.com', 'CDMX delegación Cuauthemoc No. 12', '55648783');
INSERT INTO `provedor` VALUES (2, 'Todo Informatica SA de CV', 'INTO101106', 'todo.informatica@gmail.com', 'Tequila Jalisco No. 3 Colonia Centro', '33064578');
INSERT INTO `provedor` VALUES (3, 'Accesorios y Sistemas Informaticos SA de CV', 'SIAS130429', 'sistemas.informaticos@hotmail.', 'Juriquilla no. 20 Colonia Carrizales, Qro.', '422784569');
INSERT INTO `provedor` VALUES (11, 'OSDA', 'OSDA2121', 'osda@osda.com', 'Tepeji del Rios', '5567102230');
INSERT INTO `provedor` VALUES (12, 'qwfe', 'asd', 'asfd', 'asdvf', 'asdf');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Mariel', 'Garcia', 'Espinoza', 'ismariel', 'alohomora', 2);
INSERT INTO `usuario` VALUES (2, 'Kevin', 'Osornio', 'Martinez', 'kevin', 'kevin', 3);
INSERT INTO `usuario` VALUES (3, 'David', 'Osornio', 'Sanchez', 'djos', 'qazplm', 1);
INSERT INTO `usuario` VALUES (7, 'sf', 'fgvhbjn', 'cgvyhbuj', 'ghujk', 'vghbji', 3);
INSERT INTO `usuario` VALUES (8, 'chava', 'chava', 'chava', 'chava', 'chava', 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuariocompra
-- ----------------------------
INSERT INTO `usuariocompra` VALUES (1, 1, 10010);
INSERT INTO `usuariocompra` VALUES (2, 1, 10011);
INSERT INTO `usuariocompra` VALUES (4, 1, 10016);
INSERT INTO `usuariocompra` VALUES (5, 3, 10017);
INSERT INTO `usuariocompra` VALUES (7, 3, 10019);
INSERT INTO `usuariocompra` VALUES (8, 1, 10020);
INSERT INTO `usuariocompra` VALUES (9, 3, 10021);
INSERT INTO `usuariocompra` VALUES (10, 3, 10022);
INSERT INTO `usuariocompra` VALUES (12, 1, 10024);

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
	IN cant INT(3))
BEGIN
	DECLARE exis INT(10);
	SELECT existencias INTO exis FROM producto WHERE codigobarras = codigoB;
	
		if cant > 0 THEN
			INSERT INTO detallecompra VALUES(NULL, ticket, cant, codigoB);
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
			INSERT INTO compra VALUES (null, codigoC, fecha);
			INSERT INTO usuariocompra VALUES (null, 
				(SELECT idUser from usuario WHERE usuario = usua), 
				(SELECT noTicket FROM compra WHERE fechaCompra = fecha AND codigoCliente = codigoC));
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
