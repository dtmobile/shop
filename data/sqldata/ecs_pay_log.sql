/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : shenxian

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-07-08 09:48:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amortize_repay_money` float unsigned zerofill DEFAULT '000000000000',
  `down_payment` float unsigned zerofill DEFAULT '000000000000',
  `amorization_money` float DEFAULT '0',
  `repay_serial_code` varchar(200) DEFAULT NULL,
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pay_log
-- ----------------------------
