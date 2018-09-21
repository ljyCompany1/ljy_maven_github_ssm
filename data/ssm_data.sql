/*
Navicat MySQL Data Transfer

Source Server         : student
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : ssm_data

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2018-09-21 17:13:17
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123', '张三');
INSERT INTO `admin` VALUES ('2', 'user', '123456', '小黄狗');
