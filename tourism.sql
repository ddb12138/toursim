/*
 Navicat MySQL Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : tourism

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 23/04/2021 00:22:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tour_hotel
-- ----------------------------
DROP TABLE IF EXISTS `tour_hotel`;
CREATE TABLE `tour_hotel`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hNum` int(11) NULL DEFAULT NULL COMMENT '旅馆编号',
  `hName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅馆名称',
  `hAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅馆地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅馆联系电话',
  `describle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '旅馆描述',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅馆照片',
  `price` double NULL DEFAULT NULL COMMENT '旅馆价格',
  `stage` int(11) NULL DEFAULT NULL COMMENT '旅馆状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hNum`(`hNum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '旅游旅馆' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tour_hotel
-- ----------------------------

-- ----------------------------
-- Table structure for tour_manager
-- ----------------------------
DROP TABLE IF EXISTS `tour_manager`;
CREATE TABLE `tour_manager`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '旅游管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tour_manager
-- ----------------------------

-- ----------------------------
-- Table structure for tour_order
-- ----------------------------
DROP TABLE IF EXISTS `tour_order`;
CREATE TABLE `tour_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `addtime` datetime(0) NOT NULL COMMENT '订单添加时间',
  `order_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '订单状态',
  `scenic_id` int(11) NULL DEFAULT NULL COMMENT '景区编号',
  `ticket_num` int(11) NULL DEFAULT NULL COMMENT '对应票数',
  `ticket_price` int(11) NULL DEFAULT NULL COMMENT '景区价格',
  `ticket_total` int(11) NULL DEFAULT NULL COMMENT '总价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '旅游订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tour_order
-- ----------------------------

-- ----------------------------
-- Table structure for tour_scenic
-- ----------------------------
DROP TABLE IF EXISTS `tour_scenic`;
CREATE TABLE `tour_scenic`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `scenicName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区名',
  `scenicNum` int(11) NULL DEFAULT NULL COMMENT '景区编号',
  `scenicAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区地址',
  `pic1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区封面',
  `title1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区',
  `pic2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区图片1',
  `pic3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区图片2',
  `describle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '景区描述',
  `cost` double(10, 2) NULL DEFAULT NULL COMMENT '景区价格',
  `scenic_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区开放时间',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区联系电话',
  `creator_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '景区标签',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `scenicNum`(`scenicNum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '旅游景点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tour_scenic
-- ----------------------------

-- ----------------------------
-- Table structure for tour_user
-- ----------------------------
DROP TABLE IF EXISTS `tour_user`;
CREATE TABLE `tour_user`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账户',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `create_time` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '旅游用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tour_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
