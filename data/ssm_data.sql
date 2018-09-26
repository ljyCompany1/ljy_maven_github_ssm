/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : ssm_data

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2018-09-26 20:21:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(15) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123', '张三丰');
INSERT INTO `admin` VALUES ('2', 'user', '123456', '张无忌');
INSERT INTO `admin` VALUES ('3', 'user1', '333', '赵敏');
INSERT INTO `admin` VALUES ('4', 'user2', '555', '郭靖');
INSERT INTO `admin` VALUES ('5', 'user3', '1213123', '杨过');
INSERT INTO `admin` VALUES ('6', 'user4', '2131', '金轮法王');
