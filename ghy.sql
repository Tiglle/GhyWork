-- DROP DATABASE IF EXISTS `ghy`;
CREATE DATABASE `ghy` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ghy`;


/*
Navicat MySQL Data Transfer

Source Server         : ufovpsmysql
Source Server Version : 50727
Source Host           : 154.212.129.2:3306
Source Database       : ghy

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-29 14:20:02
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('65', '深圳丝足你懂得', '2019-08-28 01:00:00', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('66', '深圳按摩', '2019-08-28 01:00:00', '<p>1、按摩养生知识</p><p><br/></p><p>脚是人体的最重要地方,它里面有许多穴位的,比如:石家庄中医告诉你按哪会使得你身体如何?会有什么效果,一般中医帮你按有的人会适应这种方法,有的人则不太适应当然不用勉强自己,按摩是一种享受,不要让自己感觉到疼痛。</p><p><br/></p><p>经常泡脚就是一个好方法,当然人们也会添加一些中药,让自己更加舒服,达到想要结果,从而对身体也有益处。</p><p><br/></p><p>神经衰弱:用药:夜交藤500g。</p><p><br/></p><p>用法:将上药煎水去渣后,混入温水用蒸汽足浴盆浸泡双足30分钟,每日一次。</p><p><br/></p><p>脚湿气、干裂者:用药:白凤仙花30g、皂角30g、花椒15g。</p><p><br/></p><p>用法:上药任选一种,放入250ml醋内泡24小时后,睡前加入温水,用蒸汽足浴盆浸泡双足20分钟,连用7天。</p><p><br/></p><p>风湿麻木:用药:和山姜茎叶适量,或野花椒枝叶适量,或番木瓜枝叶适量。</p><p><br/></p><p>用法:煎汤后去渣,混入温水用蒸汽足浴盆浸泡双足30分钟。</p><p><br/></p><p>中医泡脚,不仅会自己身体好,对各种脚上不适的情况也有所帮助,也会有排毒养颜效果。</p><p><br/></p><p>2、按摩养生按什么穴位</p><p><br/></p><p>2.1、太白穴:缓解脚痛</p><p><br/></p><p>位置:将一只脚搁在另一条腿上,会看到脚部中心有一条椭圆形的弧线,这就是足弓。这个弧线的起始点,就是太白穴所在位置。</p><p><br/></p><p>2.2、委中穴:缓解腰背痛</p><p><br/></p><p>位置:应采用俯卧的取穴姿势,委中穴位于腘横纹中点,股二头肌腱与半腱肌腱中间,即膝盖里侧中央。</p><p><br/></p>');
INSERT INTO `news` VALUES ('67', '深圳丝足你懂得', '2019-08-29 01:00:00', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('68', '深圳丝足你懂得', '2019-08-29 01:00:00', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');
INSERT INTO `news` VALUES ('69', '1111111', '2019-08-29 01:00:00', '<p>11111<br/></p>');
INSERT INTO `news` VALUES ('70', '深圳丝足你懂得', '2019-08-29 01:00:00', '深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的，深圳丝足你懂的');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recevie
-- ----------------------------
INSERT INTO `recevie` VALUES ('13', '59.63.204.192', 'www.meisixiu.net', 'Windows --- Chrome-55.0.2883.87', '2019-08-26 05:56:08');
INSERT INTO `recevie` VALUES ('14', '59.63.204.192', 'www.meisixiu.net', 'Windows --- Chrome-55.0.2883.87', '2019-08-26 05:58:13');
INSERT INTO `recevie` VALUES ('15', '59.63.204.192', 'www.meisixiu.net', 'Windows --- Chrome-55.0.2883.87', '2019-08-26 05:59:12');
INSERT INTO `recevie` VALUES ('16', '59.63.204.192', 'www.meisixiu.net', 'Windows --- Chrome-55.0.2883.87', '2019-08-26 05:59:17');
INSERT INTO `recevie` VALUES ('17', '183.62.192.182', 'www.meisixiu.net', 'Windows --- Chrome-76.0.3809.100', '2019-08-26 07:13:38');
INSERT INTO `recevie` VALUES ('18', '223.242.197.90', 'www.meisixiu.net', 'Android --- Safari-4.0', '2019-08-26 10:16:18');
INSERT INTO `recevie` VALUES ('19', '223.242.197.90', 'www.meisixiu.net', 'Android --- Safari-4.0', '2019-08-26 10:16:57');
INSERT INTO `recevie` VALUES ('20', '111.7.100.26', 'www.meisixiu.net', 'Windows --- Chrome-72.0.3626.119', '2019-08-26 15:06:09');
INSERT INTO `recevie` VALUES ('21', '111.206.221.86', 'www.meisixiu.net', 'Mac --- Safari-9.0', '2019-08-26 22:28:41');
INSERT INTO `recevie` VALUES ('22', '40.77.188.231', 'meisixiu.net', 'Mac --- Safari-7.0', '2019-08-27 02:28:42');
INSERT INTO `recevie` VALUES ('23', '111.7.100.24', 'www.meisixiu.net', 'Windows --- Chrome-72.0.3626.119', '2019-08-27 19:42:52');
INSERT INTO `recevie` VALUES ('24', '123.126.68.143', 'www.meisixiu.net', 'Windows --- Chrome-74.0.3729.169', '2019-08-27 21:16:32');
INSERT INTO `recevie` VALUES ('25', '171.13.14.8', 'meisixiu.net', 'Android --- Safari-4.0', '2019-08-28 00:51:22');
INSERT INTO `recevie` VALUES ('26', '111.7.100.25', 'www.meisixiu.net', 'Windows --- Chrome-72.0.3626.119', '2019-08-28 09:42:30');
INSERT INTO `recevie` VALUES ('27', '36.99.136.139', 'www.meisixiu.net', 'Windows --- Chrome-72.0.3626.119', '2019-08-28 09:42:45');
INSERT INTO `recevie` VALUES ('28', '59.63.204.192', 'www.meisixiu.net', 'Windows --- Chrome-55.0.2883.87', '2019-08-28 13:50:16');
INSERT INTO `recevie` VALUES ('29', '40.77.191.55', 'meisixiu.net', 'Mac --- Safari-7.0', '2019-08-29 05:41:44');

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
