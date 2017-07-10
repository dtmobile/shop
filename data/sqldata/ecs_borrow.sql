/*
Navicat MySQL Data Transfer

Source Server         : localhost_wamp2.2
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : shenxian

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-07-06 10:42:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow`;
CREATE TABLE `ecs_borrow` (
  `borrow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户编号',
  `total_money` float NOT NULL COMMENT '贷款总额',
  `borrow_purpose` varchar(500) NOT NULL COMMENT '贷款目的',
  `borrow_date` date NOT NULL COMMENT '其它说明',
  `user_bank_id` varchar(30) NOT NULL COMMENT '用户银行卡号',
  `user_opening_bank` varchar(255) NOT NULL COMMENT '开户行',
  `amortize_period` int(11) NOT NULL,
  `amortize_type` int(11) NOT NULL COMMENT '1-等额本息 2-先息后本',
  `status` varchar(10) NOT NULL COMMENT '1-待审核 2-已打款 3-还款中 4-已还清 5-删除',
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_borrow_amortize`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_amortize`;
CREATE TABLE `ecs_borrow_amortize` (
  `amortize_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户编号',
  `borrow_id` int(8) unsigned NOT NULL COMMENT '用户编号',
  `amortize_need_money` float(11,0) NOT NULL COMMENT '本分期应该偿还的金额',
  `amortize_repay_money` float NOT NULL COMMENT '本分期实际偿还的金额',
  `amortize_repay_date` datetime NOT NULL,
  `amortize_date` date NOT NULL COMMENT '本分期最晚偿还日期',
  `repay_source` varchar(20) NOT NULL,
  `repay_serial_code` varchar(200) NOT NULL COMMENT '偿还金额流水号',
  `comment` varchar(1000) DEFAULT NULL COMMENT '其它说明',
  `status` varchar(10) NOT NULL COMMENT '1-待审核 2-未还款  3-已还款 4-已删除',
  PRIMARY KEY (`amortize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_amortize
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_borrow_attach`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_attach`;
CREATE TABLE `ecs_borrow_attach` (
  `attach_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `borrow_id` int(10) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `actual_name` varchar(50) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `mobile_phone` varchar(20) NOT NULL,
  `identity_card` varchar(18) DEFAULT NULL COMMENT '身份证编号',
  `id_begin_date` date DEFAULT NULL,
  `id_end_date` date DEFAULT NULL,
  `domicile_address` varchar(2000) DEFAULT NULL COMMENT '户籍所在地',
  `nationality` varchar(100) DEFAULT NULL COMMENT '民族',
  `home_address` varchar(2000) DEFAULT NULL COMMENT '现在家庭住址',
  `home_live_month` int(11) DEFAULT NULL COMMENT '居住时间',
  `home_type` int(11) DEFAULT NULL COMMENT '现在住房类型',
  `home_rent_per_month` float DEFAULT NULL,
  `home_buy_cost` float DEFAULT NULL,
  `have_house` tinyint(4) DEFAULT NULL COMMENT '是否有房产',
  `house_address` varchar(2000) DEFAULT NULL COMMENT '房产地址',
  `have_car` tinyint(4) DEFAULT NULL COMMENT '是否有车',
  `car_description` varchar(2000) DEFAULT NULL,
  `live_partner` int(11) DEFAULT NULL COMMENT '是否有共同居住者',
  `health` varchar(100) DEFAULT NULL,
  `sick_history` varchar(500) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL COMMENT '教育程序',
  `marital_status` varchar(10) DEFAULT NULL COMMENT '婚姻状况',
  `marry_date` date DEFAULT NULL COMMENT '结婚日期',
  `sallary_one_year` float DEFAULT NULL COMMENT '个人年薪',
  `have_credit_crad` tinyint(4) DEFAULT NULL COMMENT '是否有信用卡',
  `credit_card_max` float DEFAULT '0' COMMENT '单张信用卡最大额度',
  `company_name` varchar(100) DEFAULT NULL,
  `company_address` varchar(500) DEFAULT NULL,
  `company_phone` varchar(20) DEFAULT NULL,
  `company_type` varchar(100) DEFAULT NULL COMMENT '公司性质',
  `company_industury` varchar(100) DEFAULT NULL COMMENT '所属行业',
  `company_department` varchar(255) DEFAULT NULL COMMENT '所在部门',
  `company_duty` varchar(50) DEFAULT NULL COMMENT '担任职务',
  `company_entry_time` date DEFAULT NULL COMMENT '入职现单位时间',
  `company_income_month` float DEFAULT NULL COMMENT '当前公司月收入',
  `friends` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`attach_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_attach
-- ----------------------------
