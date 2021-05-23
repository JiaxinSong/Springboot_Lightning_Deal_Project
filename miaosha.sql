/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost
 Source Database       : miaosha

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : utf-8

 Date: 05/22/2021 18:01:28 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '',
  `price` double(10,0) NOT NULL DEFAULT '0',
  `description` varchar(500) NOT NULL DEFAULT '',
  `sales` int NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `item`
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('18', 'phone', '800', 'iphone', '509', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeRR6C05lxasJhgoXqBW-qXVCBJ7NBIxHrHQ&usqp=CAU');
COMMIT;

-- ----------------------------
--  Table structure for `item_stock`
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `item_stock`
-- ----------------------------
BEGIN;
INSERT INTO `item_stock` VALUES ('5', '110', '18'), ('6', '133', '19');
COMMIT;

-- ----------------------------
--  Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `item_price` double NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `order_price` double NOT NULL DEFAULT '0',
  `promo_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `order_info`
-- ----------------------------
BEGIN;
INSERT INTO `order_info` VALUES ('2021052100000000', '48', '18', '0', '1', '0', '0'), ('2021052100000100', '48', '18', '0', '1', '0', '0'), ('2021052100000200', '48', '18', '0', '1', '133', '0'), ('2021052100000300', '48', '18', '133', '1', '133', '0'), ('2021052100000400', '48', '18', '133', '1', '133', '0'), ('2021052100000500', '48', '18', '133', '1', '133', '0'), ('2021052200000600', '48', '18', '133', '1', '133', '0'), ('2021052200000700', '48', '18', '133', '1', '133', '1'), ('2021052200000800', '48', '18', '133', '1', '133', '1'), ('2021052200000900', '48', '18', '133', '1', '133', '1'), ('2021052200001000', '48', '18', '133', '1', '133', '1'), ('2021052200001100', '48', '18', '133', '1', '133', '1'), ('2021052200001200', '48', '18', '100', '1', '100', '1');
COMMIT;

-- ----------------------------
--  Table structure for `promo`
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '1999-12-12 12:12:12',
  `item_id` int NOT NULL DEFAULT '0',
  `promo_item_price` double NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '1999-12-12 12:12:12',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `promo`
-- ----------------------------
BEGIN;
INSERT INTO `promo` VALUES ('1', 'iphone4promo', '2021-05-22 14:35:00', '18', '100', '2021-05-25 02:34:00');
COMMIT;

-- ----------------------------
--  Table structure for `sequence_info`
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) NOT NULL,
  `current_value` int NOT NULL DEFAULT '0',
  `step` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sequence_info`
-- ----------------------------
BEGIN;
INSERT INTO `sequence_info` VALUES ('order_info', '13', '1');
COMMIT;

-- ----------------------------
--  Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `gender` tinyint NOT NULL DEFAULT '0' COMMENT '//1代表男性，2代表女性',
  `age` int NOT NULL DEFAULT '0',
  `telphone` varchar(255) NOT NULL DEFAULT '',
  `register_mode` varchar(255) NOT NULL DEFAULT '' COMMENT '//byphone,bywechat,byalipay',
  `third_party_id` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telphone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_info`
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES ('1', '第一个ddsdas', '1', '22', '34324', 'byphone', ''), ('37', 'Jiaxin', '1', '22', '123123', 'byphone', ''), ('40', '宋佳信', '1', '25', '123333', 'byphone', ''), ('41', 'dd', '1', '23', '334', 'byphone', ''), ('44', 'Jddd', '1', '12', '454545', 'byphone', ''), ('45', 'dff', '1', '25', '66666', 'byphone', ''), ('46', 'ddsds', '1', '24', '33333333', 'byphone', ''), ('47', 'yyyyy', '1', '23', '55555', 'byphone', ''), ('48', 'Jiaixn Song', '1', '25', '99999', 'byphone', '');
COMMIT;

-- ----------------------------
--  Table structure for `user_password`
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_password`
-- ----------------------------
BEGIN;
INSERT INTO `user_password` VALUES ('1', 'dsfdf', '1'), ('8', 'Qpf0SxOVUjUkWySXOZ16kw==', '37'), ('9', 'iSTc1w7xRk7Wl1pcYQLbQg==', '40'), ('10', 'Qpf0SxOVUjUkWySXOZ16kw==', '41'), ('11', 'Qpf0SxOVUjUkWySXOZ16kw==', '0'), ('12', 'Qpf0SxOVUjUkWySXOZ16kw==', '45'), ('13', 'Qpf0SxOVUjUkWySXOZ16kw==', '46'), ('14', 'xf4liW5J3f6ZbbdQjPAFNA==', '47'), ('15', '0+uakjPlKUh0DX64wwYtFA==', '48');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
