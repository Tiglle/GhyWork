/*
Navicat MySQL Data Transfer

Source Server         : ufovpsmysql
Source Server Version : 50727
Source Host           : 154.212.129.2:3306
Source Database       : ghy

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-23 16:19:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '新增新闻', 'addNews', null);
INSERT INTO `menu` VALUES ('2', '查看网站访问量', 'loCount', null);
INSERT INTO `menu` VALUES ('3', '清除网站访问量', 'deCount', null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('41', '深圳丝足你懂得', '2019-08-23 01:00:10', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('42', '深圳丝足你懂得', '2019-08-23 01:00:12', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('43', '深圳丝足你懂得', '2019-08-23 01:00:12', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('44', '深圳丝足你懂得', '2019-08-23 01:00:14', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('45', '1111111', '2019-08-23 00:00:00', '<p>11111<br/></p>');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  `permission_sign` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '新增新闻', 'news:add', '新增新闻');
INSERT INTO `permission` VALUES ('2', '保存新闻', 'news:save', '保存新闻');
INSERT INTO `permission` VALUES ('3', '网站访问量', 'recevice:look', '网站访问量');
INSERT INTO `permission` VALUES ('4', '清楚访问量', 'recevice:del', '清楚访问量');

-- ----------------------------
-- Table structure for recevie
-- ----------------------------
DROP TABLE IF EXISTS `recevie`;
CREATE TABLE `recevie` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recevie
-- ----------------------------
INSERT INTO `recevie` VALUES ('3', '183.62.192.182', 'www.meisixiu.net', 'Windows --- Chrome-76.0.3809.100', '2019-08-23 07:59:45');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) DEFAULT NULL,
  `permission_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yangrui', '144a50a8e101d286b9a30bb88160226b', 'yangrui', '123', '1', '2019-08-23 11:28:54');

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `mid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES ('1', '1', '1');
INSERT INTO `user_menu` VALUES ('2', '1', '2');
INSERT INTO `user_menu` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
