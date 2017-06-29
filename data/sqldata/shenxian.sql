/*
Navicat MySQL Data Transfer

Source Server         : localhost_wamp2.2
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : shenxian

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-06-29 19:55:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_account_log
-- ----------------------------
INSERT INTO `ecs_account_log` VALUES ('1', '1', '0.00', '0.00', '0', '8388607', '1447996060', '11', '2');
INSERT INTO `ecs_account_log` VALUES ('2', '1', '0.00', '0.00', '0', '-5500', '1447996080', '支付订单 2015112005939', '99');
INSERT INTO `ecs_account_log` VALUES ('3', '3', '0.00', '0.00', '0', '0', '1448164517', '订单 2015112275252 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('4', '3', '0.00', '0.00', '0', '0', '1448165915', '订单 2015112265460 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('5', '3', '0.00', '0.00', '0', '0', '1448167013', '订单 2015112225818 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('6', '3', '-0.01', '0.00', '0', '0', '1448167259', '支付订单 2015112256203', '99');
INSERT INTO `ecs_account_log` VALUES ('7', '3', '-0.01', '0.00', '0', '0', '1448170580', '支付订单 2015112258790', '99');
INSERT INTO `ecs_account_log` VALUES ('8', '5', '99999999.99', '0.00', '0', '0', '1448230508', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('9', '5', '-0.01', '0.00', '0', '0', '1448231164', '支付订单 2015112391096', '99');
INSERT INTO `ecs_account_log` VALUES ('10', '5', '0.00', '0.00', '0', '0', '1448232942', '订单 2015112356122 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('11', '5', '-0.01', '0.00', '0', '0', '1448234136', '支付订单 2015112318877', '99');
INSERT INTO `ecs_account_log` VALUES ('12', '5', '0.00', '0.00', '0', '0', '1448242320', '订单 2015112369856 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('13', '5', '0.00', '0.00', '0', '0', '1448247519', '订单 2015112314657 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('14', '5', '0.00', '0.00', '0', '0', '1448250063', '订单 2015112366532 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('15', '5', '-111111.00', '0.00', '0', '0', '1448408235', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('16', '5', '-1111111.00', '0.00', '0', '0', '1448408273', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('17', '5', '-99999999.99', '0.00', '0', '0', '1448408290', '1111', '2');
INSERT INTO `ecs_account_log` VALUES ('18', '5', '11111111.00', '0.00', '0', '0', '1448408322', '1111', '2');
INSERT INTO `ecs_account_log` VALUES ('19', '5', '99999999.99', '0.00', '0', '0', '1448408338', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('20', '5', '-99999999.00', '0.00', '0', '0', '1448408358', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('21', '5', '899.01', '0.00', '0', '0', '1448408391', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('22', '5', '0.00', '0.00', '0', '0', '1448409431', '订单 2015112344712 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('23', '5', '0.00', '0.00', '0', '0', '1448409980', '订单 2015112561257 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('24', '1', '11111.00', '0.00', '0', '0', '1449032501', '111', '2');
INSERT INTO `ecs_account_log` VALUES ('25', '1', '-88.00', '0.00', '0', '0', '1449032504', '支付订单 2015120242661', '99');
INSERT INTO `ecs_account_log` VALUES ('26', '1', '0.00', '0.00', '88', '88', '1449032601', '订单 2015120242661 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('27', '5', '8.80', '0.00', '9', '0', '1456207215', '订单号 2015113044808, 分成:金钱 8.8 积分 9', '99');

-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad
-- ----------------------------
INSERT INTO `ecs_ad` VALUES ('1', '1', '0', '首页_粮油副食_分类商品广告', '', '1449011954874068927.jpg', '1447660800', '1608105600', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('2', '2', '0', '首页_蔬菜水果_分类商品广告', '', '1449010763793377576.jpg', '1447660800', '1608105600', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('3', '3', '0', '首页_酒水饮料_分类商品广告', '', '1449012797850565666.jpg', '1447660800', '1608105600', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('4', '4', '0', '首页_生鲜食品_分类商品广告', '', '1449010433801562396.jpg', '1447660800', '1608105600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('5', '5', '0', '首页倒计时广告位1', '', '1448989615330840923.jpg', '1447747200', '1671264000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('9', '5', '0', '首页倒计时广告位2', '', '1448990018817846134.jpg', '1448956800', '1640937600', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('7', '5', '0', '首页倒计时广告位3', '', '1448989640974907552.jpg', '1448956800', '1640937600', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('8', '5', '0', '首页倒计时广告位4', '', '1448989657559892617.jpg', '1448956800', '1640937600', '', '', '', '3', '1');

-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_action
-- ----------------------------
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('135', '4', 'role_manage', '');

-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=636 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_log
-- ----------------------------
INSERT INTO `ecs_admin_log` VALUES ('1', '1447698202', '1', '编辑权限管理: sclzz', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('2', '1447702134', '1', '添加商品分类: 狗狗零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('3', '1447702152', '1', '添加商品分类: 狗狗主粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('4', '1447702169', '1', '添加商品分类: 猫咪主粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('5', '1447702179', '1', '添加商品分类: 猫咪零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('6', '1447702189', '1', '添加商品分类: 猫/狗玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('7', '1447702204', '1', '添加商品分类: 水族世界', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('8', '1447702218', '1', '添加商品分类: 鼠类及小宠', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('9', '1447702231', '1', '添加商品分类: 兔类食品日用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('10', '1447702247', '1', '添加商品分类: 猫/狗生活日用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('11', '1447702266', '1', '添加商品分类: 宠物医疗保健', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('12', '1447702281', '1', '编辑商品分类: 宠物玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('13', '1447702320', '1', '添加商品分类: 清洁美容', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('14', '1447702350', '1', '添加商品分类: 宠物服饰/配件', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('15', '1447702364', '1', '添加商品分类: 鸟类相关', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('16', '1447702418', '1', '编辑商品分类: 宠物主粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('17', '1447702439', '1', '编辑商品分类: 宠物零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('18', '1447702493', '1', '编辑商品分类: 宠物生活日用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('19', '1447702526', '1', '删除商品分类: 兔类食品日用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('20', '1447702530', '1', '删除商品分类: 猫咪零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('21', '1447702533', '1', '删除商品分类: 猫咪主粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('22', '1447702555', '1', '添加商品分类: 养宠书籍', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('23', '1447702672', '1', '添加商品分类: 进口狗粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('24', '1447702695', '1', '添加商品分类: 国产狗粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('25', '1447702751', '1', '添加商品分类: 散装狗粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('26', '1447702759', '1', '添加商品分类: 处方狗粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('27', '1447702875', '1', '添加商品分类: 进口猫粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('28', '1447702887', '1', '添加商品分类: 国产猫粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('29', '1447702899', '1', '添加商品分类: 拆零试吃', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('30', '1447702907', '1', '添加商品分类: 处方猫粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('31', '1447702950', '1', '添加商品分类: 罐头湿粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('32', '1447702963', '1', '添加商品分类: 美味零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('33', '1447702972', '1', '添加商品分类: 专用零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('34', '1447702981', '1', '添加商品分类: 猫草薄荷', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('35', '1447703083', '1', '添加商品分类: 磨牙洁齿', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('36', '1447703092', '1', '添加商品分类: 肉制零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('37', '1447703102', '1', '添加商品分类: 奶制零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('38', '1447703131', '1', '添加商品分类: 绵制玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('39', '1447703141', '1', '添加商品分类: 橡胶玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('40', '1447703151', '1', '添加商品分类: 塑料玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('41', '1447703162', '1', '添加商品分类: 手工玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('42', '1447703191', '1', '添加商品分类: 食用玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('43', '1447703202', '1', '添加商品分类: 木质玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('44', '1447703230', '1', '添加商品分类: 狗狗餐具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('45', '1447703244', '1', '添加商品分类: 狗狗清洁', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('46', '1447703255', '1', '添加商品分类: 狗狗外出', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('47', '1447703266', '1', '添加商品分类: 狗狗住所', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('48', '1447703275', '1', '添加商品分类: 狗狗训练', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('49', '1447703310', '1', '添加商品分类: 洗澡工具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('50', '1447703325', '1', '添加商品分类: 梳剪工具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('51', '1447703335', '1', '添加商品分类: 护理工具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('52', '1447703347', '1', '添加商品分类: 美容配套', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('53', '1447703403', '1', '添加商品分类: 时尚服装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('54', '1447703416', '1', '添加商品分类: 精美配饰', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('55', '1447703447', '1', '添加商品分类: 日常颈圈', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('56', '1447703461', '1', '添加商品分类: 日常拉带', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('57', '1447703482', '1', '添加商品分类: P链/蛇链', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('58', '1447703510', '1', '添加商品分类: 宠物世界', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('59', '1447703581', '1', '添加商品分类: 《它时代》', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('60', '1447703593', '1', '添加商品分类: 狗狗书籍', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('61', '1447703646', '1', '添加商品分类: 鱼缸/水族箱', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('62', '1447703695', '1', '添加商品分类: 鱼饲料', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('63', '1447703705', '1', '添加商品分类: 过滤器', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('64', '1447703716', '1', '添加商品分类: 潜水泵', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('65', '1447703730', '1', '添加商品分类: 氧气泵', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('66', '1447703739', '1', '添加商品分类: 照明器材', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('67', '1447703748', '1', '添加商品分类: 温控设备', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('68', '1447703756', '1', '添加商品分类: 药水系列', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('69', '1447704389', '1', '添加商品分类: 兔兔用品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('70', '1447704410', '1', '添加商品分类: 仓鼠用品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('71', '1447704430', '1', '添加商品分类: 猫类用品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('72', '1447704649', '1', '添加品牌管理: 艾尔Aier', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('73', '1447704682', '1', '添加品牌管理: 发育宝Haipet', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('74', '1447704720', '1', '添加品牌管理: 雷米高', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('75', '1447705943', '1', '添加品牌管理: 百利', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('76', '1447706000', '1', '添加品牌管理: 森美', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('77', '1447706048', '1', '添加品牌管理: 哈根纽翠斯', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('78', '1447706093', '1', '添加品牌管理: 比瑞吉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('79', '1447706126', '1', '添加品牌管理: 百利本能', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('80', '1447706160', '1', '添加品牌管理: 金赏', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('81', '1447706206', '1', '添加品牌管理: 维洛司', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('82', '1447706339', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('83', '1447707014', '1', '添加商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('84', '1447707065', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('85', '1447707293', '1', '添加商品: 法国皇家狗粮A3奶糕8kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('86', '1447707432', '1', '添加商品: 贵宾奶糕比熊博美犬主粮2KG美毛天然粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('87', '1447707532', '1', '添加商品: 成犬专用美毛去泪痕天然狗粮2kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('88', '1447707696', '1', '添加商品: 宝路中小型犬成犬牛肉通用犬粮7.5kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('89', '1447707771', '1', '添加商品: 贵宾泰迪全犬种通用狗粮10kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('90', '1447707875', '1', '添加商品: 多特思天然鲜肉湿狗粮 贵宾成犬狗粮10kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('91', '1447707947', '1', '添加商品: 麦顿A6狗粮泰迪贵宾狗粮比熊幼犬小型犬专用天然狗粮3kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('92', '1447708029', '1', '添加商品: 麦顿狗粮金典天然粮10kg金毛萨摩德牧大型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('93', '1447708083', '1', '添加商品: 边境狗粮专用粮10kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('94', '1447708513', '1', '添加商品: 泰迪金毛博美宠物零食鸡肉磨牙零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('95', '1447708608', '1', '添加商品: 金毛边牧泰迪狗训练奖励零食磨牙', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('96', '1447708687', '1', '添加商品: 狗零食宠宝坊泰迪训狗奖励磨牙鸡胸肉400g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('97', '1447709072', '1', '添加商品: 大型犬金毛萨摩耶狗狗磨牙棒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('98', '1447709143', '1', '添加商品: 泰迪金毛博美宠物零食鸡肉磨牙零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('99', '1447709234', '1', '添加商品: 中型犬鲜肉湿粮狗罐头 375g*12罐', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('100', '1447709315', '1', '添加商品: 鸡肉硬丝400g泰迪幼犬磨牙棒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('101', '1447709372', '1', '添加商品: 耐威克宠物零食牛肉洁齿骨100g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('102', '1447709444', '1', '添加商品: 耐威克柔软鸡肉条100g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('103', '1447709515', '1', '添加商品: 蒙贝狗狗磨牙棒幼犬宠物零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('104', '1447709572', '1', '添加商品: 鸡肉拧丝安心宠物零食鸡肉条泰迪鸡肉干磨牙400g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('105', '1447709633', '1', '添加商品: 爱犬生活水晶鸡肉切丝800g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('106', '1447709779', '1', '添加商品: 宠物玩具小狗狗磨牙发声毛绒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('107', '1447709832', '1', '添加商品: 狗玩具宠物玩具发声音耐咬磨牙弹力泰迪', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('108', '1447709895', '1', '添加商品: 边牧泰迪狗玩具训犬玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('109', '1447709957', '1', '添加商品: 宠物猫玩具怡亲两用抓板式猫跳台TPCF-062', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('110', '1447710030', '1', '添加商品: 泰迪金毛猫狗狗玩具耐咬宠物玩具用品磨牙几何橡胶球', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('111', '1447710093', '1', '添加商品: 耐咬玩具球萨摩耶金毛宠物玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('112', '1447710209', '1', '添加商品: 誉丰优质宠物狗狗双节骨头纯棉线结绳玩具', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('113', '1447710410', '1', '添加商品: 狗洗澡刷宠物洗澡用品美容宠物刷', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('114', '1447710460', '1', '添加商品: 宠物美容梳宠物直排梳子单排疏密两用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('115', '1447710516', '1', '添加商品: 不锈钢宠物指甲剪狗狗指甲钳', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('116', '1447710574', '1', '添加商品: 不锈钢宠物指甲剪狗狗指甲钳', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('117', '1447710640', '1', '添加商品: 金盾狗狗滴耳液 滴耳油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('118', '1447710706', '1', '添加商品: 狗狗拔毛粉泰迪贵宾犬耳朵清洁耳道消炎杀菌50g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('119', '1447710776', '1', '添加商品: 狗狗五指型狗洗澡手套', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('120', '1447710938', '1', '添加商品: 狗狗衣服秋冬新款羊羊得亿变身装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('121', '1447710995', '1', '添加商品: 秋冬保暖宠物四脚装狗狗衣服加厚服饰', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('122', '1447711439', '1', '添加商品: Petcircle狗狗衣服冬款泰迪唐小鸭', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('123', '1447711529', '1', '添加商品: 秋冬装狗狗衣服金毛萨摩耶哈士奇', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('124', '1447711623', '1', '添加商品: 小狗春秋新款高领饼干小熊绣花服饰', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('125', '1447711722', '1', '添加商品: 带包包棉夹克宠物服饰小狗衣服', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('126', '1447714066', '1', '添加广告位置: 首页_宠物主粮_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('127', '1447714811', '1', '编辑广告位置: 首页_宠物主粮_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('128', '1447714900', '1', '添加广告: 首页_宠物主粮_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('129', '1447715574', '1', '编辑广告位置: 首页_宠物主粮_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('130', '1447720889', '1', '添加广告位置: 首页_宠物零食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('131', '1447720910', '1', '添加广告: 首页_宠物零食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('132', '1447725958', '1', '编辑广告: 首页_宠物主粮_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('133', '1447725978', '1', '编辑广告: 首页_宠物零食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('134', '1447726005', '1', '添加广告位置: 首页_宠物玩具_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('135', '1447726021', '1', '添加广告: 首页_宠物玩具_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('136', '1447727645', '1', '添加广告位置: 首页_清洁美容_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('137', '1447727656', '1', '编辑广告位置: 首页_清洁美容_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('138', '1447727679', '1', '添加广告: 首页_清洁美容_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('139', '1447729300', '1', '添加商品: 豪华可拆洗狗窝泰迪小狗狗用品狗房子', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('140', '1447729652', '1', '添加商品: 泰迪衣服四脚装秋冬装 贵宾犬比熊衣服', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('141', '1447729876', '1', '添加商品: 狗狗肉类零食爱犬生活鸡胸肉整支特价', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('142', '1447730034', '1', '添加商品: 泰迪贵宾训犬零食三明治400g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('143', '1447730051', '1', '编辑商品: 泰迪贵宾训犬零食三明治400g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('144', '1447779304', '1', '添加商品: 蓓味佳猫粮通用型三文鱼成猫猫粮', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('145', '1447779530', '1', '添加商品: 奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('146', '1447808789', '1', '添加广告位置: 首页倒计时广告位', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('147', '1447808825', '1', '添加广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('148', '1447808847', '1', '添加广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('149', '1447810302', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('150', '1447810339', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('151', '1447810387', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('152', '1447810545', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('153', '1447810559', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('154', '1447810633', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('155', '1447810709', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('156', '1447810735', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('157', '1447810887', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('158', '1447810902', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('159', '1447810933', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('160', '1447811137', '1', '编辑友情链接: 模板之家', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('161', '1447811149', '1', '编辑友情链接: 购买空间', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('162', '1447811153', '1', '编辑友情链接: 域名注册', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('163', '1447811166', '1', '编辑友情链接: 模板之家', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('164', '1447811180', '1', '编辑友情链接: 模板之家', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('165', '1447811204', '1', '编辑友情链接: 购买空间', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('166', '1447811230', '1', '编辑友情链接: 域名注册', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('167', '1447811249', '1', '添加友情链接: 免备案空间', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('168', '1447811324', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('169', '1447811368', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('170', '1447811646', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('171', '1447816044', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('172', '1447822340', '1', '添加商品分类: 全犬期', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('173', '1447822354', '1', '添加商品分类: 幼犬期', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('174', '1447822364', '1', '添加商品分类: 成犬期', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('175', '1447822379', '1', '添加商品分类: 老犬期', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('176', '1447822403', '1', '添加商品分类: 迷你犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('177', '1447822416', '1', '添加商品分类: 小型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('178', '1447822427', '1', '添加商品分类: 中大型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('179', '1447822470', '1', '添加商品分类: 全体型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('180', '1447822510', '1', '添加商品分类: 拆零500g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('181', '1447822520', '1', '添加商品分类: 拆零100g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('182', '1447822565', '1', '添加商品分类: 营养补充', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('183', '1447822576', '1', '添加商品分类: 肝脏', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('184', '1447822588', '1', '添加商品分类: 关节', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('185', '1447822600', '1', '添加商品分类: 过敏', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('186', '1447822634', '1', '添加商品分类: 真骨类', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('187', '1447823532', '1', '添加商品分类: 发声型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('188', '1447823545', '1', '添加商品分类: 非发声型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('189', '1447823563', '1', '添加商品分类: 漏食型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('190', '1447823579', '1', '添加商品分类: 常规型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('191', '1447823592', '1', '添加商品分类: 互动型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('192', '1447823619', '1', '添加商品分类: 大型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('193', '1447823631', '1', '添加商品分类: 小型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('194', '1447823645', '1', '添加商品分类: 中型犬', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('195', '1447823677', '1', '添加商品分类: 意潇', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('196', '1447823693', '1', '添加商品分类: 愤怒小鸟', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('197', '1447823757', '1', '添加商品分类: 淋浴器', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('198', '1447823781', '1', '添加商品分类: 吸水毛巾', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('199', '1447823796', '1', '添加商品分类: 洗澡刷', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('200', '1447823812', '1', '添加商品分类: 稀释瓶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('201', '1447823823', '1', '添加商品分类: 吹风机/配件', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('202', '1447823836', '1', '添加商品分类: 吹水机/配件', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('203', '1447823854', '1', '添加商品分类: 洗猫袋', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('204', '1447823881', '1', '添加商品分类: 指甲剪', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('205', '1447823892', '1', '添加商品分类: 磨甲器', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('206', '1447823915', '1', '添加商品分类: 精油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('207', '1447823928', '1', '添加商品分类: 美容石', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('208', '1447823940', '1', '添加商品分类: 橡皮圈', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('209', '1447823990', '1', '添加商品分类: 滤棉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('210', '1447824006', '1', '添加商品分类: 缓食碗', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('211', '1447824019', '1', '添加商品分类: 辅助用品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('212', '1447824029', '1', '添加商品分类: 餐桌', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('213', '1447824044', '1', '添加商品分类: 美味盘', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('214', '1447824060', '1', '添加商品分类: 灭菌灯/机', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('215', '1447824076', '1', '添加商品分类: 洗手液', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('216', '1447824089', '1', '添加商品分类: 足部护理', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('217', '1447824100', '1', '添加商品分类: 探渍灯', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('218', '1447824120', '1', '添加商品分类: 航空箱', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('219', '1447824132', '1', '添加商品分类: 狗狗背包（狗用）', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('220', '1447824146', '1', '添加商品分类: 防失身份牌', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('221', '1447824160', '1', '添加商品分类: 太阳镜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('222', '1447824186', '1', '添加商品分类: 棉窝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('223', '1447824195', '1', '添加商品分类: 棉垫', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('224', '1447824223', '1', '添加商品分类: 电热毯', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('225', '1447824242', '1', '添加商品分类: 四季窝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('226', '1447824267', '1', '添加商品分类: 训狗包', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('227', '1447824280', '1', '添加商品分类: 止叫', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('228', '1447824294', '1', '添加商品分类: 训犬棒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('229', '1447824305', '1', '添加商品分类: 响片', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('230', '1447824322', '1', '添加商品分类: 禁区喷', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('231', '1447877703', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('232', '1447877754', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('233', '1447881079', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('234', '1447881181', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('235', '1447881195', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('236', '1447902728', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('237', '1447903031', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('238', '1447903099', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('239', '1447903149', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('240', '1447903179', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('241', '1447903192', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('242', '1447903709', '1', '添加属性: 重量', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('243', '1447903756', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('244', '1447903770', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('245', '1447903770', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('246', '1447903770', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('247', '1447953821', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('248', '1447953887', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('249', '1447954278', '1', '编辑商品: 法国皇家狗粮A3奶糕8kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('250', '1447959937', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('251', '1447960970', '1', '安装配送方式: 上门取货', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('252', '1447960976', '1', '添加配送区域: 中国', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('253', '1447960987', '1', '安装配送方式: 运费到付', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('254', '1447960992', '1', '添加配送区域: 中国', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('255', '1447961001', '1', '安装配送方式: 顺丰速运', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('256', '1447961007', '1', '添加配送区域: 中国', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('257', '1447961024', '1', '安装支付方式: <font color=\"#FF0000\">支付宝</font>', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('258', '1447961030', '1', '安装支付方式: 余额支付', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('259', '1447961039', '1', '安装支付方式: 银行汇款/转帐', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('260', '1447961045', '1', '安装支付方式: 货到付款', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('261', '1447964957', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('262', '1447967073', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('263', '1447967098', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('264', '1447967198', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('265', '1447967261', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('266', '1447967305', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('267', '1447967776', '1', '编辑支付方式: 支付宝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('268', '1447983072', '1', '编辑商品: 金毛边牧泰迪狗训练奖励零食磨牙', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('269', '1447983089', '1', '添加团购商品: 金毛边牧泰迪狗训练奖励零食磨牙', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('270', '1447983184', '1', '编辑商品: 边境狗粮专用粮10kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('271', '1447983214', '1', '添加团购商品: 边境狗粮专用粮10kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('272', '1447983261', '1', '添加团购商品: 耐威克柔软鸡肉条100g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('273', '1447983297', '1', '添加团购商品: 爱犬生活水晶鸡肉切丝800g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('274', '1447983313', '1', '编辑团购商品: 耐威克柔软鸡肉条100g[3]', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('275', '1447983329', '1', '编辑团购商品: 边境狗粮专用粮10kg[2]', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('276', '1447983405', '1', '添加团购商品: 豪华可拆洗狗窝泰迪小狗狗用品狗房子', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('277', '1447983468', '1', '添加积分可兑换的商品: 2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('278', '1447983481', '1', '添加积分可兑换的商品: 4', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('279', '1447983493', '1', '添加积分可兑换的商品: 6', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('280', '1447983504', '1', '添加积分可兑换的商品: 11', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('281', '1447983517', '1', '添加积分可兑换的商品: 14', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('282', '1447988656', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('283', '1447988694', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('284', '1448043067', '1', '编辑商品: 狗狗衣服秋冬新款羊羊得亿变身装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('285', '1448043305', '1', '添加优惠活动: 购物金额满500元，省100元', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('286', '1448043842', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('287', '1448043890', '1', '编辑前台语言项: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('288', '1448045054', '1', '编辑商品: 奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('289', '1448045244', '1', '编辑商品: 奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('290', '1448063093', '1', '编辑广告: 手机版首页Banner-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('291', '1448063108', '1', '编辑广告: 手机版首页Banner-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('292', '1448063123', '1', '编辑广告: 手机版首页Banner-3', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('293', '1448074629', '1', '编辑广告: 热门市场-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('294', '1448074656', '1', '编辑广告: 热门市场-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('295', '1448074666', '1', '编辑广告: 热门市场-3', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('296', '1448074676', '1', '编辑广告: 热门市场-4', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('297', '1448074685', '1', '编辑广告: 热门市场-5', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('298', '1448074695', '1', '编辑广告: 热门市场-6', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('299', '1448074706', '1', '编辑广告: 热门市场-7', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('300', '1448074716', '1', '编辑广告: 热门市场-8', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('301', '1448074725', '1', '编辑广告: 热门市场-9', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('302', '1448141586', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('303', '1448141846', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('304', '1448157768', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('305', '1448160316', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('306', '1448162431', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('307', '1448162689', '1', '编辑支付方式: 支付宝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('308', '1448162819', '1', '添加商品: 1分钱支付测试商品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('309', '1448162905', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('310', '1448164137', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('311', '1448164617', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('312', '1448166185', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('313', '1448167071', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('314', '1448167238', '1', '编辑会员账号: 18113131306', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('315', '1448215122', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('316', '1448219736', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('317', '1448225174', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('318', '1448225186', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('319', '1448229518', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('320', '1448230235', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('321', '1448232067', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('322', '1448233369', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('323', '1448237536', '1', '编辑支付方式: 支付宝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('324', '1448239639', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('325', '1448239668', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('326', '1448241251', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('327', '1448241767', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('328', '1448242172', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('329', '1448242276', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('330', '1448242466', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('331', '1448247369', '1', '编辑订单: 2015112314657,订单总金额由 0.01 变为 15.01', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('332', '1448250097', '1', '编辑订单: 2015112366532', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('333', '1448391803', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('334', '1448392536', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('335', '1448392740', '1', '添加商品: 贝贝宠物零食A级鸡肉整枝800g鸡胸肉干', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('336', '1448392810', '1', '添加团购商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('337', '1448392974', '1', '添加商品: 喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('338', '1448393043', '1', '添加团购商品: 贝贝宠物零食A级鸡肉整枝800g鸡胸肉干', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('339', '1448393089', '1', '添加团购商品: 喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('340', '1448393300', '1', '编辑商品: 1分钱支付测试商品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('341', '1448393965', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('342', '1448410243', '1', '编辑订单: 2015112561257', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('343', '1448479456', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('344', '1448480122', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('345', '1448482827', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('346', '1448482844', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('347', '1448483022', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('348', '1448483037', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('349', '1448483246', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('350', '1448483515', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('351', '1448483804', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('352', '1448483817', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('353', '1448484523', '1', '编辑商店设置: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('354', '1448494765', '1', '添加属性: 口味', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('355', '1448494849', '1', '删除商品类型: 口味', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('356', '1448494862', '1', '添加属性: 口味', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('357', '1448494944', '1', '添加属性: 外观', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('358', '1448495055', '1', '添加属性: 款式', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('359', '1448495109', '1', '编辑商品: 雷米高澳丽得成犬粮20kg', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('360', '1448495185', '1', '商品: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('361', '1448495185', '1', '回收: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('362', '1448495186', '1', '商品: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('363', '1448495186', '1', '回收: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('364', '1448495188', '1', '商品: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('365', '1448495188', '1', '回收: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('366', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('367', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('368', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('369', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('370', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('371', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('372', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('373', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('374', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('375', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('376', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('377', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('378', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('379', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('380', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('381', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('382', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('383', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('384', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('385', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('386', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('387', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('388', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('389', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('390', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('391', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('392', '1448495373', '1', '商品: 1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('393', '1448565577', '1', '编辑支付方式: 支付宝', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('394', '1448571119', '1', '编辑支付方式: 支付宝', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('395', '1448571129', '1', '编辑支付方式: 微信支付', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('396', '1448585644', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('397', '1448585661', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('398', '1448585683', '1', '编辑商店设置: ', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('399', '1448823112', '1', '编辑商品: 喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('400', '1448823120', '1', '编辑商品: 喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '171.214.146.138');
INSERT INTO `ecs_admin_log` VALUES ('401', '1448926717', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('402', '1448926735', '1', '编辑商品分类: 酒水饮料', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('403', '1448926782', '1', '编辑商品分类: 粮油副食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('404', '1448926815', '1', '编辑商品分类: 蔬菜水果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('405', '1448926838', '1', '编辑商品分类: 休闲食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('406', '1448926903', '1', '编辑商品分类: 奶类食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('407', '1448928009', '1', '编辑商品分类: 天然干货', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('408', '1448928027', '1', '编辑商品分类: 营养保健', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('409', '1448928053', '1', '编辑商品分类: 安全粮油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('410', '1448928076', '1', '编辑商品分类: 精选茗茶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('411', '1448928097', '1', '编辑商品分类: 肉类制品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('412', '1448930590', '1', '编辑商品分类: 猪肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('413', '1448930607', '1', '编辑商品分类: 牛肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('414', '1448930621', '1', '编辑商品分类: 羊肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('415', '1448930636', '1', '编辑商品分类: 禽类', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('416', '1448930654', '1', '编辑商品分类: 鱼', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('417', '1448930665', '1', '编辑商品分类: 虾', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('418', '1448930676', '1', '编辑商品分类: 蟹/贝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('419', '1448930688', '1', '编辑商品分类: 参鲍', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('420', '1448930725', '1', '编辑商品分类: 鸡蛋', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('421', '1448930737', '1', '编辑商品分类: 松花蛋/咸鸭蛋', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('422', '1448930787', '1', '编辑商品分类: 茅台', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('423', '1448930799', '1', '编辑商品分类: 五粮液', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('424', '1448930815', '1', '编辑商品分类: 泸州老窖', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('425', '1448930832', '1', '编辑商品分类: 黄酒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('426', '1448930844', '1', '编辑商品分类: 养生酒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('427', '1448930863', '1', '编辑商品分类: 其他品牌', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('428', '1448930916', '1', '编辑商品分类: 威士忌', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('429', '1448930930', '1', '编辑商品分类: 白兰地', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('430', '1448930971', '1', '编辑商品分类: 大米', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('431', '1448930984', '1', '编辑商品分类: 意大利面', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('432', '1448930997', '1', '编辑商品分类: 面粉/面条', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('433', '1448931015', '1', '编辑商品分类: 酱油/醋', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('434', '1448931028', '1', '编辑商品分类: 调味油/汁', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('435', '1448931044', '1', '编辑商品分类: 橄榄油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('436', '1448931058', '1', '编辑商品分类: 其他食用油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('437', '1448931071', '1', '编辑商品分类: 礼盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('438', '1448931093', '1', '编辑商品分类: 菜仔油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('439', '1448931101', '1', '编辑商品分类: 花生油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('440', '1448931200', '1', '编辑商品分类: 水果礼盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('441', '1448931215', '1', '编辑商品分类: 苹果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('442', '1448931227', '1', '编辑商品分类: 雪梨', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('443', '1448931271', '1', '编辑商品分类: 火龙果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('444', '1448931319', '1', '编辑商品分类: 奇异果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('445', '1448931346', '1', '编辑商品分类: 菠萝蜜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('446', '1448931417', '1', '编辑商品分类: 胡萝卜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('447', '1448931439', '1', '编辑商品分类: 黄瓜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('448', '1448931454', '1', '编辑商品分类: 甘蓝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('449', '1448931498', '1', '编辑商品分类: 西兰花', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('450', '1448931514', '1', '编辑商品分类: 生菜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('451', '1448931533', '1', '编辑商品分类: 菠菜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('452', '1448931548', '1', '编辑商品分类: 圆椒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('453', '1448931623', '1', '编辑商品分类: 西红柿', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('454', '1448931644', '1', '编辑商品分类: 韭菜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('455', '1448931665', '1', '编辑商品分类: 青菜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('456', '1448931725', '1', '编辑商品分类: 白巧克力', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('457', '1448931741', '1', '编辑商品分类: 松露巧克力', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('458', '1448931758', '1', '编辑商品分类: 黑巧克力', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('459', '1448931773', '1', '编辑商品分类: 夹心巧克力', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('460', '1448931852', '1', '编辑商品分类: 牛肉干', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('461', '1448931866', '1', '编辑商品分类: 猪肉脯', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('462', '1448931878', '1', '编辑商品分类: 牛肉粒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('463', '1448931905', '1', '编辑商品分类: 猪肉干', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('464', '1448931932', '1', '编辑商品分类: 坚果炒货', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('465', '1448931943', '1', '编辑商品分类: 枣类', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('466', '1448931960', '1', '编辑商品分类: 蜜饯', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('467', '1448931977', '1', '编辑商品分类: 肉类零食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('468', '1448931991', '1', '编辑商品分类: 果冻', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('469', '1448932060', '1', '编辑商品分类: 鱿鱼仔', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('470', '1448932070', '1', '编辑商品分类: 鱿鱼足', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('471', '1448932086', '1', '编辑商品分类: 鱿鱼片', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('472', '1448932104', '1', '编辑商品分类: 鱿鱼丝', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('473', '1448932125', '1', '编辑商品分类: 墨鱼/乌贼', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('474', '1448932183', '1', '编辑商品分类: 软糖', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('475', '1448932202', '1', '编辑商品分类: 棒棒糖', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('476', '1448932219', '1', '编辑商品分类: 创意喜糖', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('477', '1448932247', '1', '编辑商品分类: 口香糖', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('478', '1448943651', '1', '编辑广告位置: 首页_生鲜食品_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('479', '1448943657', '1', '编辑广告: 首页_生鲜食品_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('480', '1448943668', '1', '编辑广告: 首页_蔬菜水果_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('481', '1448943676', '1', '编辑广告位置: 首页_蔬菜水果_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('482', '1448943688', '1', '编辑广告位置: 首页_粮油副食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('483', '1448943694', '1', '编辑广告: 首页_粮油副食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('484', '1448943704', '1', '编辑广告: 首页_酒水饮料_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('485', '1448943714', '1', '编辑广告位置: 首页_酒水饮料_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('486', '1448943988', '1', '编辑商品: 新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('487', '1448944254', '1', '编辑商品: 雄丰开花牛肉丸 2500g冷冻生鲜丸子', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('488', '1448944388', '1', '编辑商品: 澳洲进口120天谷饲牛仔骨4份原味生鲜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('489', '1448944572', '1', '编辑商品: 内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('490', '1448944791', '1', '编辑商品: 爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('491', '1448945032', '1', '编辑商品: 五星眼肉牛排套餐8片装原味原切生鲜牛肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('492', '1448945104', '1', '编辑商品: 酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('493', '1448945167', '1', '编辑商品: 潮香村澳洲进口牛排家庭团购套餐20片', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('494', '1448945270', '1', '编辑商品: 澳洲进口安格斯牛切片上脑牛排1000g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('495', '1448945381', '1', '编辑商品: 乌拉圭进口牛肉卷 特级肥牛卷', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('496', '1448945490', '1', '编辑商品: 澳洲进口牛尾巴300g 新鲜肥牛肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('497', '1448945810', '1', '编辑商品: 田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('498', '1448945922', '1', '编辑商品: 黑椒牛柳500g牧童牛肉便捷菜制品冷冻生鲜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('499', '1448946213', '1', '编辑商品: 日本蒜蓉粉丝扇贝270克6只装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('500', '1448946466', '1', '编辑商品: 人头马CLUB特优香槟干邑350ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('501', '1448946542', '1', '编辑商品: Johnnie Walker尊尼获加黑牌威士忌', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('502', '1448946598', '1', '编辑商品: 双响炮洋酒JimBeam whiskey美国白占边', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('503', '1448946661', '1', '编辑商品: 深蓝伏特加巴维兰利口酒送预调酒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('504', '1448946729', '1', '编辑商品: 芝华士12年 苏格兰威士忌700ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('505', '1448946793', '1', '编辑商品: 西夫拉姆进口洋酒小酒版', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('506', '1448946850', '1', '编辑商品: 原瓶原装进口洋酒烈酒 法国云鹿XO白兰地', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('507', '1448946951', '1', '编辑商品: 法国原装进口圣贝克干红葡萄酒750ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('508', '1448947011', '1', '编辑商品: 法国百利威干红葡萄酒AOP级6支装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('509', '1448947102', '1', '编辑商品: 张裕干红葡萄酒750ml*6支', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('510', '1448947194', '1', '编辑商品: 52度茅台集团国隆双喜酒500mlx6', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('511', '1448947257', '1', '编辑商品: 茅台53度飞天茅台500ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('512', '1448947269', '1', '编辑商品: 茅台53度飞天茅台500ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('513', '1448947354', '1', '编辑商品: 52度水井坊臻酿八號500ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('514', '1448947460', '1', '编辑商品: 52度兰陵·紫气东来1600mL山东名酒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('515', '1448947547', '1', '编辑商品: 53度茅台仁酒500ml', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('516', '1448947631', '1', '编辑商品: 融氏纯玉米胚芽油5l桶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('517', '1448947699', '1', '编辑商品: 橄榄玉米油5L*2桶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('518', '1448947771', '1', '编辑商品: 维纳斯橄榄菜籽油5L/桶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('519', '1448947825', '1', '编辑商品: 精炼一级大豆油5L色拉油粮油食用油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('520', '1448947875', '1', '编辑商品: 稻园牌稻米油粮油米糠油绿色植物油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('521', '1448948023', '1', '编辑商品: 山西黑米 农家黑米4斤', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('522', '1448948070', '1', '编辑商品: 糙米450gx3包粮油米面', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('523', '1448948234', '1', '编辑商品: 仿真蔬菜水果果蔬菜模型', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('524', '1448948333', '1', '编辑商品: 新鲜头茬非洲冰草冰菜', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('525', '1448948399', '1', '编辑商品: 潍坊萝卜5斤/箱 礼盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('526', '1448948479', '1', '编辑商品: 现摘芭乐 番石榴台湾珍珠芭乐', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('527', '1448948525', '1', '编辑商品: 赣南脐橙 特级果 10斤装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('528', '1448948598', '1', '编辑商品: 四川双流草莓新鲜水果礼盒2盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('529', '1448948662', '1', '编辑商品: 泰国菠萝蜜16-18斤 1个装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('530', '1448948762', '1', '编辑商品: 休闲零食膨化食品焦糖/奶油/椒麻味', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('531', '1448948850', '1', '编辑商品: 蒙牛特仑苏有机奶250ml×12盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('532', '1448948895', '1', '编辑商品: 伊利官方直营全脂营养舒化奶250ml*12盒*2提', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('533', '1448948980', '1', '编辑商品: 高钙液体奶 200ml*24盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('534', '1448949038', '1', '编辑商品: 德运全脂新鲜纯牛奶1L*10盒装整箱', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('535', '1448949115', '1', '编辑商品: 木糖醇红枣早餐奶即食豆奶粉538g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('536', '1448949220', '1', '编辑商品: 蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('537', '1448949284', '1', '编辑商品: 新西兰进口全脂奶粉900g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('538', '1448989615', '1', '编辑广告: 首页倒计时广告位1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('539', '1448989623', '1', '编辑广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('540', '1448989640', '1', '添加广告: 首页倒计时广告位3', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('541', '1448989657', '1', '添加广告: 首页倒计时广告位4', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('542', '1448989999', '1', '删除广告: ', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('543', '1448990018', '1', '添加广告: 首页倒计时广告位2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('544', '1449005799', '1', '编辑商品: 田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('545', '1449005824', '1', '编辑商品: 澳洲进口牛尾巴300g 新鲜肥牛肉', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('546', '1449007386', '1', '编辑商品: 潍坊萝卜5斤/箱 礼盒', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('547', '1449007650', '1', '编辑商品: 现摘芭乐 番石榴台湾珍珠芭乐', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('548', '1449007767', '1', '编辑商品: 泰国菠萝蜜16-18斤 1个装', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('549', '1449007911', '1', '编辑商品: 52度茅台集团国隆双喜酒500mlx6', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('550', '1449009055', '1', '编辑商品: 新鲜广西百香果西番莲罗汉果新鲜水果鸡蛋果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('551', '1449009157', '1', '编辑商品: 新鲜广西百香果西番莲罗汉果新鲜水果鸡蛋果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('552', '1449009210', '1', '编辑商品: 澳洲进口安格斯牛切片上脑牛排1000g', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('553', '1449010433', '1', '编辑广告: 首页_生鲜食品_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('554', '1449010763', '1', '编辑广告: 首页_蔬菜水果_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('555', '1449011954', '1', '编辑广告: 首页_粮油副食_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('556', '1449012797', '1', '编辑广告: 首页_酒水饮料_分类商品广告', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('557', '1449014580', '1', '编辑广告: 手机版首页Banner-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('558', '1449014605', '1', '编辑广告: 手机版首页Banner-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('559', '1449014633', '1', '编辑广告: 手机版首页Banner-3', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('560', '1449016150', '1', '编辑广告: 特色市场右侧1张广告图', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('561', '1449016252', '1', '编辑广告: 特色市场左侧2张广告图-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('562', '1449016340', '1', '编辑广告: 特色市场左侧2张广告图-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('563', '1449016780', '1', '编辑广告: 特色市场左侧2张广告图-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('564', '1449016790', '1', '编辑广告: 特色市场左侧2张广告图-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('565', '1449016811', '1', '编辑广告: 特色市场左侧2张广告图-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('566', '1449016839', '1', '编辑广告: 特色市场左侧2张广告图-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('567', '1449017705', '1', '编辑广告: 热门市场-1', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('568', '1449017715', '1', '编辑广告: 热门市场-2', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('569', '1449017725', '1', '编辑广告: 热门市场-3', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('570', '1449017734', '1', '编辑广告: 热门市场-4', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('571', '1449017744', '1', '编辑广告: 热门市场-5', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('572', '1449017754', '1', '编辑广告: 热门市场-6', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('573', '1449017763', '1', '编辑广告: 热门市场-7', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('574', '1449017772', '1', '编辑广告: 热门市场-8', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('575', '1449017780', '1', '编辑广告: 热门市场-9', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('576', '1449024889', '1', '编辑商品: 新鲜水果甜蜜香脆单果约800克', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('577', '1449025340', '1', '编辑商品: 新鲜水果甜蜜香脆单果约800克', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('578', '1449032456', '1', '安装配送方式: 圆通速递', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('579', '1449032462', '1', '添加配送区域: 中国', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('580', '1449079997', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('581', '1449081349', '1', '编辑商品: 1分钱支付测试商品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('582', '1449081359', '1', '删除商品分类: 营养保健', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('583', '1449081378', '1', '删除商品分类: 猪肉制品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('584', '1449081380', '1', '删除商品分类: 牛肉制品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('585', '1449081382', '1', '删除商品分类: 鸡肉制品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('586', '1449081385', '1', '删除商品分类: 肉类制品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('587', '1449082624', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('588', '1449085461', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('589', '1449085554', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('590', '1449085785', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('591', '1449086110', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('592', '1449088331', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('593', '1449088788', '1', '编辑商品分类: 生鲜食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('594', '1449088848', '1', '编辑商品分类: 酒水饮料', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('595', '1449088901', '1', '编辑商品分类: 粮油副食', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('596', '1449088957', '1', '编辑商品分类: 蔬菜水果', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('597', '1449089017', '1', '编辑商品分类: 休闲食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('598', '1449089080', '1', '编辑商品分类: 休闲食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('599', '1449089137', '1', '编辑商品分类: 休闲食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('600', '1449089235', '1', '编辑商品分类: 奶类食品', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('601', '1449089297', '1', '编辑商品分类: 天然干货', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('602', '1449089358', '1', '编辑商品分类: 精选茗茶', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('603', '1449089367', '1', '删除商品分类: 安全粮油', '192.168.1.88');
INSERT INTO `ecs_admin_log` VALUES ('604', '1449166621', '1', '编辑商店设置: ', '171.214.150.228');
INSERT INTO `ecs_admin_log` VALUES ('605', '1449166670', '1', '编辑商店设置: ', '171.214.150.228');
INSERT INTO `ecs_admin_log` VALUES ('606', '1449616668', '1', '编辑权限管理: admin', '171.214.150.7');
INSERT INTO `ecs_admin_log` VALUES ('607', '1456206961', '1', '编辑商店设置: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('608', '1456207111', '1', '编辑商店设置: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('609', '1456286757', '1', '删除友情链接: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('610', '1456286762', '1', '删除友情链接: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('611', '1456286764', '1', '删除友情链接: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('612', '1456286766', '1', '删除友情链接: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('613', '1456289074', '1', '编辑权限管理: admin', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('614', '1456289276', '1', '编辑商店设置: ', '192.168.1.25');
INSERT INTO `ecs_admin_log` VALUES ('615', '1457640474', '1', '编辑商店设置: ', '124.156.72.122');
INSERT INTO `ecs_admin_log` VALUES ('616', '1457640502', '1', '编辑商店设置: ', '124.156.72.122');
INSERT INTO `ecs_admin_log` VALUES ('617', '1457644391', '1', '编辑商店设置: ', '124.156.72.122');
INSERT INTO `ecs_admin_log` VALUES ('618', '1457801198', '1', '编辑商店设置: ', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('619', '1457802531', '1', '编辑支付方式: 支付宝', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('620', '1457805148', '1', '编辑商店设置: ', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('621', '1457805200', '1', '编辑支付方式: 支付宝', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('622', '1457811289', '1', '编辑广告: 手机版首页Banner-3', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('623', '1457812785', '1', '编辑广告: 手机版首页Banner-1', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('624', '1457812835', '1', '编辑广告: 特色市场右侧1张广告图', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('625', '1457812871', '1', '编辑广告: 特色市场左侧2张广告图-1', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('626', '1457812885', '1', '编辑广告: 特色市场左侧2张广告图-2', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('627', '1457812945', '1', '编辑广告: 手机版首页Banner-1', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('628', '1457812991', '1', '编辑广告: 手机版首页Banner-1', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('629', '1457813006', '1', '编辑广告: 手机版首页Banner-2', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('630', '1457813020', '1', '编辑广告: 手机版首页Banner-3', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('631', '1457813429', '1', '编辑广告: 特色市场右侧1张广告图', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('632', '1457814982', '1', '编辑商店设置: ', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('633', '1457815086', '1', '编辑商店设置: ', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('634', '1457815112', '1', '编辑商店设置: ', '124.156.73.88');
INSERT INTO `ecs_admin_log` VALUES ('635', '1457841989', '1', '编辑权限管理: admin', '121.27.90.95');

-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', '763191200@qq.com', '9fbdb39ced638d0f60b54ee9a08ce156', '7424', '1447698148', '1457842000', '121.27.90.95', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_adsense
-- ----------------------------
INSERT INTO `ecs_adsense` VALUES ('5', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('6', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('9', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('8', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('16', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('7', 'wap站', '1');
INSERT INTO `ecs_adsense` VALUES ('5', 'wap站', '4');
INSERT INTO `ecs_adsense` VALUES ('11', 'wap站', '1');
INSERT INTO `ecs_adsense` VALUES ('8', 'pc站', '3');
INSERT INTO `ecs_adsense` VALUES ('9', 'pc站', '1');
INSERT INTO `ecs_adsense` VALUES ('3', 'pc站', '2');
INSERT INTO `ecs_adsense` VALUES ('16', 'wap站', '1');
INSERT INTO `ecs_adsense` VALUES ('1', 'pc站', '2');
INSERT INTO `ecs_adsense` VALUES ('2', 'pc站', '1');
INSERT INTO `ecs_adsense` VALUES ('7', 'pc站', '1');
INSERT INTO `ecs_adsense` VALUES ('9', 'wap站', '2');
INSERT INTO `ecs_adsense` VALUES ('15', 'wap站', '3');
INSERT INTO `ecs_adsense` VALUES ('14', 'wap站', '2');
INSERT INTO `ecs_adsense` VALUES ('10', 'wap站', '1');
INSERT INTO `ecs_adsense` VALUES ('8', 'wap站', '1');

-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_position
-- ----------------------------
INSERT INTO `ecs_ad_position` VALUES ('1', '首页_粮油副食_分类商品广告', '340', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('2', '首页_蔬菜水果_分类商品广告', '340', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('3', '首页_酒水饮料_分类商品广告', '340', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('4', '首页_生鲜食品_分类商品广告', '340', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('5', '首页倒计时广告位', '580', '250', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');

-- ----------------------------
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_affiliate_log
-- ----------------------------
INSERT INTO `ecs_affiliate_log` VALUES ('1', '102', '1456207215', '5', 'aaaaa', '8.80', '9', '0');

-- ----------------------------
-- Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_area_region
-- ----------------------------
INSERT INTO `ecs_area_region` VALUES ('1', '1');
INSERT INTO `ecs_area_region` VALUES ('2', '1');
INSERT INTO `ecs_area_region` VALUES ('3', '1');
INSERT INTO `ecs_area_region` VALUES ('4', '1');

-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article
-- ----------------------------
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('4', '2', '联系我们', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('5', '2', '公司简介', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1447726948', '', '0', '', '');

-- ----------------------------
-- Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article_cat
-- ----------------------------
INSERT INTO `ecs_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '1', '1');

-- ----------------------------
-- Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_attribute
-- ----------------------------
INSERT INTO `ecs_attribute` VALUES ('1', '1', '作者', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('2', '1', '出版社', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('3', '1', '图书书号/ISBN', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('4', '1', '出版日期', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('5', '1', '开本', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('6', '1', '图书页数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('7', '1', '图书装订', '1', '0', '平装\r\n黑白', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('8', '1', '图书规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('9', '1', '版次', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('10', '1', '印张', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('11', '1', '字数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('12', '1', '所属分类', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('13', '2', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('14', '2', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('15', '2', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('16', '2', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('17', '2', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('18', '2', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('19', '2', '语种', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('20', '2', '导演/指挥', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('21', '2', '主唱', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('22', '2', '所属类别', '1', '0', '古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀旧\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音乐\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音乐\r\n大自然音乐', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('23', '2', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('24', '2', '歌词', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('25', '2', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('26', '2', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('27', '2', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('28', '2', '出版', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('29', '2', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('30', '2', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('31', '2', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('32', '3', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('33', '3', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('34', '3', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('35', '3', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('36', '3', '碟片类型', '1', '0', '单面\r\n双层', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('37', '3', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('38', '3', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('39', '3', '语种/配音', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('40', '3', '字幕', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('41', '3', '色彩', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('42', '3', '中文字幕', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('43', '3', '导演', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('44', '3', '表演者', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('45', '3', '所属类别', '1', '0', '爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐怖\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡通\r\n儿童\r\n伦理激情', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('46', '3', '年份', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('47', '3', '音频格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('48', '3', '区码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('49', '3', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('50', '3', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('51', '3', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('52', '3', '出版 ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('53', '3', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('54', '3', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('55', '3', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('56', '4', '网络制式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('57', '4', '支持频率/网络频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('58', '4', '尺寸体积', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('59', '4', '外观样式/手机类型', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('60', '4', '主屏参数/内屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('61', '4', '副屏参数/外屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('62', '4', '清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('63', '4', '色数/灰度', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('64', '4', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('65', '4', '宽度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('66', '4', '厚度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('67', '4', '屏幕材质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('68', '4', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('69', '4', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('70', '4', '通话时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('71', '4', '待机时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('72', '4', '标准配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('73', '4', 'WAP上网', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('74', '4', '数据业务', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('75', '4', '天线位置', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('76', '4', '随机配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('77', '4', '铃声', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('78', '4', '摄像头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('79', '4', '彩信/彩e', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('80', '4', '红外/蓝牙', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('81', '4', '价格等级', '1', '0', '高价机\r\n中价机\r\n低价机', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('82', '5', '型号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('83', '5', '详细规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('84', '5', '笔记本尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('85', '5', '处理器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('86', '5', '处理器最高主频', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('87', '5', '二级缓存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('88', '5', '系统总线', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('89', '5', '主板芯片组', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('90', '5', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('91', '5', '内存类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('92', '5', '硬盘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('93', '5', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('94', '5', '显示芯片', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('95', '5', '标称频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('96', '5', '显卡显存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('97', '5', '显卡类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('98', '5', '光驱类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('99', '5', '电池容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('100', '5', '其他配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('101', '6', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('102', '6', '最大像素/总像素  ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('103', '6', '有效像素', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('104', '6', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('105', '6', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('106', '6', '操作模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('107', '6', '显示屏类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('108', '6', '显示屏尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('109', '6', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('110', '6', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('111', '6', '最高分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('112', '6', '图像分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('113', '6', '传感器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('114', '6', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('115', '6', '镜头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('116', '6', '光圈', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('117', '6', '焦距', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('118', '6', '旋转液晶屏', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('119', '6', '存储介质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('120', '6', '存储卡', '1', '0', '  记录媒体\r\n存储卡容量', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('121', '6', '影像格式', '1', '0', '    静像\r\n动画', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('122', '6', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('123', '6', '曝光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('124', '6', '曝光补偿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('125', '6', '白平衡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('126', '6', '连拍', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('127', '6', '快门速度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('128', '6', '闪光灯', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('129', '6', '拍摄范围', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('130', '6', '自拍定时器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('131', '6', 'ISO感光度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('132', '6', '测光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('133', '6', '场景模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('134', '6', '短片拍摄', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('135', '6', '外接接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('136', '6', '电源', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('137', '6', '电池使用时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('138', '6', '外形尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('139', '6', '标配软件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('140', '6', '标准配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('141', '6', '兼容操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('142', '7', '编号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('143', '7', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('144', '7', '外型尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('145', '7', '最大像素数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('146', '7', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('147', '7', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('148', '7', '显示屏尺寸及类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('149', '7', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('150', '7', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('151', '7', '感光器件数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('152', '7', '像素范围', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('153', '7', '传感器数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('154', '7', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('155', '7', '水平清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('156', '7', '取景器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('157', '7', '数码效果', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('158', '7', '镜头性能', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('159', '7', '对焦方式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('160', '7', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('161', '7', '其他接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('162', '7', '随机存储', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('163', '7', '电池类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('164', '7', '电池供电时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('165', '8', '产地', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('166', '8', '产品规格/容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('167', '8', '主要原料', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('168', '8', '所属类别', '1', '0', '彩妆\r\n化妆工具\r\n护肤品\r\n香水', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('169', '8', '使用部位', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('170', '8', '适合肤质', '1', '0', '油性\r\n中性\r\n干性', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('171', '8', '适用人群', '1', '0', '女性\r\n男性', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('172', '9', '上市日期', '1', '0', '2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('173', '9', '手机制式', '1', '0', 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )', '1', '1', '1', '0');
INSERT INTO `ecs_attribute` VALUES ('174', '9', '理论通话时间', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('175', '9', '理论待机时间', '0', '0', '', '0', '3', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('176', '9', '铃声', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('177', '9', '铃声格式', '0', '0', '', '0', '5', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('178', '9', '外观样式', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠', '1', '6', '1', '0');
INSERT INTO `ecs_attribute` VALUES ('179', '9', '中文短消息', '0', '0', '', '0', '7', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('180', '9', '存储卡格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('181', '9', '内存容量', '0', '0', '', '2', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('182', '9', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('183', '9', 'K-JAVA', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('184', '9', '尺寸体积', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('185', '9', '颜色', '1', '1', '黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('186', '9', '屏幕颜色', '1', '0', '1600万\r\n262144万', '1', '0', '1', '1');
INSERT INTO `ecs_attribute` VALUES ('187', '9', '屏幕材质', '1', '0', 'TFT', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('188', '9', '屏幕分辨率', '1', '0', '320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素', '1', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('189', '9', '屏幕大小', '0', '0', '', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('190', '9', '中文输入法', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('191', '9', '情景模式', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('192', '9', '网络链接', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('193', '9', '蓝牙接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('194', '9', '数据线接口', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('195', '9', '电子邮件', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('196', '9', '闹钟', '0', '0', '', '0', '35', '0', '4');
INSERT INTO `ecs_attribute` VALUES ('197', '9', '办公功能', '0', '0', '', '0', '0', '0', '4');
INSERT INTO `ecs_attribute` VALUES ('198', '9', '数码相机', '0', '0', '', '1', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('199', '9', '像素', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('200', '9', '传感器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('201', '9', '变焦模式', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('202', '9', '视频拍摄', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('203', '9', 'MP3播放器', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('204', '9', '视频播放', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('205', '9', 'CPU频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('206', '9', '收音机', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('207', '9', '耳机接口', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('208', '9', '闪光灯', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('209', '9', '浏览器', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('210', '9', '配件', '1', '2', '线控耳机\r\n蓝牙耳机\r\n数据线', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('211', '10', '重量', '1', '1', '500克\r\n1000克\r\n2000克', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('213', '10', '口味', '1', '1', '牛肉\r\n面粉\r\n鸡肉', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('214', '10', '外观', '1', '1', '红色\r\n绿色\r\n蓝色', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('215', '10', '款式', '1', '1', '时尚款\r\n经典款\r\n出众款', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auction_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_bonus_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_booking_goods
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow
-- ----------------------------
INSERT INTO `ecs_borrow` VALUES ('2', '12', '12.5', '买房', '0000-00-00', '112233', '北京海淀', '3', '1', '待审核');
INSERT INTO `ecs_borrow` VALUES ('3', '12', '10', '买一辆汽车', '2017-06-29', '111222333', '似懂非懂', '3', '1', '待审核');
INSERT INTO `ecs_borrow` VALUES ('4', '12', '58', 'ttt', '2017-06-29', '123424', '的各个地方', '36', '1', '待审核');
INSERT INTO `ecs_borrow` VALUES ('5', '12', '100', '调度费', '2017-06-29', '11111', '发第三方士大夫', '3', '2', '待审核');
INSERT INTO `ecs_borrow` VALUES ('6', '12', '100', '购买劳斯莱斯一辆', '2017-06-29', '123456789', '北京市商业银行', '3', '1', '待审核');
INSERT INTO `ecs_borrow` VALUES ('7', '12', '200', '给解飞买套房子', '2017-06-29', '1111111111110000000000', '河南农行', '6', '2', '待审核');

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
  `repay_serial_code` varchar(200) NOT NULL COMMENT '偿还金额流水号',
  `comment` varchar(1000) DEFAULT NULL COMMENT '其它说明',
  `status` varchar(10) NOT NULL COMMENT '1-未还款 2-待审核 3-已还款 4-已删除',
  PRIMARY KEY (`amortize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_amortize
-- ----------------------------
INSERT INTO `ecs_borrow_amortize` VALUES ('1', '12', '2', '41667', '0', '0000-00-00 00:00:00', '0000-00-00', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('2', '12', '2', '41667', '0', '0000-00-00 00:00:00', '0000-00-00', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('3', '12', '2', '41667', '0', '0000-00-00 00:00:00', '0000-00-00', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('4', '12', '3', '33333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('5', '12', '3', '33333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('6', '12', '3', '33333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('7', '12', '4', '16111', '16111', '0000-00-00 00:00:00', '2017-06-29', '1111111111', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('8', '12', '4', '16111', '16111', '0000-00-00 00:00:00', '2017-06-29', '222222', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('9', '12', '4', '16111', '16111', '0000-00-00 00:00:00', '2017-06-29', '333333', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('10', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('11', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('12', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('13', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('14', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('15', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('16', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('17', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('18', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('19', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('20', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('21', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('22', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('23', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('24', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('25', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('26', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('27', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('28', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('29', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('30', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('31', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('32', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('33', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('34', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('35', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('36', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('37', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('38', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('39', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('40', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('41', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('42', '12', '4', '16111', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '');
INSERT INTO `ecs_borrow_amortize` VALUES ('43', '12', '5', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '12134', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('44', '12', '5', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '1111111', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('45', '12', '5', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '4565', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('46', '12', '6', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '346图图图n', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('47', '12', '6', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '12345', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('48', '12', '6', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '法国恢复贵航股份', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('49', '12', '7', '333333', '333333', '0000-00-00 00:00:00', '2017-06-29', '是方式方式', '', '待审核');
INSERT INTO `ecs_borrow_amortize` VALUES ('50', '12', '7', '333333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '未还款');
INSERT INTO `ecs_borrow_amortize` VALUES ('51', '12', '7', '333333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '未还款');
INSERT INTO `ecs_borrow_amortize` VALUES ('52', '12', '7', '333333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '未还款');
INSERT INTO `ecs_borrow_amortize` VALUES ('53', '12', '7', '333333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '未还款');
INSERT INTO `ecs_borrow_amortize` VALUES ('54', '12', '7', '333333', '0', '0000-00-00 00:00:00', '2017-06-29', '', '', '未还款');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_attach
-- ----------------------------
INSERT INTO `ecs_borrow_attach` VALUES ('14', '2', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');
INSERT INTO `ecs_borrow_attach` VALUES ('15', '3', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');
INSERT INTO `ecs_borrow_attach` VALUES ('16', '4', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');
INSERT INTO `ecs_borrow_attach` VALUES ('17', '5', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');
INSERT INTO `ecs_borrow_attach` VALUES ('18', '6', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');
INSERT INTO `ecs_borrow_attach` VALUES ('19', '7', '12', 'wzj4858@163.com', '邬志君', '1', '1986-08-24', '13811571327', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6', '[{\"friend_id\":\"36\",\"friend_name\":\"1\",\"friend_phone\":\"111\",\"firend_type\":\"11\",\"friend_address\":\"1111\"},{\"friend_id\":\"37\",\"friend_name\":\"2\",\"friend_phone\":\"222\",\"firend_type\":\"22\",\"friend_address\":\"2222\"},{\"friend_id\":\"38\",\"friend_name\":\"3\",\"friend_phone\":\"333\",\"firend_type\":\"33\",\"friend_address\":\"3333\"},{\"friend_id\":\"39\",\"friend_name\":\"4\",\"friend_phone\":\"444\",\"firend_type\":\"44\",\"friend_address\":\"4444\"},{\"friend_id\":\"40\",\"friend_name\":\"5\",\"friend_phone\":\"555\",\"firend_type\":\"55\",\"friend_address\":\"5555\"}]');

-- ----------------------------
-- Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `brand_banner` varchar(80) NOT NULL COMMENT '商品品牌banner',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_brand
-- ----------------------------
INSERT INTO `ecs_brand` VALUES ('1', '艾尔Aier', '1447704649936189900.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('2', '发育宝Haipet', '1447704682791039878.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('3', '雷米高', '1447704720666038803.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('4', '百利', '1447705943471297107.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('5', '森美', '1447706000795527048.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('6', '哈根纽翠斯', '1447706048999741376.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('7', '比瑞吉', '1447706093179659152.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('8', '百利本能', '1447706126626614178.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('9', '金赏', '1447706160927101013.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('10', '维洛司', '1447706206565420819.jpg', '', 'http://www.mb5.com.cn', '50', '1', '');

-- ----------------------------
-- Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart
-- ----------------------------
INSERT INTO `ecs_cart` VALUES ('199', '0', 'b5c769151b57dec586b0b175257fa2d9', '47', 'ECS000047', '0', '', '日本蒜蓉粉丝扇贝270克6只装', '156.00', '108.00', '1', '', '1', '', '0', '0', '0', '1', '0', '', '0');

-- ----------------------------
-- Table structure for `ecs_cart_combo`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart_combo`;
CREATE TABLE `ecs_cart_combo` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart_combo
-- ----------------------------
INSERT INTO `ecs_cart_combo` VALUES ('20', '0', '4a00650a353ddfff81b89daabda697db', '49', 'ECS000049', '0', 'm_goods_0_49', '1分钱支付测试商品', '0.01', '0.01', '1', '', '1', '', '0', '0', '0', '1', '0', '', '');
INSERT INTO `ecs_cart_combo` VALUES ('29', '0', 'c3e2b99cd7bea827581fe4130b976c45', '49', 'ECS000049', '0', 'm_goods_0_49', '1分钱支付测试商品', '0.01', '0.01', '1', '', '1', '', '0', '0', '0', '1', '0', '', '0');
INSERT INTO `ecs_cart_combo` VALUES ('30', '0', 'c3e2b99cd7bea827581fe4130b976c45', '1', 'ECS000000', '4', 'm_goods_0_49', '新鲜水果甜蜜香脆单果约800克', '231.60', '193.00', '1', '重量:500克 \n外观:红色 \n款式:时尚款 \n', '1', '', '49', '0', '0', '1', '0', '4,7,1', '');

-- ----------------------------
-- Table structure for `ecs_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  `is_top_style` int(3) unsigned NOT NULL DEFAULT '0',
  `is_top_show` int(3) unsigned NOT NULL DEFAULT '0',
  `cat_ico` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_category
-- ----------------------------
INSERT INTO `ecs_category` VALUES ('1', '酒水饮料', '', '', '0', '2', '', '', '1', '', '1', '0', '', '0', '0', '1449088848823694266.png');
INSERT INTO `ecs_category` VALUES ('2', '生鲜食品', '', '', '0', '1', '', '', '1', '', '1', '5', '', '0', '0', '1449088788518670880.png');
INSERT INTO `ecs_category` VALUES ('5', '粮油副食', '', '', '0', '3', '', '', '0', '', '1', '0', '', '0', '0', '1449088901458193225.png');
INSERT INTO `ecs_category` VALUES ('6', '天然干货', '', '', '0', '7', '', '', '0', '', '1', '0', '', '0', '0', '1449089297229428349.png');
INSERT INTO `ecs_category` VALUES ('7', '精选茗茶', '', '', '0', '10', '', '', '0', '', '1', '0', '', '0', '0', '1449089358084135937.png');
INSERT INTO `ecs_category` VALUES ('15', '精品肉类', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('9', '休闲食品', '', '', '0', '5', '', '', '0', '', '1', '0', '', '0', '0', '1449089137240745101.png');
INSERT INTO `ecs_category` VALUES ('11', '蔬菜水果', '', '', '0', '4', '', '', '0', '', '1', '0', '', '0', '0', '1449088957941770398.png');
INSERT INTO `ecs_category` VALUES ('12', '奶类食品', '', '', '0', '6', '', '', '0', '', '1', '0', '', '0', '0', '1449089235904530709.png');
INSERT INTO `ecs_category` VALUES ('16', '海鲜水产', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('17', '蛋制品', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('18', '叶菜类', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('19', '根茎类', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('20', '茄果类', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('21', '菌菇类', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('22', '进口生鲜', '', '', '2', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('23', '白酒', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('24', '葡萄酒', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('25', '洋酒', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('26', '啤酒', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('27', '其他酒品', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('28', '饮料/水', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('29', '红酒', '', '', '1', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('30', '食用油', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('31', '米面杂粮', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('32', '厨房调料', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('33', '南北干货', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('34', '方便速食', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('35', '调味品', '', '', '5', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('36', '休闲零食', '', '', '9', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('37', '糖果', '', '', '9', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('38', '巧克力', '', '', '9', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('39', '肉干肉脯/豆干', '', '', '9', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('40', '鱿鱼丝/鱼干', '', '', '9', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('41', '有机蔬菜', '', '', '11', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('42', '精选蔬菜', '', '', '11', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('43', '进口水果', '', '', '11', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('44', '国产水果', '', '', '11', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('45', '进口奶品', '', '', '12', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('46', '国产奶品', '', '', '12', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('47', '奶粉', '', '', '12', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('48', '有机奶', '', '', '12', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('49', '原料奶', '', '', '12', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('53', '菌菇类', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('54', '腌干海产', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('55', '汤料', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('56', '豆类', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('57', '干菜/菜干', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('58', '干果/果干', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('59', '豆制品', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('60', '腊味', '', '', '6', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('61', '白茶', '', '', '7', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('62', '红茶', '', '', '7', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('63', '绿茶', '', '', '7', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('64', '羊肉', '', '', '15', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('65', '禽类', '', '', '15', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('66', '猪肉', '', '', '15', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('67', '牛肉', '', '', '15', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('68', '参鲍', '', '', '16', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('69', '鱼', '', '', '16', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('70', '虾', '', '', '16', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('71', '蟹/贝', '', '', '16', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('72', '松花蛋/咸鸭蛋', '', '', '17', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('73', '鸡蛋', '', '', '17', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('74', '生菜', '', '', '18', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('75', '菠菜', '', '', '18', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('76', '圆椒', '', '', '18', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('77', '西兰花', '', '', '18', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('78', '其他品牌', '', '', '27', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('79', '黄酒', '', '', '27', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('80', '养生酒', '', '', '27', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('81', '白兰地', '', '', '29', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('82', '威士忌', '', '', '29', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('83', '五粮液', '', '', '23', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('84', '泸州老窖', '', '', '23', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('85', '茅台', '', '', '23', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('86', '其他食用油', '', '', '30', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('87', '菜仔油', '', '', '30', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('88', '花生油', '', '', '30', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('89', '橄榄油', '', '', '30', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('90', '礼盒', '', '', '30', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('91', '面粉/面条', '', '', '31', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('92', '大米', '', '', '31', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('93', '意大利面', '', '', '31', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('94', '调味油/汁', '', '', '32', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('95', '酱油/醋', '', '', '32', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('96', '西红柿', '', '', '41', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('97', '韭菜', '', '', '41', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('98', '青菜', '', '', '41', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('99', '甘蓝', '', '', '42', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('100', '胡萝卜', '', '', '42', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('101', '黄瓜', '', '', '42', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('102', '火龙果', '', '', '43', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('103', '菠萝蜜', '', '', '43', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('104', '奇异果', '', '', '43', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('105', '水果礼盒', '', '', '44', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('106', '苹果', '', '', '44', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('107', '雪梨', '', '', '44', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('108', '果冻', '', '', '36', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('109', '枣类', '', '', '36', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('110', '蜜饯', '', '', '36', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('111', '肉类零食', '', '', '36', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('112', '坚果炒货', '', '', '36', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('113', '创意喜糖', '', '', '37', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('114', '口香糖', '', '', '37', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('115', '软糖', '', '', '37', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('116', '棒棒糖', '', '', '37', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('117', '夹心巧克力', '', '', '38', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('118', '白巧克力', '', '', '38', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('119', '松露巧克力', '', '', '38', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('120', '黑巧克力', '', '', '38', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('121', '牛肉干', '', '', '39', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('122', '猪肉脯', '', '', '39', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('123', '牛肉粒', '', '', '39', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('124', '猪肉干', '', '', '39', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('125', '鱿鱼足', '', '', '40', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('126', '鱿鱼丝', '', '', '40', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('127', '墨鱼/乌贼', '', '', '40', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('128', '鱿鱼仔', '', '', '40', '50', '', '', '0', '', '1', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('129', '鱿鱼片', '', '', '40', '50', '', '', '0', '', '1', '0', '', '0', '0', '');

-- ----------------------------
-- Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cat_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_collect_goods
-- ----------------------------
INSERT INTO `ecs_collect_goods` VALUES ('2', '12', '8', '1498673712', '0');

-- ----------------------------
-- Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_comment
-- ----------------------------
INSERT INTO `ecs_comment` VALUES ('1', '0', '48', 'adf@adsf.com', 'aabbcc', '这个质量很高啊，很好，值得购买！', '5', '1448045512', '192.168.1.88', '1', '0', '1');
INSERT INTO `ecs_comment` VALUES ('2', '0', '48', 'adf@adsf.com', 'aabbcc', '很好，很好！', '5', '1448047881', '192.168.1.88', '1', '0', '1');
INSERT INTO `ecs_comment` VALUES ('3', '0', '48', 'adf@adsf.com', 'aabbcc', '很好，很好！呵呵', '5', '1448048009', '192.168.1.88', '1', '0', '1');
INSERT INTO `ecs_comment` VALUES ('4', '0', '1', 'adf@adsf.com', 'aabbcc', '真心好用！', '5', '1448048094', '192.168.1.88', '1', '0', '1');
INSERT INTO `ecs_comment` VALUES ('5', '0', '1', 'adf@adsf.com', 'aabbcc', '价格实惠，真心好用！', '5', '1448048240', '192.168.1.88', '0', '0', '1');

-- ----------------------------
-- Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_goods
-- ----------------------------
INSERT INTO `ecs_delivery_goods` VALUES ('1', '1', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('2', '2', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('3', '3', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('4', '4', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('5', '5', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('6', '6', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('7', '7', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('8', '8', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('9', '9', '49', '0', '', '1分钱支付测试商品', '森美', 'ECS000049', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('10', '10', '48', '0', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '百利本能', 'ECS000048', '1', '', '0', '1', '');

-- ----------------------------
-- Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_order
-- ----------------------------
INSERT INTO `ecs_delivery_order` VALUES ('1', '20151122195574808', '2015112275252', '27', '805355128260', '1448164300', '1', '上门取货', '3', 'sclzz', '张三', '详细地址详细地址', '1', '26', '322', '2739', '', '75283535@qq.com', '', '', '18113131306', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448164506', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('2', '20151122201803920', '2015112265460', '26', '', '1448164228', '1', '上门取货', '3', 'sclzz', '张三', '详细地址详细地址', '1', '26', '322', '2739', '', '75283535@qq.com', '', '', '18113131306', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448165909', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('3', '20151122203661061', '2015112225818', '31', '', '1448166779', '1', '上门取货', '3', 'sclzz', '张三', '详细地址详细地址', '1', '26', '322', '2739', '', '75283535@qq.com', '', '', '18113131306', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448166998', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('4', '20151123145511925', '2015112356122', '73', '', '1448232418', '1', '上门取货', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448232926', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('5', '20151123173143089', '2015112369856', '97', '', '1448242105', '1', '上门取货', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448242314', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('6', '20151123185888193', '2015112314657', '96', '590716750039', '1448242012', '3', '顺丰速运', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1448247510', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('7', '20151123194019515', '2015112366532', '95', '', '1448241849', '1', '上门取货', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448250050', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('8', '20151125155707937', '2015112344712', '94', '', '1448241704', '1', '上门取货', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448409424', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('9', '20151125160663779', '2015112561257', '100', '', '1448409894', '1', '上门取货', '5', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', '', '', '010-12345678', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1448409967', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('10', '20151202210163792', '2015120242661', '103', '880828394688493096', '1449032504', '4', '圆通速递', '1', 'sclzz', '张三', '详细地址详细地址', '1', '2', '52', '500', '', 'asdf@asd.com', '', '010-12345678', '13981750562', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1449032516', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_sendlist
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_exchange_goods
-- ----------------------------
INSERT INTO `ecs_exchange_goods` VALUES ('2', '5000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('4', '4000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('6', '6800', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('11', '5500', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('14', '6300', '1', '1');

-- ----------------------------
-- Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_favourable_activity
-- ----------------------------
INSERT INTO `ecs_favourable_activity` VALUES ('1', '购物金额满500元，省100元', '1447920000', '1700812800', '0,1', '0', '', '500.00', '0.00', '1', '100.00', 'a:0:{}', '50');

-- ----------------------------
-- Table structure for `ecs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `sales_volume` int(10) unsigned NOT NULL DEFAULT '0',
  `comments_number` int(10) unsigned NOT NULL DEFAULT '0',
  `bb_chicun` char(28) NOT NULL,
  `mobile_desc` text,
  `fencheng` varchar(255) DEFAULT NULL,
  `sales_count` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_shipai` text NOT NULL,
  `sales_volume_base` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量基数',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods
-- ----------------------------
INSERT INTO `ecs_goods` VALUES ('1', '19', 'ECS000000', '新鲜水果甜蜜香脆单果约800克', '+', '340', '1', '', '65535', '0.000', '231.60', '193.00', '156.00', '1448265600', '1637740800', '1', '', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/1_thumb_G_1449024889033.jpg', 'images/201512/goods_img/1_G_1449024889966.jpg', 'images/201512/source_img/1_G_1449024889141.jpg', '1', '', '1', '1', '1', '1', '1447707014', '100', '0', '0', '1', '0', '1', '0', '1449025340', '10', '', '-1', '-1', '0', '0', '0', '1', '', '', '0', '0', '', '1000');
INSERT INTO `ecs_goods` VALUES ('2', '16', 'ECS000002', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '+', '14', '1', '', '9999', '0.000', '105.60', '88.00', '0.00', '0', '0', '1', '', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/2_thumb_G_1448945810147.jpg', 'images/201512/goods_img/2_G_1448945810428.jpg', 'images/201512/source_img/2_G_1448945810791.jpg', '1', '', '1', '1', '1', '0', '1447707293', '100', '0', '0', '1', '0', '0', '0', '1449007115', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '743');
INSERT INTO `ecs_goods` VALUES ('3', '15', 'ECS000003', '澳洲进口牛尾巴300g 新鲜肥牛肉', '+', '5', '9', '', '9999', '0.000', '306.00', '255.00', '0.00', '0', '0', '1', '', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/3_thumb_G_1448945490826.jpg', 'images/201512/goods_img/3_G_1448945490276.jpg', 'images/201512/source_img/3_G_1448945490868.jpg', '1', '', '1', '1', '1', '2', '1447707432', '100', '0', '0', '1', '0', '0', '0', '1449007114', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '63');
INSERT INTO `ecs_goods` VALUES ('4', '20', 'ECS000004', '乌拉圭进口牛肉卷 特级肥牛卷', '+', '3', '8', '', '9999', '0.000', '90.00', '75.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/4_thumb_G_1448945381841.jpg', 'images/201512/goods_img/4_G_1448945381363.jpg', 'images/201512/source_img/4_G_1448945381768.jpg', '1', '', '1', '1', '0', '0', '1447707532', '100', '0', '0', '0', '1', '0', '0', '1449007111', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '256');
INSERT INTO `ecs_goods` VALUES ('5', '17', 'ECS000005', '澳洲进口安格斯牛切片上脑牛排1000g', '+', '2', '7', '', '9999', '0.000', '144.00', '120.00', '0.00', '0', '0', '1', '', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/5_thumb_G_1448945270486.jpg', 'images/201512/goods_img/5_G_1448945270257.jpg', 'images/201512/source_img/5_G_1448945270759.jpg', '1', '', '1', '1', '1', '1', '1447707696', '100', '0', '0', '1', '1', '0', '0', '1449009210', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '53');
INSERT INTO `ecs_goods` VALUES ('6', '21', 'ECS000006', '潮香村澳洲进口牛排家庭团购套餐20片', '+', '2', '6', '', '9999', '0.000', '238.79', '199.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/6_thumb_G_1448945167914.jpg', 'images/201512/goods_img/6_G_1448945167681.jpg', 'images/201512/source_img/6_G_1448945167499.jpg', '1', '', '1', '1', '0', '1', '1447707771', '100', '0', '0', '0', '0', '0', '0', '1449000416', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '78');
INSERT INTO `ecs_goods` VALUES ('7', '18', 'ECS000007', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '+', '2', '5', '', '9999', '0.000', '285.59', '238.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/7_thumb_G_1448945104346.jpg', 'images/201512/goods_img/7_G_1448945104415.jpg', 'images/201512/source_img/7_G_1448945104192.jpg', '1', '', '1', '1', '0', '2', '1447707875', '100', '0', '0', '0', '0', '0', '0', '1449007124', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '743');
INSERT INTO `ecs_goods` VALUES ('8', '22', 'ECS000008', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '+', '10', '4', '', '9999', '0.000', '150.00', '125.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/8_thumb_G_1448945032585.jpg', 'images/201512/goods_img/8_G_1448945032651.jpg', 'images/201512/source_img/8_G_1448945032409.jpg', '1', '', '1', '1', '0', '1', '1447707947', '100', '0', '0', '0', '0', '0', '0', '1449000409', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '84');
INSERT INTO `ecs_goods` VALUES ('9', '19', 'ECS000009', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '+', '9', '3', '', '9999', '0.000', '201.60', '168.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/9_thumb_G_1448944791708.jpg', 'images/201512/goods_img/9_G_1448944791462.jpg', 'images/201512/source_img/9_G_1448944791630.jpg', '1', '', '1', '1', '0', '1', '1447708029', '100', '0', '0', '0', '0', '0', '0', '1449000406', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '1', '', '74');
INSERT INTO `ecs_goods` VALUES ('10', '16', 'ECS000010', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '+', '13', '2', '', '9999', '0.000', '105.60', '88.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/10_thumb_G_1448944572962.jpg', 'images/201512/goods_img/10_G_1448944572822.jpg', 'images/201512/source_img/10_G_1448944572182.jpg', '1', '', '1', '1', '0', '0', '1447708083', '100', '0', '0', '0', '0', '0', '0', '1449000404', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '346');
INSERT INTO `ecs_goods` VALUES ('11', '16', 'ECS000011', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '+', '5', '10', '', '9999', '0.000', '31.20', '26.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/11_thumb_G_1448944388914.jpg', 'images/201512/goods_img/11_G_1448944388701.jpg', 'images/201512/source_img/11_G_1448944388028.jpg', '1', '', '1', '1', '0', '0', '1447708513', '100', '0', '0', '0', '0', '0', '0', '1449000401', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '84');
INSERT INTO `ecs_goods` VALUES ('12', '27', 'ECS000012', '53度茅台仁酒500ml', '+', '6', '1', '', '9999', '0.000', '189.60', '158.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/12_thumb_G_1448947547445.jpg', 'images/201512/goods_img/12_G_1448947547138.jpg', 'images/201512/source_img/12_G_1448947547472.jpg', '1', '', '1', '1', '0', '1', '1447708608', '100', '0', '0', '0', '0', '0', '0', '1449000398', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '753');
INSERT INTO `ecs_goods` VALUES ('13', '24', 'ECS000013', '52度兰陵·紫气东来1600mL山东名酒', '+', '3', '9', '', '9999', '0.000', '42.00', '35.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/13_thumb_G_1448947460325.jpg', 'images/201512/goods_img/13_G_1448947460827.jpg', 'images/201512/source_img/13_G_1448947460030.jpg', '1', '', '1', '1', '0', '0', '1447708687', '100', '0', '0', '0', '0', '0', '0', '1449000396', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '337');
INSERT INTO `ecs_goods` VALUES ('14', '28', 'ECS000014', '52度水井坊臻酿八號500ml', '+', '2', '9', '', '9999', '0.000', '43.19', '36.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/14_thumb_G_1448947354081.jpg', 'images/201512/goods_img/14_G_1448947354702.jpg', 'images/201512/source_img/14_G_1448947354484.jpg', '1', '', '1', '1', '0', '0', '1447709072', '100', '0', '0', '0', '0', '0', '0', '1448947354', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '789');
INSERT INTO `ecs_goods` VALUES ('15', '25', 'ECS000015', '茅台53度飞天茅台500ml', '+', '1', '9', '', '9999', '0.000', '21.59', '18.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/15_thumb_G_1448947257742.jpg', 'images/201512/goods_img/15_G_1448947257688.jpg', 'images/201512/source_img/15_G_1448947257906.jpg', '1', '', '1', '1', '0', '0', '1447709143', '100', '0', '0', '0', '0', '0', '0', '1449000393', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '345');
INSERT INTO `ecs_goods` VALUES ('16', '29', 'ECS000016', '52度茅台集团国隆双喜酒500mlx6', '+', '14', '9', '', '9999', '0.000', '22.80', '19.00', '0.00', '0', '0', '1', '', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/16_thumb_G_1448947194349.jpg', 'images/201512/goods_img/16_G_1448947194309.jpg', 'images/201512/source_img/16_G_1448947194235.jpg', '1', '', '1', '1', '0', '0', '1447709234', '100', '0', '1', '0', '0', '0', '0', '1449007911', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '877');
INSERT INTO `ecs_goods` VALUES ('17', '26', 'ECS000017', '张裕干红葡萄酒750ml*6支', '+', '2', '9', '', '9999', '0.000', '54.00', '45.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/17_thumb_G_1448947102512.jpg', 'images/201512/goods_img/17_G_1448947102989.jpg', 'images/201512/source_img/17_G_1448947102778.jpg', '1', '', '1', '1', '0', '0', '1447709315', '100', '0', '0', '0', '0', '0', '0', '1449000389', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '78');
INSERT INTO `ecs_goods` VALUES ('18', '23', 'ECS000018', '法国百利威干红葡萄酒AOP级6支装', '+', '3', '8', '', '9999', '0.000', '67.20', '56.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/18_thumb_G_1448947011803.jpg', 'images/201512/goods_img/18_G_1448947011879.jpg', 'images/201512/source_img/18_G_1448947011231.jpg', '1', '', '1', '1', '0', '0', '1447709372', '100', '0', '0', '0', '0', '0', '0', '1449000386', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '47');
INSERT INTO `ecs_goods` VALUES ('19', '23', 'ECS000019', '法国原装进口圣贝克干红葡萄酒750ml', '+', '3', '8', '', '9999', '0.000', '81.60', '68.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/19_thumb_G_1448946951833.jpg', 'images/201512/goods_img/19_G_1448946951174.jpg', 'images/201512/source_img/19_G_1448946951039.jpg', '1', '', '1', '1', '0', '0', '1447709444', '100', '0', '0', '0', '0', '0', '0', '1449000382', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '73');
INSERT INTO `ecs_goods` VALUES ('20', '24', 'ECS000020', '原瓶原装进口洋酒烈酒 法国云鹿XO白兰地', '+', '3', '7', '', '9999', '0.000', '45.60', '38.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/20_thumb_G_1448946850056.jpg', 'images/201512/goods_img/20_G_1448946850043.jpg', 'images/201512/source_img/20_G_1448946850630.jpg', '1', '', '1', '1', '0', '0', '1447709515', '100', '0', '0', '0', '0', '0', '0', '1449000379', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '74');
INSERT INTO `ecs_goods` VALUES ('21', '28', 'ECS000021', '西夫拉姆进口洋酒小酒版', '+', '9', '6', '', '9999', '0.000', '55.19', '46.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/21_thumb_G_1448946793103.jpg', 'images/201512/goods_img/21_G_1448946793129.jpg', 'images/201512/source_img/21_G_1448946793988.jpg', '1', '', '1', '1', '0', '0', '1447709572', '100', '0', '1', '0', '0', '0', '0', '1449000377', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '456');
INSERT INTO `ecs_goods` VALUES ('22', '25', 'ECS000022', '芝华士12年 苏格兰威士忌700ml', '+', '6', '5', '', '9999', '0.000', '70.80', '59.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/22_thumb_G_1448946729918.jpg', 'images/201512/goods_img/22_G_1448946729201.jpg', 'images/201512/source_img/22_G_1448946729212.jpg', '1', '', '1', '1', '0', '0', '1447709633', '100', '0', '0', '0', '0', '0', '0', '1449000306', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '47');
INSERT INTO `ecs_goods` VALUES ('23', '30', 'ECS000023', '糙米450gx3包粮油米面', '+', '1', '4', '', '9999', '0.000', '18.00', '15.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/23_thumb_G_1448948070332.jpg', 'images/201512/goods_img/23_G_1448948070466.jpg', 'images/201512/source_img/23_G_1448948070088.jpg', '1', '', '1', '1', '0', '0', '1447709779', '100', '0', '0', '0', '0', '0', '0', '1449007154', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '473');
INSERT INTO `ecs_goods` VALUES ('24', '34', 'ECS000024', '山西黑米 农家黑米4斤', '+', '2', '3', '', '9999', '0.000', '10.79', '9.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/24_thumb_G_1448948023508.jpg', 'images/201512/goods_img/24_G_1448948023587.jpg', 'images/201512/source_img/24_G_1448948023490.jpg', '1', '', '1', '1', '0', '0', '1447709832', '100', '0', '0', '0', '0', '0', '0', '1449000301', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '367');
INSERT INTO `ecs_goods` VALUES ('25', '31', 'ECS000025', '稻园牌稻米油粮油米糠油绿色植物油', '+', '3', '2', '', '9999', '0.000', '14.39', '12.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/25_thumb_G_1448947875633.jpg', 'images/201512/goods_img/25_G_1448947875727.jpg', 'images/201512/source_img/25_G_1448947875617.jpg', '1', '', '1', '1', '0', '0', '1447709895', '100', '0', '0', '0', '0', '0', '0', '1449000299', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '363');
INSERT INTO `ecs_goods` VALUES ('26', '35', 'ECS000026', '精炼一级大豆油5L色拉油粮油食用油', '+', '4', '10', '', '9999', '0.000', '54.00', '45.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/26_thumb_G_1448947825794.jpg', 'images/201512/goods_img/26_G_1448947825529.jpg', 'images/201512/source_img/26_G_1448947825768.jpg', '1', '', '1', '1', '0', '0', '1447709957', '100', '0', '0', '0', '0', '0', '0', '1449000296', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '473');
INSERT INTO `ecs_goods` VALUES ('27', '32', 'ECS000027', '维纳斯橄榄菜籽油5L/桶', '+', '2', '1', '', '9999', '0.000', '187.20', '156.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/27_thumb_G_1448947771206.jpg', 'images/201512/goods_img/27_G_1448947771379.jpg', 'images/201512/source_img/27_G_1448947771086.jpg', '1', '', '1', '1', '0', '0', '1447710030', '100', '0', '0', '0', '0', '0', '0', '1449000294', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '754');
INSERT INTO `ecs_goods` VALUES ('28', '33', 'ECS000028', '橄榄玉米油5L*2桶', '+', '3', '9', '', '9999', '0.000', '31.20', '26.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/28_thumb_G_1448947699187.jpg', 'images/201512/goods_img/28_G_1448947699687.jpg', 'images/201512/source_img/28_G_1448947699178.jpg', '1', '', '1', '1', '0', '0', '1447710093', '100', '0', '0', '0', '0', '0', '0', '1449000292', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '467');
INSERT INTO `ecs_goods` VALUES ('29', '30', 'ECS000029', '融氏纯玉米胚芽油5l桶', '+', '8', '8', '', '9999', '0.000', '14.39', '12.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/29_thumb_G_1448947631664.jpg', 'images/201512/goods_img/29_G_1448947631617.jpg', 'images/201512/source_img/29_G_1448947631371.jpg', '1', '', '1', '1', '0', '0', '1447710209', '100', '0', '0', '0', '0', '0', '0', '1449000287', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '63');
INSERT INTO `ecs_goods` VALUES ('30', '43', 'ECS000030', '泰国菠萝蜜16-18斤 1个装', '+', '5', '7', '', '9999', '0.000', '10.79', '9.00', '0.00', '0', '0', '1', '', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/30_thumb_G_1448948662661.jpg', 'images/201512/goods_img/30_G_1448948662324.jpg', 'images/201512/source_img/30_G_1448948662771.jpg', '1', '', '1', '1', '0', '0', '1447710410', '100', '0', '1', '0', '0', '0', '0', '1449007767', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '976');
INSERT INTO `ecs_goods` VALUES ('31', '44', 'ECS000031', '四川双流草莓新鲜水果礼盒2盒', '+', '5', '6', '', '9999', '0.000', '21.59', '18.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/31_thumb_G_1448948598408.jpg', 'images/201512/goods_img/31_G_1448948598895.jpg', 'images/201512/source_img/31_G_1448948598689.jpg', '1', '', '1', '1', '0', '0', '1447710460', '100', '0', '0', '0', '0', '0', '0', '1449000282', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '797');
INSERT INTO `ecs_goods` VALUES ('32', '42', 'ECS000032', '赣南脐橙 特级果 10斤装', '+', '7', '5', '', '9999', '0.000', '43.19', '36.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/32_thumb_G_1448948525255.jpg', 'images/201512/goods_img/32_G_1448948525353.jpg', 'images/201512/source_img/32_G_1448948525934.jpg', '1', '', '1', '1', '0', '0', '1447710516', '100', '0', '0', '0', '0', '0', '0', '1449000279', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '8679');
INSERT INTO `ecs_goods` VALUES ('33', '42', 'ECS000033', '现摘芭乐 番石榴台湾珍珠芭乐', '+', '8', '4', '', '9999', '0.000', '27.59', '23.00', '0.00', '0', '0', '1', '', '海南产精品释迦果,释迦是水果中的贵族,产量少,味道很甜,奶香十足,非常可口,果裹果园顺丰空运,保证新鲜.果子个大,一斤1-2个左右,大个头的果子更尽兴!', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/33_thumb_G_1448948479944.jpg', 'images/201512/goods_img/33_G_1448948479921.jpg', 'images/201512/source_img/33_G_1448948479832.jpg', '1', '', '1', '1', '0', '0', '1447710574', '100', '0', '1', '0', '0', '0', '0', '1449007650', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '75');
INSERT INTO `ecs_goods` VALUES ('34', '44', 'ECS000034', '潍坊萝卜5斤/箱 礼盒', '+', '4', '3', '', '9999', '0.000', '45.60', '38.00', '0.00', '0', '0', '1', '', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/34_thumb_G_1448948399017.jpg', 'images/201512/goods_img/34_G_1448948399797.jpg', 'images/201512/source_img/34_G_1448948399371.jpg', '1', '', '1', '1', '0', '0', '1447710640', '100', '0', '1', '0', '0', '0', '0', '1449007386', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '45');
INSERT INTO `ecs_goods` VALUES ('35', '41', 'ECS000035', '新鲜头茬非洲冰草冰菜', '+', '2', '2', '', '9999', '0.000', '67.20', '56.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/35_thumb_G_1448948333567.jpg', 'images/201512/goods_img/35_G_1448948333309.jpg', 'images/201512/source_img/35_G_1448948333004.jpg', '1', '', '1', '1', '0', '0', '1447710706', '100', '0', '0', '0', '0', '0', '0', '1449007151', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '573');
INSERT INTO `ecs_goods` VALUES ('36', '41', 'ECS000036', '仿真蔬菜水果果蔬菜模型', '+', '2', '10', '', '9999', '0.000', '6.00', '5.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/36_thumb_G_1448948234706.jpg', 'images/201512/goods_img/36_G_1448948234735.jpg', 'images/201512/source_img/36_G_1448948234982.jpg', '1', '', '1', '1', '0', '0', '1447710776', '100', '0', '0', '0', '0', '0', '0', '1449000272', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '547');
INSERT INTO `ecs_goods` VALUES ('37', '46', 'ECS000037', '新西兰进口全脂奶粉900g', '+', '6', '1', '', '9999', '0.000', '720.00', '600.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/37_thumb_G_1448949284321.jpg', 'images/201512/goods_img/37_G_1448949284705.jpg', 'images/201512/source_img/37_G_1448949284486.jpg', '1', '', '1', '1', '0', '0', '1447710938', '100', '0', '0', '0', '0', '0', '0', '1449000267', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '32');
INSERT INTO `ecs_goods` VALUES ('38', '47', 'ECS000038', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '+', '0', '9', '', '9999', '0.000', '84.00', '70.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/38_thumb_G_1448949220996.jpg', 'images/201512/goods_img/38_G_1448949220309.jpg', 'images/201512/source_img/38_G_1448949220249.jpg', '1', '', '1', '1', '0', '0', '1447710995', '100', '0', '0', '0', '0', '0', '0', '1449000263', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '670');
INSERT INTO `ecs_goods` VALUES ('39', '48', 'ECS000039', '木糖醇红枣早餐奶即食豆奶粉538g', '+', '1', '8', '', '9999', '0.000', '38.40', '32.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/39_thumb_G_1448949115222.jpg', 'images/201512/goods_img/39_G_1448949115026.jpg', 'images/201512/source_img/39_G_1448949115247.jpg', '1', '', '1', '1', '0', '0', '1447711439', '100', '0', '0', '0', '0', '0', '0', '1449000261', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '60');
INSERT INTO `ecs_goods` VALUES ('40', '45', 'ECS000040', '德运全脂新鲜纯牛奶1L*10盒装整箱', '+', '0', '7', '', '9999', '0.000', '69.60', '58.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/40_thumb_G_1448949038949.jpg', 'images/201512/goods_img/40_G_1448949038206.jpg', 'images/201512/source_img/40_G_1448949038319.jpg', '1', '', '1', '1', '0', '0', '1447711529', '100', '0', '0', '0', '0', '0', '0', '1449000259', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '470');
INSERT INTO `ecs_goods` VALUES ('41', '49', 'ECS000041', '高钙液体奶 200ml*24盒', '+', '0', '6', '', '9999', '0.000', '26.40', '22.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/41_thumb_G_1448948980554.jpg', 'images/201512/goods_img/41_G_1448948980027.jpg', 'images/201512/source_img/41_G_1448948980418.jpg', '1', '', '1', '1', '0', '0', '1447711623', '100', '0', '0', '0', '0', '0', '0', '1449000256', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '45');
INSERT INTO `ecs_goods` VALUES ('42', '45', 'ECS000042', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '+', '1', '4', '', '9999', '0.000', '43.19', '36.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/42_thumb_G_1448948895152.jpg', 'images/201512/goods_img/42_G_1448948895543.jpg', 'images/201512/source_img/42_G_1448948895219.jpg', '1', '', '1', '1', '0', '0', '1447711722', '100', '0', '1', '0', '0', '0', '0', '1449000254', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '23');
INSERT INTO `ecs_goods` VALUES ('43', '9', 'ECS000043', '休闲零食膨化食品焦糖/奶油/椒麻味', '+', '17', '3', '', '9999', '0.000', '153.60', '128.00', '99.00', '1447660800', '1639641600', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/43_thumb_G_1448948762037.jpg', 'images/201512/goods_img/43_G_1448948762004.jpg', 'images/201512/source_img/43_G_1448948762013.jpg', '1', '', '1', '1', '1', '1', '1447729300', '100', '0', '0', '1', '1', '1', '0', '1449000252', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '789');
INSERT INTO `ecs_goods` VALUES ('44', '45', 'ECS000044', '蒙牛特仑苏有机奶250ml×12盒', '+', '2', '2', '', '9999', '0.000', '69.60', '58.00', '32.00', '1447660800', '1671177600', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/44_thumb_G_1448948850734.jpg', 'images/201512/goods_img/44_G_1448948850226.jpg', 'images/201512/source_img/44_G_1448948850260.jpg', '1', '', '1', '1', '0', '0', '1447729652', '100', '0', '0', '0', '0', '1', '0', '1449000250', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '567');
INSERT INTO `ecs_goods` VALUES ('45', '28', 'ECS000045', '深蓝伏特加巴维兰利口酒送预调酒', '+', '8', '10', '', '9999', '0.000', '31.20', '26.00', '18.00', '1447660800', '1639641600', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/45_thumb_G_1448946661697.jpg', 'images/201512/goods_img/45_G_1448946661665.jpg', 'images/201512/source_img/45_G_1448946661621.jpg', '1', '', '1', '1', '0', '0', '1447729876', '100', '0', '0', '0', '0', '1', '0', '1449000248', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '34');
INSERT INTO `ecs_goods` VALUES ('46', '24', 'ECS000046', '双响炮洋酒JimBeam whiskey美国白占边', '+', '8', '1', '', '9999', '0.000', '38.40', '32.00', '28.00', '1447660800', '1605513600', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/46_thumb_G_1448946598227.jpg', 'images/201512/goods_img/46_G_1448946598678.jpg', 'images/201512/source_img/46_G_1448946598243.jpg', '1', '', '1', '1', '0', '0', '1447730034', '100', '0', '0', '0', '0', '1', '0', '1449000245', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '567');
INSERT INTO `ecs_goods` VALUES ('47', '19', 'ECS000047', '日本蒜蓉粉丝扇贝270克6只装', '+', '19', '9', '', '9999', '0.000', '156.00', '130.00', '108.00', '1447747200', '1671264000', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/47_thumb_G_1448946213633.jpg', 'images/201512/goods_img/47_G_1448946213188.jpg', 'images/201512/source_img/47_G_1448946213757.jpg', '1', '', '1', '1', '1', '1', '1447779304', '100', '0', '0', '1', '1', '1', '0', '1449000244', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '524');
INSERT INTO `ecs_goods` VALUES ('48', '16', 'ECS000048', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '+', '61', '8', '', '9998', '0.000', '126.00', '105.00', '88.00', '1447747200', '1639728000', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/48_thumb_G_1448943988607.jpg', 'images/201512/goods_img/48_G_1448943988767.jpg', 'images/201512/source_img/48_G_1448943988274.jpg', '1', '', '1', '1', '1', '1', '1447779530', '100', '0', '0', '1', '1', '1', '0', '1449000240', '0', '', '-1', '-1', '0', '0', '0', '2', '', '', '0', '1', '', '56');
INSERT INTO `ecs_goods` VALUES ('49', '12', 'ECS000049', '1分钱支付测试商品', '+', '127', '5', '', '9990', '0.000', '0.01', '0.01', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" alt=\"\" src=\"/images/upload/Image/1(1).jpg\" /><br />\r\n<img width=\"790\" height=\"595\" alt=\"\" src=\"/images/upload/Image/2.jpg\" /><br />\r\n<img width=\"790\" height=\"602\" alt=\"\" src=\"/images/upload/Image/3.jpg\" /></p>', 'images/201511/thumb_img/49_thumb_G_1448162819357.jpg', 'images/201511/goods_img/49_G_1448162819246.jpg', 'images/201511/source_img/49_G_1448162819810.jpg', '1', '', '1', '1', '1', '0', '1448162819', '100', '0', '1', '1', '1', '0', '0', '1449081349', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '29', '', '500');
INSERT INTO `ecs_goods` VALUES ('50', '28', 'ECS000050', 'Johnnie Walker尊尼获加黑牌威士忌', '+', '10', '9', '', '9999', '0.000', '24.00', '20.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/50_thumb_G_1448946542088.jpg', 'images/201512/goods_img/50_G_1448946542173.jpg', 'images/201512/source_img/50_G_1448946542187.jpg', '1', '', '1', '1', '1', '0', '1448392740', '100', '0', '0', '0', '0', '0', '0', '1448946542', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0', '0', '', '321');
INSERT INTO `ecs_goods` VALUES ('51', '25', 'ECS000051', '人头马CLUB特优香槟干邑350ml', '+', '14', '8', '', '9999', '0.000', '31.20', '26.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"790\" height=\"441\" src=\"/images/upload/Image/1(1).jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"595\" src=\"/images/upload/Image/2.jpg\" alt=\"\" /><br />\r\n<img width=\"790\" height=\"602\" src=\"/images/upload/Image/3.jpg\" alt=\"\" /></p>', 'images/201512/thumb_img/51_thumb_G_1448946466261.jpg', 'images/201512/goods_img/51_G_1448946466518.jpg', 'images/201512/source_img/51_G_1448946466769.jpg', '1', '', '1', '1', '1', '0', '1448392974', '100', '0', '0', '0', '0', '0', '0', '1448946466', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '20', '0', '', '123');

-- ----------------------------
-- Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_activity
-- ----------------------------
INSERT INTO `ecs_goods_activity` VALUES ('1', '金毛边牧泰迪狗训练奖励零食磨牙', '', '1', '12', '0', '金毛边牧泰迪狗训练奖励零食磨牙', '1447920000', '1637654400', '0', 'a:4:{s:12:\"price_ladder\";a:2:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:138;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:128;}}s:15:\"restrict_amount\";i:100;s:13:\"gift_integral\";i:100;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('2', '边境狗粮专用粮10kg', '', '1', '10', '0', '边境狗粮专用粮10kg', '1447920000', '1669190400', '0', 'a:4:{s:12:\"price_ladder\";a:2:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:78;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:70;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:80;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('3', '耐威克柔软鸡肉条100g', '', '1', '19', '0', '耐威克柔软鸡肉条100g', '1447920000', '1700726400', '0', 'a:4:{s:12:\"price_ladder\";a:2:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:60;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:55;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:60;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('4', '爱犬生活水晶鸡肉切丝800g', '', '1', '22', '0', '爱犬生活水晶鸡肉切丝800g', '1447920000', '1669190400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:49;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('5', '豪华可拆洗狗窝泰迪小狗狗用品狗房子', '', '1', '43', '0', '豪华可拆洗狗窝泰迪小狗狗用品狗房子', '1447920000', '1669190400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:88;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('6', '雷米高澳丽得成犬粮20kg', '', '1', '1', '0', '雷米高澳丽得成犬粮20kg', '1448352000', '1669622400', '0', 'a:4:{s:12:\"price_ladder\";a:2:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:18;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:15;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:200;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('7', '贝贝宠物零食A级鸡肉整枝800g鸡胸肉干', '', '1', '50', '0', '贝贝宠物零食A级鸡肉整枝800g鸡胸肉干', '1448352000', '1638086400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:18;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('8', '喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '', '1', '51', '0', '喷香鸡肉棒美味鸡肉条垂涎欲滴500g', '1448352000', '1669622400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:20;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');

-- ----------------------------
-- Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  `hex_color` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_attr
-- ----------------------------
INSERT INTO `ecs_goods_attr` VALUES ('1', '1', '211', '500克', '0', '', '', '', '');
INSERT INTO `ecs_goods_attr` VALUES ('2', '1', '211', '1000克', '50', '', '', '', '');
INSERT INTO `ecs_goods_attr` VALUES ('3', '1', '211', '2000克', '100', '', '', '', '');
INSERT INTO `ecs_goods_attr` VALUES ('4', '1', '214', '红色', '', '', '', '', 'FFCE6B');
INSERT INTO `ecs_goods_attr` VALUES ('5', '1', '214', '蓝色', '', '', '', '', '9661FF');
INSERT INTO `ecs_goods_attr` VALUES ('6', '1', '214', '绿色', '', '', '', '', '6B9621');
INSERT INTO `ecs_goods_attr` VALUES ('7', '1', '215', '时尚款', '', 'images/201512/thumb_img/1_thumb_G_1449025104251.jpg', '', '', '');
INSERT INTO `ecs_goods_attr` VALUES ('8', '1', '215', '经典款', '', 'images/201512/thumb_img/1_thumb_G_1449025115783.jpg', '', '', '');
INSERT INTO `ecs_goods_attr` VALUES ('9', '1', '215', '出众款', '', 'images/201512/thumb_img/1_thumb_G_1449025126133.jpg', '', '', '');

-- ----------------------------
-- Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_gallery
-- ----------------------------
INSERT INTO `ecs_goods_gallery` VALUES ('223', '30', 'images/201512/goods_img/30_P_1448948663450.jpg', '', 'images/201512/thumb_img/30_thumb_P_1448948663277.jpg', 'images/201512/source_img/30_P_1448948663264.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('236', '1', 'images/201512/goods_img/1_P_1449024889889.jpg', '', 'images/201512/thumb_img/1_thumb_P_1449024889723.jpg', 'images/201512/source_img/1_P_1449024889850.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('235', '1', 'images/201512/goods_img/1_P_1449024889264.jpg', '', 'images/201512/thumb_img/1_thumb_P_1449024889757.jpg', 'images/201512/source_img/1_P_1449024889093.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('172', '2', 'images/201512/goods_img/2_P_1448945810202.jpg', '', 'images/201512/thumb_img/2_thumb_P_1448945810984.jpg', 'images/201512/source_img/2_P_1448945810478.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('171', '2', 'images/201512/goods_img/2_P_1448945810814.jpg', '', 'images/201512/thumb_img/2_thumb_P_1448945810585.jpg', 'images/201512/source_img/2_P_1448945810307.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('170', '3', 'images/201512/goods_img/3_P_1448945490837.jpg', '', 'images/201512/thumb_img/3_thumb_P_1448945490156.jpg', 'images/201512/source_img/3_P_1448945490079.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('169', '3', 'images/201512/goods_img/3_P_1448945490084.jpg', '', 'images/201512/thumb_img/3_thumb_P_1448945490095.jpg', 'images/201512/source_img/3_P_1448945490486.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('168', '4', 'images/201512/goods_img/4_P_1448945381985.jpg', '', 'images/201512/thumb_img/4_thumb_P_1448945381493.jpg', 'images/201512/source_img/4_P_1448945381797.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('167', '4', 'images/201512/goods_img/4_P_1448945381013.jpg', '', 'images/201512/thumb_img/4_thumb_P_1448945381781.jpg', 'images/201512/source_img/4_P_1448945381044.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('166', '5', 'images/201512/goods_img/5_P_1448945270390.jpg', '', 'images/201512/thumb_img/5_thumb_P_1448945270575.jpg', 'images/201512/source_img/5_P_1448945270727.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('165', '5', 'images/201512/goods_img/5_P_1448945270067.jpg', '', 'images/201512/thumb_img/5_thumb_P_1448945270970.jpg', 'images/201512/source_img/5_P_1448945270507.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('164', '5', 'images/201512/goods_img/5_P_1448945270432.jpg', '', 'images/201512/thumb_img/5_thumb_P_1448945270125.jpg', 'images/201512/source_img/5_P_1448945270511.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('163', '6', 'images/201512/goods_img/6_P_1448945167279.jpg', '', 'images/201512/thumb_img/6_thumb_P_1448945167018.jpg', 'images/201512/source_img/6_P_1448945167258.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('162', '6', 'images/201512/goods_img/6_P_1448945167015.jpg', '', 'images/201512/thumb_img/6_thumb_P_1448945167107.jpg', 'images/201512/source_img/6_P_1448945167717.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('161', '7', 'images/201512/goods_img/7_P_1448945104883.jpg', '', 'images/201512/thumb_img/7_thumb_P_1448945104959.jpg', 'images/201512/source_img/7_P_1448945104912.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('160', '7', 'images/201512/goods_img/7_P_1448945104734.jpg', '', 'images/201512/thumb_img/7_thumb_P_1448945104284.jpg', 'images/201512/source_img/7_P_1448945104050.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('159', '8', 'images/201512/goods_img/8_P_1448945032810.jpg', '', 'images/201512/thumb_img/8_thumb_P_1448945032387.jpg', 'images/201512/source_img/8_P_1448945032833.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('158', '8', 'images/201512/goods_img/8_P_1448945032646.jpg', '', 'images/201512/thumb_img/8_thumb_P_1448945032266.jpg', 'images/201512/source_img/8_P_1448945032090.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('156', '9', 'images/201512/goods_img/9_P_1448944791617.jpg', '', 'images/201512/thumb_img/9_thumb_P_1448944791262.jpg', 'images/201512/source_img/9_P_1448944791045.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('155', '9', 'images/201512/goods_img/9_P_1448944791129.jpg', '', 'images/201512/thumb_img/9_thumb_P_1448944791722.jpg', 'images/201512/source_img/9_P_1448944791736.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('154', '9', 'images/201512/goods_img/9_P_1448944791077.jpg', '', 'images/201512/thumb_img/9_thumb_P_1448944791315.jpg', 'images/201512/source_img/9_P_1448944791453.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('152', '10', 'images/201512/goods_img/10_P_1448944572085.jpg', '', 'images/201512/thumb_img/10_thumb_P_1448944572281.jpg', 'images/201512/source_img/10_P_1448944572215.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('151', '10', 'images/201512/goods_img/10_P_1448944572532.jpg', '', 'images/201512/thumb_img/10_thumb_P_1448944572572.jpg', 'images/201512/source_img/10_P_1448944572522.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('150', '11', 'images/201512/goods_img/11_P_1448944388277.jpg', '', 'images/201512/thumb_img/11_thumb_P_1448944388801.jpg', 'images/201512/source_img/11_P_1448944388694.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('149', '11', 'images/201512/goods_img/11_P_1448944388034.jpg', '', 'images/201512/thumb_img/11_thumb_P_1448944388341.jpg', 'images/201512/source_img/11_P_1448944388506.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('148', '11', 'images/201512/goods_img/11_P_1448944388201.jpg', '', 'images/201512/thumb_img/11_thumb_P_1448944388143.jpg', 'images/201512/source_img/11_P_1448944388449.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('201', '12', 'images/201512/goods_img/12_P_1448947547989.jpg', '', 'images/201512/thumb_img/12_thumb_P_1448947547076.jpg', 'images/201512/source_img/12_P_1448947547749.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('217', '33', 'images/201512/goods_img/33_P_1448948479966.jpg', '', 'images/201512/thumb_img/33_thumb_P_1448948479645.jpg', 'images/201512/source_img/33_P_1448948479266.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('198', '13', 'images/201512/goods_img/13_P_1448947460386.jpg', '', 'images/201512/thumb_img/13_thumb_P_1448947460814.jpg', 'images/201512/source_img/13_P_1448947460156.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('199', '13', 'images/201512/goods_img/13_P_1448947460276.jpg', '', 'images/201512/thumb_img/13_thumb_P_1448947460472.jpg', 'images/201512/source_img/13_P_1448947460959.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('196', '14', 'images/201512/goods_img/14_P_1448947354031.jpg', '', 'images/201512/thumb_img/14_thumb_P_1448947354520.jpg', 'images/201512/source_img/14_P_1448947354029.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('197', '14', 'images/201512/goods_img/14_P_1448947354433.jpg', '', 'images/201512/thumb_img/14_thumb_P_1448947354973.jpg', 'images/201512/source_img/14_P_1448947354845.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('200', '13', 'images/201512/goods_img/13_P_1448947460353.jpg', '', 'images/201512/thumb_img/13_thumb_P_1448947460246.jpg', 'images/201512/source_img/13_P_1448947460612.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('194', '15', 'images/201512/goods_img/15_P_1448947257324.jpg', '', 'images/201512/thumb_img/15_thumb_P_1448947257300.jpg', 'images/201512/source_img/15_P_1448947257445.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('195', '15', 'images/201512/goods_img/15_P_1448947257580.jpg', '', 'images/201512/thumb_img/15_thumb_P_1448947257506.jpg', 'images/201512/source_img/15_P_1448947257219.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('193', '16', 'images/201512/goods_img/16_P_1448947194687.jpg', '', 'images/201512/thumb_img/16_thumb_P_1448947194737.jpg', 'images/201512/source_img/16_P_1448947194413.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('192', '17', 'images/201512/goods_img/17_P_1448947102246.jpg', '', 'images/201512/thumb_img/17_thumb_P_1448947102273.jpg', 'images/201512/source_img/17_P_1448947102672.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('220', '31', 'images/201512/goods_img/31_P_1448948598947.jpg', '', 'images/201512/thumb_img/31_thumb_P_1448948598116.jpg', 'images/201512/source_img/31_P_1448948598706.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('191', '18', 'images/201512/goods_img/18_P_1448947011435.jpg', '', 'images/201512/thumb_img/18_thumb_P_1448947011294.jpg', 'images/201512/source_img/18_P_1448947011167.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('189', '19', 'images/201512/goods_img/19_P_1448946951581.jpg', '', 'images/201512/thumb_img/19_thumb_P_1448946951049.jpg', 'images/201512/source_img/19_P_1448946951968.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('190', '19', 'images/201512/goods_img/19_P_1448946951726.jpg', '', 'images/201512/thumb_img/19_thumb_P_1448946951438.jpg', 'images/201512/source_img/19_P_1448946951343.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('188', '20', 'images/201512/goods_img/20_P_1448946850602.jpg', '', 'images/201512/thumb_img/20_thumb_P_1448946850312.jpg', 'images/201512/source_img/20_P_1448946850770.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('187', '21', 'images/201512/goods_img/21_P_1448946793276.jpg', '', 'images/201512/thumb_img/21_thumb_P_1448946793846.jpg', 'images/201512/source_img/21_P_1448946793831.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('186', '21', 'images/201512/goods_img/21_P_1448946793153.jpg', '', 'images/201512/thumb_img/21_thumb_P_1448946793043.jpg', 'images/201512/source_img/21_P_1448946793384.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('185', '22', 'images/201512/goods_img/22_P_1448946729629.jpg', '', 'images/201512/thumb_img/22_thumb_P_1448946729509.jpg', 'images/201512/source_img/22_P_1448946729582.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('210', '23', 'images/201512/goods_img/23_P_1448948070348.jpg', '', 'images/201512/thumb_img/23_thumb_P_1448948070563.jpg', 'images/201512/source_img/23_P_1448948070542.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('208', '24', 'images/201512/goods_img/24_P_1448948023823.jpg', '', 'images/201512/thumb_img/24_thumb_P_1448948023376.jpg', 'images/201512/source_img/24_P_1448948023212.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('209', '24', 'images/201512/goods_img/24_P_1448948023977.jpg', '', 'images/201512/thumb_img/24_thumb_P_1448948023944.jpg', 'images/201512/source_img/24_P_1448948023305.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('207', '25', 'images/201512/goods_img/25_P_1448947875346.jpg', '', 'images/201512/thumb_img/25_thumb_P_1448947875411.jpg', 'images/201512/source_img/25_P_1448947875977.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('206', '26', 'images/201512/goods_img/26_P_1448947825754.jpg', '', 'images/201512/thumb_img/26_thumb_P_1448947825696.jpg', 'images/201512/source_img/26_P_1448947825541.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('205', '27', 'images/201512/goods_img/27_P_1448947771805.jpg', '', 'images/201512/thumb_img/27_thumb_P_1448947771194.jpg', 'images/201512/source_img/27_P_1448947771187.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('203', '28', 'images/201512/goods_img/28_P_1448947699948.jpg', '', 'images/201512/thumb_img/28_thumb_P_1448947699767.jpg', 'images/201512/source_img/28_P_1448947699059.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('204', '28', 'images/201512/goods_img/28_P_1448947699777.jpg', '', 'images/201512/thumb_img/28_thumb_P_1448947699486.jpg', 'images/201512/source_img/28_P_1448947699351.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('202', '29', 'images/201512/goods_img/29_P_1448947631994.jpg', '', 'images/201512/thumb_img/29_thumb_P_1448947631419.jpg', 'images/201512/source_img/29_P_1448947631335.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('221', '30', 'images/201512/goods_img/30_P_1448948662571.jpg', '', 'images/201512/thumb_img/30_thumb_P_1448948662539.jpg', 'images/201512/source_img/30_P_1448948662570.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('222', '30', 'images/201512/goods_img/30_P_1448948663221.jpg', '', 'images/201512/thumb_img/30_thumb_P_1448948663062.jpg', 'images/201512/source_img/30_P_1448948663926.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('219', '31', 'images/201512/goods_img/31_P_1448948598475.jpg', '', 'images/201512/thumb_img/31_thumb_P_1448948598050.jpg', 'images/201512/source_img/31_P_1448948598251.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('218', '32', 'images/201512/goods_img/32_P_1448948525620.jpg', '', 'images/201512/thumb_img/32_thumb_P_1448948525192.jpg', 'images/201512/source_img/32_P_1448948525486.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('216', '33', 'images/201512/goods_img/33_P_1448948479886.jpg', '', 'images/201512/thumb_img/33_thumb_P_1448948479397.jpg', 'images/201512/source_img/33_P_1448948479545.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('215', '34', 'images/201512/goods_img/34_P_1448948399009.jpg', '', 'images/201512/thumb_img/34_thumb_P_1448948399392.jpg', 'images/201512/source_img/34_P_1448948399217.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('214', '35', 'images/201512/goods_img/35_P_1448948333610.jpg', '', 'images/201512/thumb_img/35_thumb_P_1448948333758.jpg', 'images/201512/source_img/35_P_1448948333553.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('213', '35', 'images/201512/goods_img/35_P_1448948333313.jpg', '', 'images/201512/thumb_img/35_thumb_P_1448948333120.jpg', 'images/201512/source_img/35_P_1448948333684.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('211', '36', 'images/201512/goods_img/36_P_1448948234405.jpg', '', 'images/201512/thumb_img/36_thumb_P_1448948234986.jpg', 'images/201512/source_img/36_P_1448948234944.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('212', '36', 'images/201512/goods_img/36_P_1448948234250.jpg', '', 'images/201512/thumb_img/36_thumb_P_1448948234206.jpg', 'images/201512/source_img/36_P_1448948234692.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('237', '1', 'images/201512/goods_img/1_P_1449024889726.jpg', '', 'images/201512/thumb_img/1_thumb_P_1449024889686.jpg', 'images/201512/source_img/1_P_1449024889652.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('231', '37', 'images/201512/goods_img/37_P_1448949284365.jpg', '', 'images/201512/thumb_img/37_thumb_P_1448949284880.jpg', 'images/201512/source_img/37_P_1448949284451.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('230', '38', 'images/201512/goods_img/38_P_1448949220255.jpg', '', 'images/201512/thumb_img/38_thumb_P_1448949220567.jpg', 'images/201512/source_img/38_P_1448949220225.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('238', '1', 'images/201512/goods_img/1_P_1449024889018.jpg', '', 'images/201512/thumb_img/1_thumb_P_1449024889930.jpg', 'images/201512/source_img/1_P_1449024889447.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('229', '39', 'images/201512/goods_img/39_P_1448949115481.jpg', '', 'images/201512/thumb_img/39_thumb_P_1448949115591.jpg', 'images/201512/source_img/39_P_1448949115980.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('228', '40', 'images/201512/goods_img/40_P_1448949038702.jpg', '', 'images/201512/thumb_img/40_thumb_P_1448949038016.jpg', 'images/201512/source_img/40_P_1448949038239.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('227', '41', 'images/201512/goods_img/41_P_1448948980358.jpg', '', 'images/201512/thumb_img/41_thumb_P_1448948981132.jpg', 'images/201512/source_img/41_P_1448948980362.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('226', '42', 'images/201512/goods_img/42_P_1448948895193.jpg', '', 'images/201512/thumb_img/42_thumb_P_1448948895489.jpg', 'images/201512/source_img/42_P_1448948895244.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('224', '43', 'images/201512/goods_img/43_P_1448948762645.jpg', '', 'images/201512/thumb_img/43_thumb_P_1448948762213.jpg', 'images/201512/source_img/43_P_1448948762403.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('225', '44', 'images/201512/goods_img/44_P_1448948850187.jpg', '', 'images/201512/thumb_img/44_thumb_P_1448948850019.jpg', 'images/201512/source_img/44_P_1448948850461.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('184', '45', 'images/201512/goods_img/45_P_1448946661303.jpg', '', 'images/201512/thumb_img/45_thumb_P_1448946661051.jpg', 'images/201512/source_img/45_P_1448946661250.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('182', '46', 'images/201512/goods_img/46_P_1448946598711.jpg', '', 'images/201512/thumb_img/46_thumb_P_1448946598444.jpg', 'images/201512/source_img/46_P_1448946598236.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('183', '46', 'images/201512/goods_img/46_P_1448946598301.jpg', '', 'images/201512/thumb_img/46_thumb_P_1448946598846.jpg', 'images/201512/source_img/46_P_1448946598009.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('176', '47', 'images/201512/goods_img/47_P_1448946213263.jpg', '', 'images/201512/thumb_img/47_thumb_P_1448946213440.jpg', 'images/201512/source_img/47_P_1448946213457.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('177', '47', 'images/201512/goods_img/47_P_1448946213157.jpg', '', 'images/201512/thumb_img/47_thumb_P_1448946213100.jpg', 'images/201512/source_img/47_P_1448946213557.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('143', '48', 'images/201512/goods_img/48_P_1448943988970.jpg', '', 'images/201512/thumb_img/48_thumb_P_1448943988269.jpg', 'images/201512/source_img/48_P_1448943988281.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('142', '48', 'images/201512/goods_img/48_P_1448943988898.jpg', '', 'images/201512/thumb_img/48_thumb_P_1448943988203.jpg', 'images/201512/source_img/48_P_1448943988860.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('136', '49', 'images/201511/goods_img/49_P_1448162819889.jpg', '', 'images/201511/thumb_img/49_thumb_P_1448162819323.jpg', 'images/201511/source_img/49_P_1448162819972.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('234', '1', 'images/201512/goods_img/1_P_1449024889287.jpg', '', 'images/201512/thumb_img/1_thumb_P_1449024889543.jpg', 'images/201512/source_img/1_P_1449024889948.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('181', '50', 'images/201512/goods_img/50_P_1448946543091.jpg', '', 'images/201512/thumb_img/50_thumb_P_1448946543313.jpg', 'images/201512/source_img/50_P_1448946543708.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('180', '50', 'images/201512/goods_img/50_P_1448946542182.jpg', '', 'images/201512/thumb_img/50_thumb_P_1448946542880.jpg', 'images/201512/source_img/50_P_1448946542880.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('179', '51', 'images/201512/goods_img/51_P_1448946466595.jpg', '', 'images/201512/thumb_img/51_thumb_P_1448946466873.jpg', 'images/201512/source_img/51_P_1448946466033.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('178', '51', 'images/201512/goods_img/51_P_1448946466208.jpg', '', 'images/201512/thumb_img/51_thumb_P_1448946466811.jpg', 'images/201512/source_img/51_P_1448946466928.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('144', '48', 'images/201512/goods_img/48_P_1448943988439.jpg', '', 'images/201512/thumb_img/48_thumb_P_1448943988595.jpg', 'images/201512/source_img/48_P_1448943988085.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('153', '10', 'images/201512/goods_img/10_P_1448944572872.jpg', '', 'images/201512/thumb_img/10_thumb_P_1448944572724.jpg', 'images/201512/source_img/10_P_1448944572086.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('157', '9', 'images/201512/goods_img/9_P_1448944791229.jpg', '', 'images/201512/thumb_img/9_thumb_P_1448944791186.jpg', 'images/201512/source_img/9_P_1448944791419.jpg');

-- ----------------------------
-- Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_type
-- ----------------------------
INSERT INTO `ecs_goods_type` VALUES ('1', '书', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('2', '音乐', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('3', '电影', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('4', '手机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('5', '笔记本电脑', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('6', '数码相机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('7', '数码摄像机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('8', '化妆品', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('9', '精品手机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('10', '宠物粮', '1', '');

-- ----------------------------
-- Table structure for `ecs_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_group_goods
-- ----------------------------
INSERT INTO `ecs_group_goods` VALUES ('1', '10', '88.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('1', '11', '26.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('1', '47', '130.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('2', '4', '75.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('2', '5', '120.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('2', '6', '199.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('49', '1', '193.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('49', '2', '88.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('49', '6', '199.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('49', '10', '88.00', '1', '0');
INSERT INTO `ecs_group_goods` VALUES ('49', '19', '68.00', '1', '0');

-- ----------------------------
-- Table structure for `ecs_ip_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ip_log`;
CREATE TABLE `ecs_ip_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `u_id` int(20) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `phone_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=860 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ip_log
-- ----------------------------
INSERT INTO `ecs_ip_log` VALUES ('43', '112.97.37.235', '42', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.51_r733746.462 NetType/3gnet');
INSERT INTO `ecs_ip_log` VALUES ('44', '182.131.10.30', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('45', '112.64.235.252', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('46', '180.153.206.26', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('47', '171.212.222.51', '53', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('48', '171.213.61.155', '53', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('49', '112.65.193.15', '53', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('50', '182.131.10.30', '53', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/ctlte');
INSERT INTO `ecs_ip_log` VALUES ('51', '171.213.61.155', '53', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('52', '119.4.252.128', '53', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('53', '119.4.252.232', '53', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.0.1 NetType/NONWIFI');
INSERT INTO `ecs_ip_log` VALUES ('54', '14.17.11.196', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('55', '180.153.163.186', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('56', '101.226.33.239', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('57', '180.153.214.192', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('58', '163.177.69.59', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('59', '101.226.51.228', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('60', '14.17.37.143', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('61', '180.153.161.217', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('62', '163.177.82.14', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('63', '101.226.33.221', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('64', '112.64.235.254', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('65', '101.226.33.203', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('66', '123.151.139.156', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.108_r1107173.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('67', '101.226.89.117', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('68', '101.226.33.226', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('69', '120.210.182.130', '66', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7108 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.1.361');
INSERT INTO `ecs_ip_log` VALUES ('70', '59.40.208.89', '68', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('71', '14.17.37.143', '69', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('72', '101.226.89.119', '69', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('73', '101.226.102.97', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('74', '180.153.163.186', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('75', '101.226.103.62', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; A0001 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('76', '101.226.69.108', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('77', '101.226.66.179', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('78', '180.153.161.55', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('79', '222.73.76.253', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('80', '101.226.125.16', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0');
INSERT INTO `ecs_ip_log` VALUES ('81', '101.226.61.186', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0');
INSERT INTO `ecs_ip_log` VALUES ('82', '101.226.125.109', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0');
INSERT INTO `ecs_ip_log` VALUES ('83', '101.226.33.238', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('84', '101.226.125.18', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0');
INSERT INTO `ecs_ip_log` VALUES ('85', '180.153.81.159', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0');
INSERT INTO `ecs_ip_log` VALUES ('86', '123.151.139.156', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.108_r1107173.543 NetType/3gnet');
INSERT INTO `ecs_ip_log` VALUES ('87', '101.226.66.180', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('88', '124.161.23.60', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('89', '112.64.235.245', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('90', '182.131.10.29', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('91', '124.161.23.61', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('92', '112.64.235.245', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('93', '112.65.193.13', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('94', '182.131.12.11', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('95', '59.59.236.81', '75', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('96', '180.153.205.253', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('97', '101.226.33.226', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('98', '101.226.61.189', '77', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('99', '101.226.33.201', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('100', '182.131.12.11', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('101', '124.161.23.60', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('102', '180.153.214.198', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('103', '180.153.211.172', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('104', '180.153.214.200', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('105', '101.226.68.217', '77', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('106', '180.153.163.206', '77', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('107', '180.153.163.209', '77', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('108', '180.153.206.37', '77', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('109', '101.126.47.60', '69', '1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('110', '180.153.201.212', '69', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('111', '111.161.57.31', '70', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('112', '180.153.206.22', '69', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('113', '101.226.33.239', '70', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('114', '101.126.47.60', '70', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('115', '222.73.76.253', '70', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('116', '123.184.17.231', '94', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('117', '58.62.254.82', '111', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('118', '223.104.1.248', '111', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('119', '123.151.139.155', '107', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; GT-N7108 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('120', '101.226.33.216', '107', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('121', '180.153.206.20', '107', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('122', '114.96.153.55', '112', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('123', '180.153.201.217', '60', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('124', '101.226.89.14', '109', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('125', '101.226.33.203', '109', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('126', '180.153.206.19', '109', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('127', '125.86.109.121', '113', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('128', '123.151.42.50', '115', '1', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('129', '180.153.205.252', '115', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('130', '123.151.42.50', '117', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('131', '180.153.206.22', '117', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('132', '14.210.2.170', '118', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; GT-I9220 Build/IMM76D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('133', '123.151.12.154', '119', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HM NOTE 1LTETD Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('134', '180.153.206.19', '119', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('135', '183.13.180.226', '121', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('136', '14.17.37.69', '124', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; MyPhone Agua Iceberg Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('137', '101.226.66.179', '124', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('138', '180.153.163.208', '117', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('139', '183.195.233.90', '101', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('140', '101.226.125.119', '101', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('141', '180.153.163.209', '101', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('142', '113.108.11.50', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('143', '180.153.214.192', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('144', '101.226.33.206', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('145', '180.153.206.23', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('146', '14.150.54.35', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/cmnet');
INSERT INTO `ecs_ip_log` VALUES ('147', '183.232.47.144', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('148', '36.41.141.189', '129', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('149', '117.136.50.63', '129', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('150', '183.232.47.181', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('151', '118.114.161.168', '37', '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('152', '180.153.201.79', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('153', '36.41.141.189', '130', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B466 Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('154', '175.25.160.7', '131', '0', 'Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B435 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('155', '14.17.37.144', '124', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; MyPhone Agua Iceberg Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('156', '112.64.235.252', '124', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('157', '112.247.95.244', '132', '0', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo A3800-d Build/LenovoA3800-d) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('158', '101.226.103.62', '132', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; A0001 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('159', '14.17.37.143', '133', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('160', '180.153.214.191', '133', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('161', '183.61.51.191', '133', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('162', '101.226.33.201', '133', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('163', '219.133.40.15', '126', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G7109 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('164', '180.153.206.31', '126', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('165', '180.153.206.16', '126', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('166', '14.17.34.237', '126', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G7109 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('167', '112.65.193.14', '126', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('168', '101.226.89.122', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('169', '120.151.135.16', '134', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-N910G Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.113_r1119855.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('170', '180.153.214.152', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('171', '14.17.37.68', '127', '1', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('172', '101.226.33.200', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('173', '112.64.235.245', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('174', '14.145.225.73', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('175', '101.226.33.224', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('176', '120.210.168.247', '144', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 QQ/5.5.1.426 NetType/WIFI Mem/52');
INSERT INTO `ecs_ip_log` VALUES ('177', '223.104.1.135', '142', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('178', '183.232.118.13', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('179', '101.226.66.192', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('180', '123.151.12.152', '150', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L02 Build/HDH60-L02) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('181', '101.226.33.216', '150', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('182', '14.17.37.146', '152', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-CL00 Build/HuaweiPE-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('183', '180.153.201.79', '152', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('184', '219.133.40.14', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('185', '180.153.201.217', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('186', '183.232.90.37', '153', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI G750-T00 Build/HuaweiG750-T00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('187', '180.153.163.189', '153', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('188', '180.153.211.172', '153', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('189', '180.153.206.20', '115', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('190', '1.63.107.176', '158', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Nibiru H1 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('191', '180.153.163.186', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('192', '14.158.224.11', '159', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.0.0.56_r856074.501 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('193', '118.114.160.118', '37', '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('194', '101.226.66.193', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('195', '118.114.160.118', '37', '0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0');
INSERT INTO `ecs_ip_log` VALUES ('196', '101.226.65.108', '152', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('197', '182.145.92.52', '160', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('198', '183.246.72.39', '161', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X1St Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('199', '180.153.201.35', '161', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; N1T Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('200', '180.153.214.191', '161', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('201', '180.153.201.35', '162', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; N1T Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('202', '183.246.72.39', '162', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X1St Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('203', '180.153.114.197', '161', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('204', '180.153.211.172', '162', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('205', '180.153.205.253', '161', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('206', '123.151.139.155', '107', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; GT-N7108 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('207', '183.61.51.196', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('208', '180.153.201.217', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('209', '180.153.214.178', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('210', '180.153.206.13', '163', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('211', '180.153.206.34', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('212', '180.153.163.189', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('213', '114.225.191.248', '168', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_6 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11B651 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('214', '183.7.98.106', '170', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('215', '183.18.254.98', '169', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('216', '14.17.37.144', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('217', '101.226.65.104', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('218', '101.226.33.204', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('219', '112.64.235.251', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('220', '182.145.126.124', '160', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('221', '180.153.206.36', '107', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('222', '219.133.40.15', '174', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad 8675-FHD Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('223', '101.226.51.227', '174', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('224', '180.153.206.24', '174', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('225', '112.64.235.252', '174', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('226', '111.161.57.49', '175', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.8; zh-cn; xiaomi2 Build/GRK39F) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.115_r1125081.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('227', '101.226.89.116', '175', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('228', '118.113.216.44', '37', '0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0');
INSERT INTO `ecs_ip_log` VALUES ('229', '101.226.66.179', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('230', '123.151.42.49', '178', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Lenovo A788t Build/S104) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/cmnet');
INSERT INTO `ecs_ip_log` VALUES ('231', '101.226.51.228', '178', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('232', '101.226.33.224', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('233', '222.73.76.253', '37', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('234', '180.153.206.16', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('235', '180.153.161.55', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('236', '180.153.163.186', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('237', '112.65.193.14', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('238', '118.113.216.44', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; YL-Coolpad_9150/4.1.034.130514.9150; 540*960; CTC/2.0) CoolpadWebkit/534.30');
INSERT INTO `ecs_ip_log` VALUES ('239', '121.11.102.84', '181', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('240', '124.161.23.61', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('241', '101.226.65.105', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('242', '180.153.206.26', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('243', '112.90.138.78', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('244', '101.226.65.108', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('245', '180.153.201.15', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('246', '183.10.191.111', '182', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('247', '118.113.216.44', '37', '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('248', '101.226.89.120', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('249', '111.161.57.31', '70', '1', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('250', '115.173.52.192', '70', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('251', '180.153.163.208', '70', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('252', '120.87.202.205', '187', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; JY-G2 Build/IMM76D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('253', '180.153.163.189', '187', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('254', '125.46.53.150', '190', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('255', '116.23.222.246', '193', '0', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9008V Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('256', '116.1.90.143', '195', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('257', '183.10.184.49', '182', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('258', '111.161.57.31', '200', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G610-T11 Build/HuaweiG610-T11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('259', '112.65.193.15', '200', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('260', '101.226.33.226', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('261', '101.226.33.221', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('262', '113.67.156.197', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('263', '112.65.193.15', '127', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('264', '180.153.206.18', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('265', '219.133.40.16', '208', '1', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('266', '14.17.37.43', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('267', '163.177.82.14', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('268', '163.177.82.14', '209', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('269', '163.177.82.13', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('270', '101.226.33.226', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('271', '112.90.138.78', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; G621-TL00 Build/HonorG621-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('272', '180.153.201.214', '208', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('273', '61.151.218.118', '209', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('274', '124.14.163.231', '210', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('275', '124.14.163.231', '210', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.0 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('276', '124.161.23.11', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('277', '112.64.235.248', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('278', '58.16.196.55', '213', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; MI 4W Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('279', '180.153.163.186', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('280', '180.153.201.15', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('281', '180.153.206.17', '145', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('282', '14.120.87.24', '145', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL20 Build/Che1-CL20) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('283', '180.153.206.21', '145', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('284', '14.17.37.68', '145', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL20 Build/Che1-CL20) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('285', '112.64.235.89', '145', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('286', '111.161.57.31', '212', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad Y76 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('287', '101.226.66.192', '212', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('288', '180.153.206.33', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('289', '112.83.162.141', '216', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('290', '101.226.125.15', '217', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad T1 Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('291', '180.153.214.152', '217', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('292', '106.84.36.220', '218', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('293', '58.67.151.49', '219', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('294', '112.12.41.82', '220', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI P6-C00 Build/HuaweiP6-C00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('295', '117.78.186.90', '219', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('296', '180.153.201.64', '219', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('297', '112.64.235.249', '219', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('298', '221.226.46.130', '222', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('299', '121.225.122.237', '222', '0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2376.0 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('300', '121.225.122.237', '222', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('301', '111.17.188.73', '226', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('302', '123.151.153.35', '224', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9502 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('303', '101.226.51.228', '224', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('304', '111.161.52.28', '224', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9502 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('305', '112.65.193.13', '224', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('306', '101.226.89.193', '85', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI G620-L72 Build/HuaweiG620-L72) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('307', '101.226.33.205', '85', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('308', '101.226.125.19', '232', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; HTC T329d Build/JRO03C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('309', '101.226.89.121', '232', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('310', '101.226.33.204', '232', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('311', '61.130.246.72', '232', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; HTC T329d Build/JRO03C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/ctwap');
INSERT INTO `ecs_ip_log` VALUES ('312', '123.151.42.47', '235', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('313', '180.153.161.217', '235', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('314', '101.226.66.187', '235', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('315', '101.226.51.228', '235', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('316', '58.61.208.46', '237', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('317', '222.240.7.96', '239', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('318', '14.17.37.161', '240', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; OBEE V10 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('319', '180.153.201.216', '240', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('320', '58.243.254.207', '247', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('321', '101.226.125.14', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('322', '180.153.214.180', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('323', '218.28.223.186', '253', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('324', '117.24.80.33', '256', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('325', '117.24.80.33', '256', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.0.2 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('326', '116.27.128.14', '257', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('327', '123.151.64.142', '261', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('328', '180.153.212.13', '261', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('329', '182.140.184.88', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.53_r1166628.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('330', '180.153.214.176', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('331', '183.60.52.5', '229', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; SM-G9200 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025437 Mobile Safari/533.1 MicroMessenger/6.1.0.75_r1101790.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('332', '123.151.139.155', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; U9180 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/cmnet');
INSERT INTO `ecs_ip_log` VALUES ('333', '101.226.33.203', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('334', '182.131.12.36', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('335', '221.13.63.114', '213', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; MI 4W Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/3gnet');
INSERT INTO `ecs_ip_log` VALUES ('336', '101.226.33.205', '213', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('337', '182.131.12.12', '266', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM-N9009 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('338', '112.64.235.246', '266', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('339', '111.40.2.115', '267', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('340', '219.133.40.13', '268', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('341', '112.64.235.251', '268', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('342', '101.226.68.141', '271', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 801e Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('343', '180.153.206.26', '271', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('344', '222.88.66.29', '271', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 801e Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('345', '222.88.66.29', '271', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('346', '222.88.66.29', '273', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HM 1SW Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('347', '118.113.217.222', '37', '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.3000 Chrome/30.0.1599.101 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('348', '180.153.212.13', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('349', '117.136.11.132', '124', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('350', '101.226.125.122', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; C2 Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('351', '101.226.33.206', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('352', '180.153.206.17', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('353', '183.195.232.37', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; C2 Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('354', '180.153.206.13', '298', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('355', '180.153.214.152', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('356', '180.170.233.167', '314', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('357', '123.151.42.57', '294', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X3t Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.53_r1166628.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('358', '180.153.211.190', '294', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('359', '101.226.66.191', '294', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('360', '112.64.235.246', '294', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('361', '101.226.68.217', '294', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+');
INSERT INTO `ecs_ip_log` VALUES ('362', '116.21.210.166', '324', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('363', '115.214.143.136', '325', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; Lenovo A936 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.4.2.585 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('364', '163.177.82.14', '331', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('365', '219.133.40.13', '331', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('366', '101.226.66.178', '331', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('367', '112.64.235.245', '331', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('368', '61.151.218.118', '331', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('369', '101.226.61.184', '354', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; NX503A Build/LMY48B) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('370', '180.153.206.33', '354', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('371', '112.231.125.118', '354', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; NX503A Build/LMY48B) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('372', '180.153.214.198', '354', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('373', '119.115.82.100', '357', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('374', '119.115.82.100', '357', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('375', '101.226.61.186', '358', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('376', '112.65.193.15', '358', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('377', '112.64.235.250', '358', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('378', '183.195.232.17', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('379', '180.153.201.15', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('380', '101.226.125.109', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('381', '101.226.33.201', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('382', '113.132.21.86', '361', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('383', '118.113.217.248', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.5.1.597 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('384', '14.17.37.161', '362', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI B199 Build/HuaweiB199) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('385', '163.177.69.107', '362', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI B199 Build/HuaweiB199) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('386', '101.226.65.104', '362', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('387', '182.131.10.30', '366', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; X9180 Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('388', '116.238.183.52', '351', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('389', '123.151.42.50', '364', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('390', '223.104.20.75', '364', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('391', '61.130.246.71', '369', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; 2014821 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.0.52_r1162382.561 NetType/ctwap Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('392', '101.226.65.105', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('393', '220.181.132.220', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('394', '101.199.112.51', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('395', '101.199.108.52', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.3; zh-cn; M032 Build/IML74K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('396', '111.10.225.165', '372', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_5 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11B601 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('397', '110.88.132.23', '373', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('398', '180.153.161.55', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('399', '180.153.214.178', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('400', '101.226.65.104', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('401', '39.190.57.137', '374', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8675 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('402', '175.155.112.40', '376', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 5891Q Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('403', '180.153.214.189', '376', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('404', '112.64.235.252', '376', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('405', '175.155.112.40', '376', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 5891Q Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('406', '123.166.20.34', '378', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('407', '101.226.125.109', '379', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-I8552 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('408', '180.153.163.206', '379', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('409', '61.130.246.76', '369', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; 2014821 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.0.52_r1162382.561 NetType/ctwap Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('410', '180.153.206.37', '369', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('411', '182.140.184.85', '371', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL10 Build/Che1-CL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('412', '101.226.89.116', '371', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('413', '183.60.52.5', '229', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; SM-G9200 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025439 Mobile Safari/533.1 MicroMessenger/6.1.0.75_r1101790.543 NetType/cmnet');
INSERT INTO `ecs_ip_log` VALUES ('414', '180.153.214.176', '229', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('415', '182.131.12.11', '380', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 9190L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('416', '180.153.206.36', '380', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('417', '210.22.52.85', '31', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('418', '222.90.196.165', '361', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('419', '222.90.196.165', '361', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('420', '223.95.92.46', '382', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('421', '42.236.167.252', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SCH-I959 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('422', '101.226.89.14', '298', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SCH-I959 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('423', '113.143.205.64', '361', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('424', '182.140.184.85', '390', '0', 'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('425', '112.64.235.89', '390', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('426', '101.226.125.119', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('427', '180.153.206.26', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('428', '101.226.33.216', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('429', '140.207.55.80', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('430', '101.226.89.121', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('431', '123.151.42.50', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('432', '180.153.214.152', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('433', '180.153.206.26', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('434', '112.64.235.249', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('435', '180.153.205.254', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('436', '180.153.214.197', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('437', '112.65.193.13', '395', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('438', '42.88.67.184', '398', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('439', '171.214.151.171', '37', '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.6.2000 Chrome/30.0.1599.101 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('440', '101.226.66.178', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('441', '101.226.125.118', '384', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('442', '14.17.37.144', '394', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('443', '180.153.206.25', '394', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('444', '123.151.42.46', '401', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('445', '1.85.32.130', '401', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('446', '121.227.18.67', '397', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('447', '180.153.163.189', '401', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('448', '113.108.137.234', '381', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('449', '182.131.10.30', '408', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-T10 Build/HuaweiH30-T10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('450', '180.153.201.15', '408', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('451', '182.131.10.29', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('452', '101.226.33.226', '39', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('453', '180.153.214.176', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('454', '14.17.37.43', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('455', '111.73.49.13', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.8 Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('456', '112.64.235.249', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('457', '101.226.65.106', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('458', '180.153.214.200', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('459', '163.177.82.14', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('460', '112.64.235.253', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('461', '180.153.205.252', '47', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('462', '14.17.37.162', '413', '0', 'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; HUAWEI GRA-TL00 Build/HUAWEIGRA-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('463', '180.153.212.13', '413', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('464', '180.153.214.176', '413', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('465', '101.226.33.220', '413', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('466', '14.17.37.162', '413', '0', 'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; HUAWEI GRA-TL00 Build/HUAWEIGRA-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('467', '113.47.27.174', '415', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('468', '113.44.166.183', '415', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('469', '180.153.206.22', '394', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('470', '1.90.144.131', '417', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('471', '123.151.42.52', '417', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8675 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('472', '112.64.235.246', '417', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('473', '101.226.102.97', '417', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('474', '123.151.42.46', '419', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2S Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('475', '121.29.242.217', '419', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2S Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('476', '180.153.206.35', '419', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('477', '113.200.156.211', '421', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('478', '101.226.102.237', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; TCL P301M Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('479', '180.153.161.55', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('480', '180.153.206.21', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('481', '101.226.61.189', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('482', '101.226.33.206', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('483', '101.226.66.175', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('484', '218.19.126.182', '324', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('485', '182.140.184.85', '426', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; SCH-R530U Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('486', '220.181.132.220', '426', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('487', '220.181.132.196', '426', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('488', '101.199.108.56', '426', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('489', '101.226.33.228', '426', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('490', '123.151.42.47', '427', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-TL10 Build/HuaweiPE-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('491', '101.226.89.119', '427', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('492', '101.226.125.115', '272', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HM 1SW Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('493', '180.153.214.198', '272', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('494', '183.61.51.191', '394', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('495', '14.17.37.69', '394', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('496', '123.151.42.48', '403', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('497', '61.51.102.144', '403', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('498', '115.206.240.135', '434', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('499', '101.226.61.186', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('500', '117.136.46.29', '435', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.3 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('501', '61.166.243.148', '436', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('502', '101.70.122.219', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('503', '114.252.88.234', '439', '1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('504', '183.60.52.227', '441', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 802t 16GB Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.49_r8d971a2.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('505', '180.153.214.190', '441', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('506', '101.226.69.112', '442', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI NOTE LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.49_r8d971a2.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('507', '123.151.12.154', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('508', '180.153.163.211', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('509', '123.151.176.198', '444', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; MediaPad X1 7.0 Build/HuaweiMediaPad) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('510', '101.226.33.224', '444', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('511', '123.151.153.35', '337', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('512', '101.226.51.227', '337', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('513', '180.153.214.191', '337', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('514', '119.147.146.194', '337', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95  Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('515', '182.131.10.29', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; CHM-TL00H Build/HonorCHM-TL00H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('516', '117.136.70.28', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; CHM-TL00H Build/HonorCHM-TL00H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('517', '180.153.212.13', '262', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('518', '101.226.125.114', '446', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI C8818 Build/HuaweiC8818) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('519', '101.226.33.238', '446', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('520', '123.160.200.89', '447', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('521', '112.17.241.55', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/2G');
INSERT INTO `ecs_ip_log` VALUES ('522', '223.198.105.224', '450', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-CL00 Build/HuaweiPE-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('523', '180.153.205.254', '450', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('524', '113.63.52.97', '452', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('525', '182.140.184.88', '453', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('526', '101.226.33.208', '453', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('527', '101.226.125.108', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('528', '101.226.102.97', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('529', '101.226.125.108', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('530', '112.64.235.251', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('531', '223.104.5.207', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('532', '180.153.163.187', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('533', '112.64.235.249', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462');
INSERT INTO `ecs_ip_log` VALUES ('534', '180.153.205.253', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('535', '180.153.214.200', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('536', '123.151.139.156', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Nexus 7 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('537', '101.226.33.227', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('538', '119.147.146.189', '62', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95  Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('539', '220.181.132.220', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('540', '101.199.112.51', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('541', '101.199.108.51', '62', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('542', '101.199.108.59', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('543', '101.199.112.51', '62', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('544', '113.44.146.208', '472', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7100 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('545', '220.181.132.220', '472', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('546', '101.199.108.58', '472', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('547', '101.199.108.118', '472', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('548', '14.17.37.143', '482', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('549', '101.226.89.115', '482', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('550', '182.131.12.12', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; LT26i Build/6.1.A.0.452) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('551', '112.65.193.15', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('552', '180.153.206.33', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('553', '124.161.23.61', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; LT26i Build/6.1.A.0.452) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('554', '14.17.37.145', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L01 Build/HDH60-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('555', '101.226.33.201', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('556', '101.226.33.221', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('557', '101.226.33.216', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('558', '101.226.33.240', '163', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('559', '221.4.200.18', '489', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2C Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('560', '219.133.40.13', '489', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2C Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('561', '113.108.11.50', '487', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('562', '14.17.37.43', '487', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('563', '180.153.201.214', '487', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('564', '119.147.3.188', '487', '0', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)');
INSERT INTO `ecs_ip_log` VALUES ('565', '61.151.186.144', '487', '0', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('566', '180.140.145.100', '487', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `ecs_ip_log` VALUES ('567', '101.226.33.238', '489', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('568', '222.184.137.18', '435', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('569', '182.140.184.85', '492', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('570', '180.153.214.178', '492', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('571', '101.226.125.108', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('572', '180.153.201.15', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('573', '118.182.43.121', '494', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('574', '101.226.125.108', '457', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('575', '101.71.215.101', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('576', '123.158.52.249', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('577', '101.226.125.19', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-N9109W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('578', '101.226.89.122', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('579', '101.226.33.240', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('580', '180.153.206.23', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('581', '120.209.36.85', '496', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 MicroMessenger/6.5.2.501 NetType/WIFI WindowsWechat');
INSERT INTO `ecs_ip_log` VALUES ('582', '112.65.193.14', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('583', '101.226.103.63', '496', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML; like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('584', '180.153.206.26', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('585', '120.209.36.85', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-N9109W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('586', '180.153.163.189', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('587', '101.226.93.234', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462');
INSERT INTO `ecs_ip_log` VALUES ('588', '112.64.235.251', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('589', '110.81.237.6', '498', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2S Build/JRO03L) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.51_r733746.462 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('590', '14.17.37.69', '498', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2S Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('591', '14.217.165.160', '500', '0', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z00ADA Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('592', '180.153.206.19', '498', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('593', '123.151.42.46', '501', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad 8675-W00 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('594', '101.226.33.227', '501', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('595', '112.64.235.247', '501', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('596', '123.158.53.134', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('597', '101.226.125.109', '437', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-G5309W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('598', '180.153.214.176', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('599', '182.131.10.29', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('600', '120.135.24.94', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('601', '120.135.24.94', '503', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 MicroMessenger/6.5.2.501 NetType/WIFI WindowsWechat');
INSERT INTO `ecs_ip_log` VALUES ('602', '120.135.24.94', '503', '0', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17 SE 2.X MetaSr 1.0');
INSERT INTO `ecs_ip_log` VALUES ('603', '101.226.33.227', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('604', '112.64.235.251', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('605', '180.153.163.211', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('606', '223.104.9.12', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('607', '123.151.139.156', '503', '1', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1TD Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('608', '112.64.235.252', '503', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('609', '123.151.139.156', '504', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1TD Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('610', '112.64.235.252', '504', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('611', '125.39.210.27', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('612', '122.156.219.195', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('613', '123.151.64.143', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('614', '101.226.51.227', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('615', '123.151.38.94', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('616', '101.226.51.226', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('617', '42.103.114.115', '506', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/ctnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('618', '124.161.23.61', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('619', '101.226.102.97', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('620', '180.153.214.180', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('621', '124.161.23.61', '508', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('622', '180.153.214.178', '508', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('623', '101.226.33.216', '508', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('624', '116.7.150.84', '509', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('625', '14.17.37.145', '517', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('626', '101.229.97.17', '523', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('627', '58.52.50.72', '524', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A344 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('628', '101.226.125.108', '525', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('629', '122.194.51.182', '525', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('630', '183.195.232.39', '525', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('631', '101.226.89.116', '525', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('632', '182.131.12.12', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; LT26i Build/6.2.B.1.96) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('633', '101.226.33.216', '485', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('634', '106.91.250.182', '526', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13A344 Safari/601.1');
INSERT INTO `ecs_ip_log` VALUES ('635', '106.91.250.182', '527', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A344 MicroMessenger/6.2.6 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('636', '182.200.133.22', '530', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('637', '123.151.64.143', '530', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('638', '180.153.214.180', '530', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('639', '182.200.133.22', '530', '1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.0.1 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('640', '113.63.42.59', '452', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('641', '123.151.64.142', '534', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; LTE 4G Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('642', '101.226.89.120', '534', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('643', '114.246.156.196', '535', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('644', '101.226.61.142', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('645', '112.64.235.247', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('646', '218.2.38.173', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('647', '36.45.35.78', '537', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 V1_AND_SQ_5.5.0_228_YYB_D QQ/5.5.0.2415 NetType/4G WebP/0.3.0');
INSERT INTO `ecs_ip_log` VALUES ('648', '180.153.214.152', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('649', '180.153.214.180', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('650', '180.153.206.33', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('651', '101.226.114.166', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI SC-CL00 Build/HUAWEISC-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/ctwap Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('652', '101.226.114.166', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI SC-CL00 Build/HUAWEISC-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('653', '180.153.201.217', '536', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('654', '14.17.37.43', '487', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('655', '101.226.125.109', '546', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8690 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_rbb77fd6.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('656', '180.153.206.36', '546', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('657', '101.226.33.219', '546', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('658', '112.64.235.246', '546', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('659', '101.226.125.120', '547', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; vivo X5S L Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('660', '101.226.51.228', '547', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('661', '180.153.206.25', '547', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('662', '218.108.128.159', '548', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; 4G Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('663', '220.181.132.220', '548', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('664', '101.199.108.51', '548', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('665', '220.181.132.198', '548', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('666', '101.47.18.107', '437', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.2.7 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('667', '101.226.114.166', '551', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; R7Plusm Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('668', '180.153.206.16', '551', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('669', '223.67.190.137', '551', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; R7Plusm Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('670', '180.153.206.23', '551', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('671', '14.17.37.143', '554', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('672', '183.12.157.197', '554', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('673', '183.12.157.197', '554', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('674', '14.17.37.143', '554', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('675', '192.168.1.88', '37', '0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0');
INSERT INTO `ecs_ip_log` VALUES ('676', '183.61.126.47', '559', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('677', '182.140.184.88', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('678', '101.226.33.218', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('679', '171.214.147.211', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('680', '118.113.32.192', '566', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.2.7 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('681', '14.17.34.237', '567', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('682', '219.133.40.13', '567', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('683', '14.211.53.115', '567', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('684', '116.224.62.88', '570', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H321 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('685', '101.226.61.186', '570', '1', 'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('686', '180.153.201.215', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('687', '220.181.132.220', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('688', '101.199.108.120', '570', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('689', '101.199.108.58', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('690', '101.199.108.51', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('691', '101.106.141.228', '571', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('692', '101.226.61.186', '496', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('693', '101.226.33.223', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('694', '220.181.132.220', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('695', '101.199.108.58', '496', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('696', '101.199.108.119', '496', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('697', '123.151.42.57', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-I9082i Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/cmnet');
INSERT INTO `ecs_ip_log` VALUES ('698', '180.153.206.16', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('699', '101.226.93.234', '570', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462');
INSERT INTO `ecs_ip_log` VALUES ('700', '101.226.125.122', '570', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; SM-N9200 Build/LMY47X) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('701', '219.133.40.15', '570', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('702', '123.151.12.154', '573', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; LA6-L Build/YUSUNLA6-L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('703', '101.226.33.237', '573', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('704', '117.172.26.212', '573', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; LA6-L Build/YUSUNLA6-L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('705', '140.207.54.180', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('706', '101.226.33.205', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('707', '112.64.235.86', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('708', '140.207.54.180', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('709', '219.156.100.91', '575', '0', 'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('710', '219.156.100.91', '576', '0', 'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('711', '101.226.61.190', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('712', '112.65.193.13', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('713', '219.156.100.91', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('714', '101.226.61.190', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('715', '180.153.201.214', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('716', '101.226.66.178', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('717', '101.226.33.228', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('718', '101.226.65.102', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('719', '101.226.33.224', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('720', '180.153.201.212', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462');
INSERT INTO `ecs_ip_log` VALUES ('721', '180.153.214.192', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('722', '140.207.54.187', '575', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('723', '140.207.54.187', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('724', '180.153.163.206', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('725', '219.133.40.15', '577', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-A7000 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('726', '171.15.158.237', '575', '0', 'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('727', '221.178.200.211', '579', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; OPPO R7 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('728', '1.193.55.253', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('729', '180.153.206.36', '579', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('730', '117.136.45.151', '579', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL00 Build/HuaweiMT7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('731', '180.110.66.200', '579', '0', 'Mozilla/5.0 (Linux; Android 4.4.4; OPPO R7 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('732', '180.153.81.159', '579', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; OPPO R7 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('733', '153.119.237.139', '582', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.5 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('734', '101.226.125.19', '583', '1', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('735', '101.226.33.206', '583', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('736', '101.226.65.106', '583', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('737', '180.153.163.186', '583', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('738', '101.226.33.219', '583', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('739', '183.204.242.19', '583', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('740', '101.226.33.204', '574', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('741', '101.81.49.202', '584', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('742', '182.131.12.36', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('743', '175.9.150.167', '585', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('744', '123.151.139.156', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('745', '180.153.214.192', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('746', '101.226.66.178', '249', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('747', '59.108.32.210', '586', '0', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('748', '182.131.12.36', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('749', '182.131.12.36', '508', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('750', '14.17.37.69', '588', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('751', '219.133.40.14', '588', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('752', '58.23.3.19', '588', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('753', '182.131.12.36', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctlte Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('754', '113.108.11.52', '567', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('755', '14.211.54.81', '567', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('756', '171.214.148.10', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('757', '101.226.125.19', '594', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('758', '101.226.65.104', '594', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('759', '101.226.103.62', '594', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML; like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI');
INSERT INTO `ecs_ip_log` VALUES ('760', '180.153.201.215', '594', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('761', '123.151.139.156', '594', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('762', '112.22.234.103', '594', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H321 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('763', '182.131.12.11', '596', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('764', '175.155.112.40', '596', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/3gnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('765', '122.235.199.126', '598', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('766', '101.226.61.190', '599', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('767', '180.153.206.25', '599', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('768', '115.192.170.95', '599', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('769', '61.141.165.55', '600', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('770', '101.130.60.92', '602', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('771', '123.151.64.143', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('772', '101.226.102.97', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('773', '180.153.163.209', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('774', '120.193.236.99', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('775', '101.226.66.193', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('776', '182.131.12.12', '37', '1', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('777', '171.214.145.167', '591', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('778', '117.172.27.137', '566', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('779', '180.153.211.172', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('780', '120.193.236.71', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('781', '101.226.51.228', '604', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('782', '219.133.40.16', '606', '0', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; HUAWEI C8813Q Build/HuaweiC8813Q) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('783', '163.177.69.106', '33', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; 2014501 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('784', '183.16.9.168', '609', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('785', '60.222.128.209', '611', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022_NewBee_V4.1) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('786', '171.214.146.249', '37', '0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0');
INSERT INTO `ecs_ip_log` VALUES ('787', '180.153.206.36', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('788', '116.231.127.218', '616', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25');
INSERT INTO `ecs_ip_log` VALUES ('789', '116.231.127.218', '617', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25');
INSERT INTO `ecs_ip_log` VALUES ('790', '125.45.150.70', '618', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('791', '101.226.89.117', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('792', '183.184.105.90', '620', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI NOTE LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('793', '171.214.146.249', '37', '0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0');
INSERT INTO `ecs_ip_log` VALUES ('794', '101.226.33.226', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('795', '101.226.125.14', '423', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('796', '60.180.30.103', '625', '0', 'HUAWEI_MT2-L01_TD/5.0 Android/4.4.2 (Linux; U; Android 4.4.2; zh-cn) Release/03.20.2013 Browser/WAP2.0 (AppleWebKit/534.30) Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('797', '180.153.206.21', '625', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('798', '101.226.125.117', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('799', '101.226.125.117', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('800', '101.226.125.117', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctnet Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('801', '101.226.89.117', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('802', '113.242.190.17', '629', '0', 'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Lenovo A788t Build/S104) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('803', '101.226.33.228', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('804', '101.226.125.117', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('805', '180.153.206.25', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('806', '180.153.205.253', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('807', '183.195.232.37', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('808', '182.201.11.3', '634', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('809', '183.61.51.208', '635', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HTC M8St Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('810', '14.153.251.83', '638', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('811', '171.214.148.7', '37', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.8.0.654 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('812', '101.226.61.142', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('813', '180.153.206.23', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('814', '101.226.125.116', '643', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; SM-G9280 Build/LMY47X) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('815', '101.226.65.102', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('816', '220.181.132.220', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('817', '101.199.108.53', '643', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('818', '101.199.112.53', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('819', '183.57.152.28', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('820', '112.97.63.190', '638', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.3.6 NetType/3G+ Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('821', '113.86.77.150', '648', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('822', '113.86.77.150', '649', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.154 Safari/537.36 LBBROWSER');
INSERT INTO `ecs_ip_log` VALUES ('823', '113.86.77.150', '649', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X; zh-CN) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/12F70 UCBrowser/10.7.11.672 Mobile');
INSERT INTO `ecs_ip_log` VALUES ('824', '101.226.33.199', '648', '0', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)');
INSERT INTO `ecs_ip_log` VALUES ('825', '113.132.75.140', '361', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('826', '14.17.37.145', '638', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Lenovo S860e Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('827', '112.228.167.53', '653', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; Redmi Note 2 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('828', '101.226.61.184', '653', '0', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; Redmi Note 2 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('829', '180.153.163.187', '653', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('830', '180.153.163.191', '653', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('831', '101.226.61.142', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('832', '220.181.132.220', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('833', '101.199.108.118', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('834', '101.199.108.53', '626', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('835', '101.199.112.50', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('836', '101.199.112.51', '626', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('837', '112.64.235.90', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('838', '180.153.214.197', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('839', '180.153.161.55', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('840', '220.181.132.198', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('841', '101.199.112.54', '643', '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4');
INSERT INTO `ecs_ip_log` VALUES ('842', '61.151.218.118', '643', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('843', '111.161.57.31', '651', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('844', '112.64.235.90', '651', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('845', '101.226.33.204', '651', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('846', '180.153.201.214', '651', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('847', '14.17.37.43', '654', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('848', '112.95.241.183', '654', '0', 'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('849', '112.64.235.86', '654', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('850', '180.153.201.212', '654', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('851', '123.151.12.154', '401', '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('852', '101.226.125.117', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('853', '180.153.201.216', '626', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('854', '101.226.125.117', '627', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN');
INSERT INTO `ecs_ip_log` VALUES ('855', '192.168.1.88', '5', '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0');
INSERT INTO `ecs_ip_log` VALUES ('856', '192.168.1.5', '5', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.8.5.689 U3/0.8.0 Mobile Safari/534.30');
INSERT INTO `ecs_ip_log` VALUES ('857', '192.168.1.2', '5', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; CHM-CL00 Build/CHM-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('858', '182.131.10.29', '5', '0', 'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; CHM-CL00 Build/CHM-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36');
INSERT INTO `ecs_ip_log` VALUES ('859', '124.156.73.88', '11', '0', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36');

-- ----------------------------
-- Table structure for `ecs_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_keywords
-- ----------------------------
INSERT INTO `ecs_keywords` VALUES ('2015-11-20', 'ecshop', '金毛', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-11-20', 'ecshop', '边境', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-11-20', 'ecshop', '100g', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-11-20', 'ecshop', '800g', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-11-20', 'ecshop', '小狗', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-11-28', 'ecshop', '专用粮', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-12-01', 'ecshop', '遛狗绳', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-12-01', 'ecshop', '宠物狗粮', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-12-02', 'ecshop', '果', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-12-03', 'ecshop', '果', '4');
INSERT INTO `ecs_keywords` VALUES ('2016-03-11', 'ecshop', '遛狗绳', '1');

-- ----------------------------
-- Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_link_goods
-- ----------------------------
INSERT INTO `ecs_link_goods` VALUES ('2', '1', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('1', '2', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('4', '1', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('1', '4', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('6', '1', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('1', '6', '1', '1');

-- ----------------------------
-- Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_mail_templates
-- ----------------------------
INSERT INTO `ecs_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `ecs_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_nav
-- ----------------------------
INSERT INTO `ecs_nav` VALUES ('1', '', '0', '团购商品', '1', '3', '0', 'group_buy.php', 'middle');
INSERT INTO `ecs_nav` VALUES ('2', '', '0', '积分兑换', '1', '4', '0', 'exchange.php', 'middle');
INSERT INTO `ecs_nav` VALUES ('3', 'c', '2', '生鲜食品', '1', '1', '0', 'category.php?id=2', 'middle');
INSERT INTO `ecs_nav` VALUES ('4', 'c', '1', '酒水饮料', '1', '2', '0', 'category.php?id=1', 'middle');
INSERT INTO `ecs_nav` VALUES ('5', '', '0', '免责条款', '1', '1', '0', 'article.php?id=1', 'bottom');
INSERT INTO `ecs_nav` VALUES ('6', '', '0', '隐私保护', '1', '2', '0', 'article.php?id=2', 'bottom');
INSERT INTO `ecs_nav` VALUES ('7', '', '0', '咨询热点', '1', '3', '0', 'article.php?id=3', 'bottom');
INSERT INTO `ecs_nav` VALUES ('8', '', '0', '联系我们', '1', '4', '0', 'article.php?id=4', 'bottom');
INSERT INTO `ecs_nav` VALUES ('9', '', '0', '公司简介', '1', '5', '0', 'article.php?id=5', 'bottom');
INSERT INTO `ecs_nav` VALUES ('10', '', '0', '批发方案', '1', '6', '0', 'wholesale.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('11', '', '0', '配送方式', '1', '7', '0', 'myship.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('12', null, '0', '循环易贷', '1', '4', '0', 'user.php?act=daikuan', 'middle');
INSERT INTO `ecs_nav` VALUES ('13', null, '0', '我要还款', '1', '4', '0', 'borrow.php?act=repay', 'middle');

-- ----------------------------
-- Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_action
-- ----------------------------
INSERT INTO `ecs_order_action` VALUES ('1', '11', 'buyer', '2', '0', '0', '0', '用户取消', '1447996110');
INSERT INTO `ecs_order_action` VALUES ('2', '19', 'buyer', '2', '0', '0', '0', '用户取消', '1447996115');
INSERT INTO `ecs_order_action` VALUES ('3', '23', 'buyer', '2', '0', '0', '0', '用户取消', '1448162926');
INSERT INTO `ecs_order_action` VALUES ('4', '25', 'buyer', '2', '0', '0', '0', '用户取消', '1448163700');
INSERT INTO `ecs_order_action` VALUES ('5', '24', 'buyer', '2', '0', '0', '0', '用户取消', '1448163888');
INSERT INTO `ecs_order_action` VALUES ('6', '27', '买家', '1', '0', '2', '0', '', '1448164384');
INSERT INTO `ecs_order_action` VALUES ('7', '27', 'sclzz', '5', '5', '2', '0', '', '1448164506');
INSERT INTO `ecs_order_action` VALUES ('8', '27', 'sclzz', '1', '1', '2', '1', '', '1448164517');
INSERT INTO `ecs_order_action` VALUES ('9', '26', 'sclzz', '1', '0', '2', '0', '111', '1448164584');
INSERT INTO `ecs_order_action` VALUES ('10', '26', 'sclzz', '1', '3', '2', '0', '', '1448164588');
INSERT INTO `ecs_order_action` VALUES ('11', '27', '买家', '5', '2', '2', '0', '', '1448164652');
INSERT INTO `ecs_order_action` VALUES ('12', '26', 'sclzz', '5', '5', '2', '0', '', '1448165909');
INSERT INTO `ecs_order_action` VALUES ('13', '26', 'sclzz', '1', '1', '2', '1', '', '1448165915');
INSERT INTO `ecs_order_action` VALUES ('14', '26', '买家', '5', '2', '2', '0', '', '1448165988');
INSERT INTO `ecs_order_action` VALUES ('15', '28', '买家', '1', '0', '2', '0', '', '1448166241');
INSERT INTO `ecs_order_action` VALUES ('16', '29', '买家', '1', '0', '2', '0', '', '1448166384');
INSERT INTO `ecs_order_action` VALUES ('17', '30', '买家', '1', '0', '2', '0', '', '1448166652');
INSERT INTO `ecs_order_action` VALUES ('18', '31', '买家', '1', '0', '2', '0', '', '1448166818');
INSERT INTO `ecs_order_action` VALUES ('19', '31', 'sclzz', '5', '5', '2', '0', '', '1448166999');
INSERT INTO `ecs_order_action` VALUES ('20', '31', 'sclzz', '1', '1', '2', '1', '', '1448167013');
INSERT INTO `ecs_order_action` VALUES ('21', '31', '买家', '5', '2', '2', '0', '', '1448167030');
INSERT INTO `ecs_order_action` VALUES ('22', '33', '买家', '1', '0', '2', '0', '', '1448167608');
INSERT INTO `ecs_order_action` VALUES ('23', '34', '买家', '1', '0', '2', '0', '', '1448168010');
INSERT INTO `ecs_order_action` VALUES ('24', '35', '买家', '1', '0', '2', '0', '', '1448168276');
INSERT INTO `ecs_order_action` VALUES ('25', '36', '买家', '1', '0', '2', '0', '', '1448169770');
INSERT INTO `ecs_order_action` VALUES ('26', '37', '买家', '1', '0', '2', '0', '', '1448170362');
INSERT INTO `ecs_order_action` VALUES ('27', '51', '买家', '1', '0', '2', '0', '', '1448172749');
INSERT INTO `ecs_order_action` VALUES ('28', '52', '买家', '1', '0', '2', '0', '', '1448173068');
INSERT INTO `ecs_order_action` VALUES ('29', '53', '买家', '1', '0', '2', '0', '', '1448173153');
INSERT INTO `ecs_order_action` VALUES ('30', '54', '买家', '1', '0', '2', '0', '', '1448173268');
INSERT INTO `ecs_order_action` VALUES ('31', '55', '买家', '1', '0', '2', '0', '', '1448173324');
INSERT INTO `ecs_order_action` VALUES ('32', '56', '买家', '1', '0', '2', '0', '', '1448173375');
INSERT INTO `ecs_order_action` VALUES ('33', '57', '买家', '1', '0', '2', '0', '', '1448173457');
INSERT INTO `ecs_order_action` VALUES ('34', '58', '买家', '1', '0', '2', '0', '', '1448173517');
INSERT INTO `ecs_order_action` VALUES ('35', '59', '买家', '1', '0', '2', '0', '', '1448173586');
INSERT INTO `ecs_order_action` VALUES ('36', '60', '买家', '1', '0', '2', '0', '', '1448173656');
INSERT INTO `ecs_order_action` VALUES ('37', '61', '买家', '1', '0', '2', '0', '', '1448173702');
INSERT INTO `ecs_order_action` VALUES ('38', '62', '买家', '1', '0', '2', '0', '', '1448173762');
INSERT INTO `ecs_order_action` VALUES ('39', '63', '买家', '1', '0', '2', '0', '', '1448173911');
INSERT INTO `ecs_order_action` VALUES ('40', '64', '买家', '1', '0', '2', '0', '', '1448173969');
INSERT INTO `ecs_order_action` VALUES ('41', '65', '买家', '1', '0', '2', '0', '', '1448174014');
INSERT INTO `ecs_order_action` VALUES ('42', '66', '买家', '1', '0', '2', '0', '', '1448174120');
INSERT INTO `ecs_order_action` VALUES ('43', '67', '买家', '1', '0', '2', '0', '', '1448174205');
INSERT INTO `ecs_order_action` VALUES ('44', '68', '买家', '1', '0', '2', '0', '', '1448174257');
INSERT INTO `ecs_order_action` VALUES ('45', '69', '买家', '1', '0', '2', '0', '', '1448174406');
INSERT INTO `ecs_order_action` VALUES ('46', '70', '买家', '1', '0', '2', '0', '', '1448174744');
INSERT INTO `ecs_order_action` VALUES ('47', '71', 'buyer', '2', '0', '0', '0', '用户取消', '1448232116');
INSERT INTO `ecs_order_action` VALUES ('48', '73', 'sclzz', '1', '3', '0', '0', '', '1448232764');
INSERT INTO `ecs_order_action` VALUES ('49', '73', 'sclzz', '5', '5', '0', '0', '', '1448232926');
INSERT INTO `ecs_order_action` VALUES ('50', '73', 'sclzz', '1', '1', '0', '1', '', '1448232942');
INSERT INTO `ecs_order_action` VALUES ('51', '73', '买家', '5', '2', '0', '0', '', '1448233314');
INSERT INTO `ecs_order_action` VALUES ('52', '82', '买家', '1', '0', '2', '0', '', '1448237596');
INSERT INTO `ecs_order_action` VALUES ('53', '83', '买家', '1', '0', '2', '0', '', '1448237675');
INSERT INTO `ecs_order_action` VALUES ('54', '84', '买家', '1', '0', '2', '0', '', '1448238879');
INSERT INTO `ecs_order_action` VALUES ('55', '85', '买家', '1', '0', '2', '0', '', '1448239080');
INSERT INTO `ecs_order_action` VALUES ('56', '86', '买家', '1', '0', '2', '0', '', '1448239341');
INSERT INTO `ecs_order_action` VALUES ('57', '87', '买家', '1', '0', '2', '0', '', '1448239705');
INSERT INTO `ecs_order_action` VALUES ('58', '88', '买家', '1', '0', '2', '0', '', '1448239985');
INSERT INTO `ecs_order_action` VALUES ('59', '89', '买家', '1', '0', '2', '0', '', '1448240341');
INSERT INTO `ecs_order_action` VALUES ('60', '90', '买家', '1', '0', '2', '0', '', '1448240443');
INSERT INTO `ecs_order_action` VALUES ('61', '91', '买家', '1', '0', '2', '0', '', '1448241017');
INSERT INTO `ecs_order_action` VALUES ('62', '92', '买家', '1', '0', '2', '0', '', '1448241185');
INSERT INTO `ecs_order_action` VALUES ('63', '93', '买家', '1', '0', '2', '0', '', '1448241358');
INSERT INTO `ecs_order_action` VALUES ('64', '94', '买家', '1', '0', '2', '0', '', '1448241731');
INSERT INTO `ecs_order_action` VALUES ('65', '95', '买家', '1', '0', '2', '0', '', '1448241875');
INSERT INTO `ecs_order_action` VALUES ('66', '96', '买家', '1', '0', '2', '0', '', '1448242033');
INSERT INTO `ecs_order_action` VALUES ('67', '97', '买家', '1', '0', '2', '0', '', '1448242130');
INSERT INTO `ecs_order_action` VALUES ('68', '98', 'buyer', '2', '0', '0', '0', '用户取消', '1448242231');
INSERT INTO `ecs_order_action` VALUES ('69', '97', 'sclzz', '5', '5', '2', '0', '', '1448242314');
INSERT INTO `ecs_order_action` VALUES ('70', '97', 'sclzz', '1', '1', '2', '1', '', '1448242320');
INSERT INTO `ecs_order_action` VALUES ('71', '97', '买家', '5', '2', '2', '0', '', '1448242329');
INSERT INTO `ecs_order_action` VALUES ('72', '96', 'sclzz', '1', '0', '2', '0', '1111', '1448247381');
INSERT INTO `ecs_order_action` VALUES ('73', '96', 'sclzz', '5', '5', '2', '0', '', '1448247510');
INSERT INTO `ecs_order_action` VALUES ('74', '96', 'sclzz', '1', '1', '2', '1', '', '1448247519');
INSERT INTO `ecs_order_action` VALUES ('75', '95', 'sclzz', '1', '3', '2', '0', '', '1448250039');
INSERT INTO `ecs_order_action` VALUES ('76', '95', 'sclzz', '5', '5', '2', '0', '', '1448250050');
INSERT INTO `ecs_order_action` VALUES ('77', '95', 'sclzz', '1', '1', '2', '1', '', '1448250063');
INSERT INTO `ecs_order_action` VALUES ('78', '94', 'sclzz', '5', '5', '2', '0', '', '1448409424');
INSERT INTO `ecs_order_action` VALUES ('79', '94', 'sclzz', '1', '1', '2', '1', '', '1448409431');
INSERT INTO `ecs_order_action` VALUES ('80', '100', '买家', '1', '0', '2', '0', '', '1448409922');
INSERT INTO `ecs_order_action` VALUES ('81', '100', 'sclzz', '5', '5', '2', '0', '', '1448409967');
INSERT INTO `ecs_order_action` VALUES ('82', '100', 'sclzz', '1', '1', '2', '1', '', '1448409980');
INSERT INTO `ecs_order_action` VALUES ('83', '103', 'sclzz', '5', '5', '2', '0', '', '1449032516');
INSERT INTO `ecs_order_action` VALUES ('84', '103', 'sclzz', '1', '1', '2', '1', '', '1449032601');
INSERT INTO `ecs_order_action` VALUES ('85', '103', '买家', '5', '2', '2', '0', '', '1449032610');

-- ----------------------------
-- Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_goods
-- ----------------------------
INSERT INTO `ecs_order_goods` VALUES ('1', '1', '46', '泰迪贵宾训犬零食三明治400g', 'ECS000046', '0', '1', '38.40', '28.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('2', '2', '10', '边境狗粮专用粮10kg', 'ECS000010', '0', '1', '105.60', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('3', '3', '11', '泰迪金毛博美宠物零食鸡肉磨牙零食', 'ECS000011', '0', '1', '31.20', '26.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('4', '4', '10', '边境狗粮专用粮10kg', 'ECS000010', '0', '1', '105.60', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('5', '5', '48', '奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', 'ECS000048', '0', '1', '126.00', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('6', '6', '9', '麦顿狗粮金典天然粮10kg金毛萨摩德牧大型犬', 'ECS000009', '0', '1', '201.60', '168.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('7', '7', '47', '蓓味佳猫粮通用型三文鱼成猫猫粮', 'ECS000047', '0', '1', '156.00', '108.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('8', '8', '47', '蓓味佳猫粮通用型三文鱼成猫猫粮', 'ECS000047', '0', '1', '156.00', '108.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('9', '9', '9', '麦顿狗粮金典天然粮10kg金毛萨摩德牧大型犬', 'ECS000009', '0', '1', '201.60', '168.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('10', '10', '10', '边境狗粮专用粮10kg', 'ECS000010', '0', '1', '105.60', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('11', '11', '47', '蓓味佳猫粮通用型三文鱼成猫猫粮', 'ECS000047', '0', '1', '156.00', '108.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('12', '12', '48', '奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', 'ECS000048', '0', '1', '126.00', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('13', '13', '21', '鸡肉拧丝安心宠物零食鸡肉条泰迪鸡肉干磨牙400g', 'ECS000021', '0', '1', '55.19', '46.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('14', '14', '45', '狗狗肉类零食爱犬生活鸡胸肉整支特价', 'ECS000045', '0', '1', '31.20', '18.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('15', '15', '22', '爱犬生活水晶鸡肉切丝800g', 'ECS000022', '0', '1', '70.80', '59.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('16', '16', '28', '耐咬玩具球萨摩耶金毛宠物玩具', 'ECS000028', '0', '1', '31.20', '26.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('17', '17', '25', '边牧泰迪狗玩具训犬玩具', 'ECS000025', '0', '1', '14.39', '12.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('18', '18', '29', '誉丰优质宠物狗狗双节骨头纯棉线结绳玩具', 'ECS000029', '0', '1', '14.39', '12.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('19', '19', '22', '爱犬生活水晶鸡肉切丝800g', 'ECS000022', '0', '1', '70.80', '49.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('20', '20', '11', '泰迪金毛博美宠物零食鸡肉磨牙零食', 'ECS000011', '0', '1', '31.20', '0.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('21', '21', '48', '奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', 'ECS000048', '0', '1', '126.00', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('22', '22', '48', '奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', 'ECS000048', '0', '1', '126.00', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('23', '23', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('24', '24', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('25', '25', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('26', '26', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('27', '27', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('28', '28', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('29', '29', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('30', '30', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('31', '31', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('32', '32', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('33', '33', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('34', '34', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('35', '35', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('36', '36', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('37', '37', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('38', '38', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('39', '39', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('40', '40', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('41', '41', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('42', '42', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('43', '43', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('44', '44', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('45', '45', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('46', '46', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('47', '47', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('48', '48', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('49', '49', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('50', '50', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('51', '51', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('52', '52', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('53', '53', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('54', '54', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('55', '55', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('56', '56', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('57', '57', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('58', '58', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('59', '59', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('60', '60', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('61', '61', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('62', '62', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('63', '63', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('64', '64', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('65', '65', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('66', '66', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('67', '67', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('68', '68', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('69', '69', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('70', '70', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('71', '71', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('72', '72', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('73', '73', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('74', '74', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('75', '75', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('76', '76', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('77', '77', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('78', '78', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('79', '79', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('80', '80', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('81', '81', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('82', '82', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('83', '83', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('84', '84', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('85', '85', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('86', '86', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('87', '87', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('88', '88', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('89', '89', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('90', '90', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('91', '91', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('92', '92', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('93', '93', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('94', '94', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('95', '95', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('96', '96', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('97', '97', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('98', '98', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('99', '99', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('100', '100', '49', '1分钱支付测试商品', 'ECS000049', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('101', '101', '43', '豪华可拆洗狗窝泰迪小狗狗用品狗房子', 'ECS000043', '0', '1', '153.60', '99.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('102', '102', '48', '奶糕贵宾幼犬狗粮小型犬泰迪博美比熊专用', 'ECS000048', '0', '1', '126.00', '88.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('103', '103', '48', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', 'ECS000048', '0', '1', '126.00', '88.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('104', '104', '9', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', 'ECS000009', '0', '1', '201.60', '168.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('105', '105', '1', '新鲜水果甜蜜香脆单果约800克', 'ECS000000', '4', '1', '231.60', '156.00', '重量:500克 \n外观:红色 \n款式:时尚款 \n', '0', '1', '', '0', '0', '4,7,1');
INSERT INTO `ecs_order_goods` VALUES ('106', '106', '43', '休闲零食膨化食品焦糖/奶油/椒麻味', 'ECS000043', '0', '4', '153.60', '99.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('107', '106', '8', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', 'ECS000008', '0', '2', '150.00', '125.00', '', '0', '1', '', '0', '0', '');

-- ----------------------------
-- Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_info
-- ----------------------------
INSERT INTO `ecs_order_info` VALUES ('1', '2015112085285', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '1', '<font color=\"#FF0000\">支付宝</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', '28.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '28.00', '0', '本站', '1447963724', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('2', '2015112041200', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1447964980', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('3', '2015112022314', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '26.00', '0', '本站', '1447965841', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('4', '2015112015819', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1447965955', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('5', '2015112037081', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1447966023', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('6', '2015112051620', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '168.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '168.00', '0', '本站', '1447966219', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('7', '2015112066133', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '108.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '108.00', '0', '本站', '1447966465', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('8', '2015112072414', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '108.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '108.00', '0', '本站', '1447966659', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('9', '2015112074263', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '168.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '168.00', '0', '本站', '1447967332', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('10', '2015112089188', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1447967572', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('11', '2015112099984', '1', '2', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '<font color=\"#FF0000\">支付宝</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', '108.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '108.00', '0', '本站', '1447967589', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('12', '2015112020534', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '<font color=\"#FF0000\">支付宝</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1447967706', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('13', '2015112026880', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '46.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '46.00', '0', '本站', '1447978799', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('14', '2015112022535', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '18.00', '0', '本站', '1447978880', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('15', '2015112058012', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '59.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '59.00', '0', '本站', '1447979023', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('16', '2015112090113', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '26.00', '0', '本站', '1447979384', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('17', '2015112025421', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '12.00', '0', '本站', '1447979965', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('18', '2015112031891', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '12.00', '0', '本站', '1447980156', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('19', '2015112019600', '1', '2', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '49.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '49.00', '0', '本站', '1447996025', '0', '0', '0', '0', '0', '0', '', 'group_buy', '4', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('20', '2015112005939', '1', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5500', '0.00', '0.00', '0.00', '0', '本站', '1447996080', '1447996080', '1447996080', '0', '0', '0', '0', '', 'exchange_goods', '11', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('21', '2015112128757', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1448049845', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('22', '2015112168860', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13688889999', '', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', '本站', '1448049898', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('23', '2015112266886', '3', '2', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448162859', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('24', '2015112265750', '3', '2', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448163035', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('25', '2015112236215', '3', '2', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448163394', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('26', '2015112265460', '3', '5', '2', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448164228', '1448164584', '1448164584', '1448165915', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('27', '2015112275252', '3', '5', '2', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448164300', '1448164384', '1448164384', '1448164517', '0', '0', '0', '805355128260', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('28', '2015112247436', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448166201', '1448166241', '1448166241', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('29', '2015112267285', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448166341', '1448166384', '1448166384', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('30', '2015112246214', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448166611', '1448166652', '1448166652', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('31', '2015112225818', '3', '5', '2', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448166779', '1448166818', '1448166818', '1448167013', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('32', '2015112256203', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '2', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0', '0.00', '0.00', '0.00', '0', '本站', '1448167259', '1448167259', '1448167259', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('33', '2015112265808', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448167561', '1448167608', '1448167608', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('34', '2015112228948', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448167972', '1448168010', '1448168010', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('35', '2015112250901', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448168236', '1448168276', '1448168276', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('36', '2015112213815', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448169729', '1448169770', '1448169770', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('37', '2015112207463', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448170308', '1448170362', '1448170362', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('38', '2015112258790', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '2', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0', '0.00', '0.00', '0.00', '0', '本站', '1448170580', '1448170580', '1448170580', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('39', '2015112223746', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448170748', '1448170784', '1448170784', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('40', '2015112293103', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448170970', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('41', '2015112229380', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171292', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('42', '2015112226126', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171386', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('43', '2015112229203', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171458', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('44', '2015112290487', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171542', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('45', '2015112250727', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171618', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('46', '2015112277438', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171755', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('47', '2015112280905', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448171948', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('48', '2015112240903', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448172110', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('49', '2015112262290', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448172474', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('50', '2015112296112', '3', '0', '0', '0', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448172509', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('51', '2015112275525', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448172727', '1448172749', '1448172749', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('52', '2015112220601', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173047', '1448173068', '1448173068', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('53', '2015112240115', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173132', '1448173153', '1448173153', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('54', '2015112295467', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173244', '1448173268', '1448173268', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('55', '2015112280698', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173302', '1448173324', '1448173324', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('56', '2015112227188', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173354', '1448173375', '1448173375', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('57', '2015112274551', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173435', '1448173457', '1448173457', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('58', '2015112206571', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173496', '1448173517', '1448173517', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('59', '2015112256495', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173565', '1448173586', '1448173586', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('60', '2015112247505', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173636', '1448173656', '1448173656', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('61', '2015112232487', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173681', '1448173702', '1448173702', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('62', '2015112257195', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173737', '1448173762', '1448173762', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('63', '2015112216327', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173891', '1448173911', '1448173911', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('64', '2015112239988', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173946', '1448173969', '1448173969', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('65', '2015112271974', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448173993', '1448174014', '1448174014', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('66', '2015112244840', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448174100', '1448174120', '1448174120', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('67', '2015112274362', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448174185', '1448174205', '1448174205', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('68', '2015112205835', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448174237', '1448174257', '1448174257', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('69', '2015112225442', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448174387', '1448174406', '1448174406', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('70', '2015112245153', '3', '1', '0', '2', '张三', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '75283535@qq.com', '', '', '', '1', '上门取货', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448174723', '1448174744', '1448174744', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('71', '2015112300972', '5', '2', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '6', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448230282', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('72', '2015112391096', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '8', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0', '0.00', '0.00', '0.00', '0', '本站', '1448231164', '1448231164', '1448231164', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('73', '2015112356122', '5', '5', '2', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448232418', '1448232764', '0', '1448232942', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('74', '2015112318877', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '8', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0', '0.00', '0.00', '0.00', '0', '本站', '1448234136', '1448234136', '1448234136', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('75', '2015112367655', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448234226', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('76', '2015112357527', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448234455', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('77', '2015112348209', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448235224', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('78', '2015112370348', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448235602', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('79', '2015112335486', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448236363', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('80', '2015112344905', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448237362', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('81', '2015112385195', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448237498', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('82', '2015112381487', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448237554', '1448237596', '1448237596', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('83', '2015112363574', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448237652', '1448237675', '1448237675', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('84', '2015112337132', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448238845', '1448238879', '1448238879', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('85', '2015112357841', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448239056', '1448239080', '1448239080', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('86', '2015112318905', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448239318', '1448239341', '1448239341', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('87', '2015112367767', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448239682', '1448239705', '1448239705', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('88', '2015112372682', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448239962', '1448239985', '1448239985', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('89', '2015112360459', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448240318', '1448240341', '1448240341', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('90', '2015112372725', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448240418', '1448240443', '1448240443', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('91', '2015112346450', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448240969', '1448241017', '1448241017', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('92', '2015112353930', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448241163', '1448241185', '1448241185', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('93', '2015112355924', '5', '1', '0', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448241333', '1448241358', '1448241358', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('94', '2015112344712', '5', '5', '1', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448241704', '1448241731', '1448241731', '1448409431', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('95', '2015112366532', '5', '5', '1', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448241849', '1448241875', '1448241875', '1448250063', '0', '0', '0', '111111111', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('96', '2015112314657', '5', '5', '1', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '3', '顺丰速运', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '15.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448242012', '1448242033', '1448247381', '1448247519', '0', '0', '0', '590716750039', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('97', '2015112369856', '5', '5', '2', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448242105', '1448242130', '1448242130', '1448242320', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('98', '2015112315443', '5', '2', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448242199', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('99', '2015112523378', '5', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '1', '上门取货', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1448409522', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('100', '2015112561257', '5', '5', '1', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '', '', '', '3', '顺丰速运', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1448409894', '1448409922', '1448409922', '1448409980', '0', '0', '0', '590716750039', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0.01');
INSERT INTO `ecs_order_info` VALUES ('101', '2015112818794', '0', '0', '0', '0', '斯蒂芬', '1', '3', '39', '422', '隧道股份斯蒂芬森', '', '+8657985656219', '13735669965', '1448996485@qq.com', '', '', '', '2', '运费到付', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '99.00', '0', 'pc站', '1448687940', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '');
INSERT INTO `ecs_order_info` VALUES ('102', '2015113044808', '1', '0', '0', '0', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13981750562', 'asdf@asd.com', '', '', '', '1', '上门取货', '4', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '88.00', '0', 'pc站', '1448824546', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '1', '0', '0.00', '88');
INSERT INTO `ecs_order_info` VALUES ('103', '2015120242661', '1', '5', '2', '2', '张三', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13981750562', 'asdf@asd.com', '', '', '', '4', '圆通速递', '8', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '88.00', '0', '0.00', '0.00', '0.00', '0', 'wap站', '1449032504', '1449032504', '1449032504', '1449032601', '0', '0', '0', '880828394688493096', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '88');
INSERT INTO `ecs_order_info` VALUES ('104', '2015120643166', '9', '0', '0', '0', '开口', '1', '5', '65', '629', 'uiyuhuiuighjk', '', '1332552695', '', '', '', '', '', '3', '顺丰速运', '4', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '168.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '183.00', '0', 'wap站', '1449360175', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '168');
INSERT INTO `ecs_order_info` VALUES ('105', '2016031322167', '0', '0', '0', '0', '戴森', '1', '2', '52', '500', '法师法第三', '', '', '15832990644', '763191200@qq.com', '', '', '', '4', '圆通速递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '156.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '156.00', '0', 'pc站', '1457802643', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '156');
INSERT INTO `ecs_order_info` VALUES ('106', '2017062968824', '12', '0', '0', '0', '邬志君', '1', '2', '52', '500', '方式来加进来设计分类', '', '58832000', '13811571327', 'wzj4858@163.com', '', '', '', '3', '顺丰速运', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '646.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '561.00', '0', 'pc站', '1498708301', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '100.00', '646');

-- ----------------------------
-- Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pack
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_package_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_payment
-- ----------------------------
INSERT INTO `ecs_payment` VALUES ('1', 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"763191200@qq.com\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"7edvbj40ze3ok3499pb385h5zyl1y7vl\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"2088102839435593\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"1\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('2', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('3', 'bank', '银行汇款/转帐', '0', '银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ecs_payment` VALUES ('4', 'cod', '货到付款', '0', '开通城市：×××\r\n货到付款区域：×××', '0', 'a:0:{}', '1', '1', '0');

-- ----------------------------
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pay_log
-- ----------------------------
INSERT INTO `ecs_pay_log` VALUES ('1', '1', '28.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('2', '2', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('3', '3', '26.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('4', '4', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('5', '5', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('6', '6', '168.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('7', '7', '108.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('8', '8', '108.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('9', '9', '168.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('10', '10', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('11', '11', '108.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('12', '12', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('13', '13', '46.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('14', '14', '18.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('15', '15', '59.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('16', '16', '26.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('17', '17', '12.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('18', '18', '12.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('19', '19', '49.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('20', '20', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('21', '21', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('22', '22', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('23', '23', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('24', '24', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('25', '25', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('26', '26', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('27', '27', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('28', '28', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('29', '29', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('30', '30', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('31', '31', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('32', '32', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('33', '33', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('34', '34', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('35', '35', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('36', '36', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('37', '37', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('38', '38', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('39', '39', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('40', '40', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('41', '41', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('42', '42', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('43', '43', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('44', '44', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('45', '45', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('46', '46', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('47', '47', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('48', '48', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('49', '49', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('50', '50', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('51', '51', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('52', '52', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('53', '53', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('54', '54', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('55', '55', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('56', '56', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('57', '57', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('58', '58', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('59', '59', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('60', '60', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('61', '61', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('62', '62', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('63', '63', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('64', '64', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('65', '65', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('66', '66', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('67', '67', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('68', '68', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('69', '69', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('70', '70', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('71', '72', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('72', '73', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('73', '74', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('74', '75', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('75', '76', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('76', '77', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('77', '78', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('78', '79', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('79', '80', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('80', '81', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('81', '82', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('82', '83', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('83', '84', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('84', '85', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('85', '86', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('86', '87', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('87', '88', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('88', '89', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('89', '90', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('90', '91', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('91', '92', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('92', '93', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('93', '94', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('94', '95', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('95', '96', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('96', '97', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('97', '98', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('98', '96', '15.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('99', '99', '0.01', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('100', '100', '0.01', '0', '1', '0');
INSERT INTO `ecs_pay_log` VALUES ('101', '101', '99.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('102', '102', '88.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('103', '103', '0.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('104', '104', '183.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('105', '105', '156.00', '0', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('106', '106', '561.00', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_products`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_products
-- ----------------------------
INSERT INTO `ecs_products` VALUES ('5', '1', '1|4|8', 'ECS000000g_p5', '123');
INSERT INTO `ecs_products` VALUES ('4', '1', '1|4|7', 'ECS000000g_p4', '234');
INSERT INTO `ecs_products` VALUES ('6', '1', '1|4|9', 'ECS000000g_p6', '345');
INSERT INTO `ecs_products` VALUES ('7', '1', '1|5|7', 'ECS000000g_p7', '567');
INSERT INTO `ecs_products` VALUES ('8', '1', '1|5|8', 'ECS000000g_p8', '678');
INSERT INTO `ecs_products` VALUES ('9', '1', '1|5|9', 'ECS000000g_p9', '789');
INSERT INTO `ecs_products` VALUES ('10', '1', '1|6|7', 'ECS000000g_p10', '890');
INSERT INTO `ecs_products` VALUES ('11', '1', '1|6|8', 'ECS000000g_p11', '124');
INSERT INTO `ecs_products` VALUES ('12', '1', '1|6|9', 'ECS000000g_p12', '125');
INSERT INTO `ecs_products` VALUES ('13', '1', '2|4|7', 'ECS000000g_p13', '126');
INSERT INTO `ecs_products` VALUES ('14', '1', '2|4|8', 'ECS000000g_p14', '127');
INSERT INTO `ecs_products` VALUES ('15', '1', '2|4|9', 'ECS000000g_p15', '128');
INSERT INTO `ecs_products` VALUES ('16', '1', '2|5|7', 'ECS000000g_p16', '129');
INSERT INTO `ecs_products` VALUES ('17', '1', '2|5|8', 'ECS000000g_p17', '130');
INSERT INTO `ecs_products` VALUES ('18', '1', '2|5|9', 'ECS000000g_p18', '131');
INSERT INTO `ecs_products` VALUES ('19', '1', '2|6|7', 'ECS000000g_p19', '132');
INSERT INTO `ecs_products` VALUES ('20', '1', '2|6|8', 'ECS000000g_p20', '133');
INSERT INTO `ecs_products` VALUES ('21', '1', '2|6|9', 'ECS000000g_p21', '134');
INSERT INTO `ecs_products` VALUES ('22', '1', '3|4|7', 'ECS000000g_p22', '135');
INSERT INTO `ecs_products` VALUES ('23', '1', '3|4|8', 'ECS000000g_p23', '136');
INSERT INTO `ecs_products` VALUES ('24', '1', '3|4|9', 'ECS000000g_p24', '137');
INSERT INTO `ecs_products` VALUES ('25', '1', '3|5|7', 'ECS000000g_p25', '138');
INSERT INTO `ecs_products` VALUES ('26', '1', '3|5|8', 'ECS000000g_p26', '1381');
INSERT INTO `ecs_products` VALUES ('27', '1', '3|5|9', 'ECS000000g_p27', '666');
INSERT INTO `ecs_products` VALUES ('28', '1', '3|6|7', 'ECS000000g_p28', '888');
INSERT INTO `ecs_products` VALUES ('29', '1', '3|6|8', 'ECS000000g_p29', '9999');
INSERT INTO `ecs_products` VALUES ('30', '1', '3|6|9', 'ECS000000g_p30', '5689');

-- ----------------------------
-- Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_region
-- ----------------------------
INSERT INTO `ecs_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `ecs_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `ecs_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `ecs_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `ecs_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `ecs_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `ecs_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `ecs_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `ecs_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `ecs_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `ecs_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `ecs_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `ecs_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `ecs_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `ecs_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `ecs_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `ecs_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `ecs_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `ecs_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `ecs_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `ecs_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `ecs_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `ecs_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `ecs_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `ecs_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `ecs_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `ecs_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `ecs_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `ecs_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `ecs_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `ecs_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `ecs_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `ecs_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `ecs_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ecs_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `ecs_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `ecs_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `ecs_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `ecs_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `ecs_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `ecs_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `ecs_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `ecs_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `ecs_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `ecs_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `ecs_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `ecs_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `ecs_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `ecs_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `ecs_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `ecs_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `ecs_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `ecs_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `ecs_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `ecs_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `ecs_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `ecs_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `ecs_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `ecs_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `ecs_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `ecs_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `ecs_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `ecs_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `ecs_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `ecs_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `ecs_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `ecs_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `ecs_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `ecs_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `ecs_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `ecs_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `ecs_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `ecs_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `ecs_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `ecs_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `ecs_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `ecs_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `ecs_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `ecs_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `ecs_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `ecs_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `ecs_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `ecs_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `ecs_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `ecs_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `ecs_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `ecs_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `ecs_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `ecs_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `ecs_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `ecs_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `ecs_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `ecs_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `ecs_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `ecs_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `ecs_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `ecs_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `ecs_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `ecs_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `ecs_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `ecs_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `ecs_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `ecs_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `ecs_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `ecs_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `ecs_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `ecs_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `ecs_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `ecs_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `ecs_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `ecs_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `ecs_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `ecs_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `ecs_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `ecs_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `ecs_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `ecs_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `ecs_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `ecs_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `ecs_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ecs_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `ecs_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `ecs_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `ecs_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `ecs_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `ecs_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `ecs_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `ecs_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `ecs_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `ecs_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ecs_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `ecs_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `ecs_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `ecs_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `ecs_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `ecs_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `ecs_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `ecs_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `ecs_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `ecs_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `ecs_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `ecs_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `ecs_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `ecs_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `ecs_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `ecs_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `ecs_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `ecs_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `ecs_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `ecs_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `ecs_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `ecs_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `ecs_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `ecs_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `ecs_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `ecs_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `ecs_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `ecs_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `ecs_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `ecs_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `ecs_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `ecs_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `ecs_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `ecs_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `ecs_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `ecs_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `ecs_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `ecs_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `ecs_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `ecs_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `ecs_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `ecs_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `ecs_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `ecs_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `ecs_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `ecs_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `ecs_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `ecs_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `ecs_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `ecs_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `ecs_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `ecs_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `ecs_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `ecs_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `ecs_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `ecs_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `ecs_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `ecs_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `ecs_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `ecs_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `ecs_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `ecs_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `ecs_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `ecs_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ecs_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `ecs_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `ecs_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `ecs_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `ecs_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `ecs_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `ecs_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `ecs_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `ecs_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `ecs_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `ecs_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `ecs_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `ecs_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `ecs_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `ecs_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `ecs_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `ecs_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `ecs_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `ecs_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `ecs_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `ecs_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `ecs_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `ecs_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `ecs_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `ecs_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `ecs_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `ecs_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `ecs_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `ecs_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `ecs_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `ecs_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `ecs_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `ecs_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `ecs_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `ecs_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `ecs_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `ecs_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `ecs_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `ecs_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `ecs_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `ecs_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `ecs_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ecs_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `ecs_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `ecs_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `ecs_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `ecs_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `ecs_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `ecs_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `ecs_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `ecs_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `ecs_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `ecs_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `ecs_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `ecs_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `ecs_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `ecs_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `ecs_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ecs_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `ecs_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `ecs_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `ecs_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `ecs_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `ecs_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `ecs_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `ecs_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `ecs_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `ecs_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `ecs_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `ecs_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ecs_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ecs_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ecs_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `ecs_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `ecs_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `ecs_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `ecs_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ecs_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `ecs_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ecs_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `ecs_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `ecs_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `ecs_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `ecs_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `ecs_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `ecs_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `ecs_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `ecs_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `ecs_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `ecs_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `ecs_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `ecs_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `ecs_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `ecs_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `ecs_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ecs_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `ecs_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `ecs_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `ecs_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `ecs_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `ecs_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `ecs_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `ecs_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `ecs_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `ecs_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `ecs_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `ecs_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `ecs_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `ecs_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `ecs_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `ecs_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `ecs_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `ecs_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `ecs_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `ecs_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `ecs_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `ecs_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `ecs_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `ecs_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `ecs_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `ecs_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `ecs_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `ecs_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `ecs_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ecs_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `ecs_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `ecs_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `ecs_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `ecs_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `ecs_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `ecs_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `ecs_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `ecs_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `ecs_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `ecs_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `ecs_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `ecs_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `ecs_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `ecs_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `ecs_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `ecs_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `ecs_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `ecs_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `ecs_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `ecs_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `ecs_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `ecs_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `ecs_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `ecs_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `ecs_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `ecs_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `ecs_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `ecs_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `ecs_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `ecs_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `ecs_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `ecs_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `ecs_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `ecs_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `ecs_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `ecs_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `ecs_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `ecs_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `ecs_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `ecs_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `ecs_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `ecs_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `ecs_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `ecs_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ecs_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `ecs_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `ecs_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `ecs_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `ecs_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `ecs_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `ecs_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `ecs_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `ecs_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ecs_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `ecs_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `ecs_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `ecs_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `ecs_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `ecs_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `ecs_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `ecs_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `ecs_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ecs_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `ecs_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ecs_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `ecs_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `ecs_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `ecs_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ecs_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `ecs_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `ecs_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `ecs_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `ecs_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `ecs_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `ecs_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `ecs_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `ecs_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `ecs_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ecs_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ecs_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `ecs_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `ecs_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ecs_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `ecs_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `ecs_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `ecs_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ecs_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ecs_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `ecs_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `ecs_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `ecs_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `ecs_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `ecs_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `ecs_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `ecs_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `ecs_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `ecs_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `ecs_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `ecs_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `ecs_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ecs_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `ecs_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_extend_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_fields
-- ----------------------------
INSERT INTO `ecs_reg_fields` VALUES ('1', 'MSN', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` VALUES ('2', 'QQ', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` VALUES ('3', '办公电话', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` VALUES ('4', '家庭电话', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` VALUES ('5', '手机', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` VALUES ('6', '密码找回问题', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `ecs_role`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_searchengine
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions`;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions
-- ----------------------------
INSERT INTO `ecs_sessions` VALUES ('edc6b981b9de71f3b5b8836dc5bcffd7', '1498737172', '12', '0', '0.0.0.0', '111111', '1', '1.00', 'wzj4858@163.com', 'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1498708361\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:9:\"flow_type\";i:0;}');

-- ----------------------------
-- Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions_data
-- ----------------------------
INSERT INTO `ecs_sessions_data` VALUES ('edc6b981b9de71f3b5b8836dc5bcffd7', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1498708247\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:9:\"邬志君\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:15:\"wzj4858@163.com\";s:7:\"address\";s:30:\"方式来加进来设计分类\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:8:\"58832000\";s:6:\"mobile\";s:11:\"13811571327\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";}}');

-- ----------------------------
-- Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping
-- ----------------------------
INSERT INTO `ecs_shipping` VALUES ('1', 'cac', '上门取货', '买家自己到商家指定地点取货', '0', '1', '1', '', '', '', '2', '0');
INSERT INTO `ecs_shipping` VALUES ('2', 'fpd', '运费到付', '所购商品到达即付运费', '0', '0', '1', '', '', '', '2', '0');
INSERT INTO `ecs_shipping` VALUES ('3', 'sf_express', '顺丰速运', '江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG', '0', '0', '1', '', '/images/receipt/dly_sf_express.jpg', 't_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||', '2', '0');
INSERT INTO `ecs_shipping` VALUES ('4', 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', '1', '1', '', '/images/receipt/dly_yto.jpg', 't_shop_province,网店-省份,132,24,279.6,105.7,b_shop_province||,||t_shop_name,网店-名称,268,29,142.95,133.85,b_shop_name||,||t_shop_address,网店-地址,346,40,67.3,199.95,b_shop_address||,||t_shop_city,网店-城市,64,35,223.8,163.95,b_shop_city||,||t_shop_district,网店-区/县,56,35,314.9,164.25,b_shop_district||,||t_pigeon,√-对号,21,21,143.1,263.2,b_pigeon||,||t_customer_name,收件人-姓名,89,25,488.65,121.05,b_customer_name||,||t_customer_tel,收件人-电话,136,21,656,110.6,b_customer_tel||,||t_customer_mobel,收件人-手机,137,21,655.6,132.8,b_customer_mobel||,||t_customer_province,收件人-省份,115,24,480.2,173.5,b_customer_province||,||t_customer_city,收件人-城市,60,27,609.3,172.5,b_customer_city||,||t_customer_district,收件人-区/县,58,28,696.8,173.25,b_customer_district||,||t_customer_post,收件人-邮编,93,21,701.1,240.25,b_customer_post||,||', '2', '0');

-- ----------------------------
-- Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping_area
-- ----------------------------
INSERT INTO `ecs_shipping_area` VALUES ('1', '中国', '1', 'a:3:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('2', '中国', '2', 'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:0:\"\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('3', '中国', '3', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('4', '中国', '4', 'a:6:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}i:5;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9039 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shop_config
-- ----------------------------
INSERT INTO `ecs_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', 'O菜龙工作室', '1');
INSERT INTO `ecs_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', 'ecshop生鲜食品蔬菜水果微信分销商城网站模板+手机wap+微信支付', '1');
INSERT INTO `ecs_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', 'ecshop生鲜食品蔬菜水果微信分销商城网站模板+手机wap+微信支付', '1');
INSERT INTO `ecs_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', 'ecshop生鲜食品蔬菜水果微信分销商城网站模板+手机wap+微信支付', '1');
INSERT INTO `ecs_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '147', '1');
INSERT INTO `ecs_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '三段9号', '1');
INSERT INTO `ecs_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '763191200', '1');
INSERT INTO `ecs_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', 'o菜龙', '1');
INSERT INTO `ecs_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '7631913200@qq.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '../themes/lizi/images/logo.gif', '1');
INSERT INTO `ecs_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '冀ICP12345678号', '1');
INSERT INTO `ecs_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '9999', '1');
INSERT INTO `ecs_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '1089132730', '1');
INSERT INTO `ecs_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '1d825bf072672566d6961b48d26b44378a5aff73417223d90a4a43327b17bfdc', '1');
INSERT INTO `ecs_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥%s元', '1');
INSERT INTO `ecs_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '400', '1');
INSERT INTO `ecs_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '400', '1');
INSERT INTO `ecs_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '30', '1');
INSERT INTO `ecs_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '11', '1');
INSERT INTO `ecs_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '宠物狗粮,鸟笼，磨牙棒,国产料,遛狗绳', '0');
INSERT INTO `ecs_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '4', '0');
INSERT INTO `ecs_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '2aab9f77cc5ab4694b2b6009f5785883', '1');
INSERT INTO `ecs_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'lizi', '1');
INSERT INTO `ecs_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1447726949', '1');
INSERT INTO `ecs_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '36', '1');
INSERT INTO `ecs_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('90', '0', 'ecsdxt', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9001', '90', 'ecsdxt_gateway', 'options', '1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('9002', '90', 'ecsdxt_user_name', 'text', '', '', 'kkkkaaa', '1');
INSERT INTO `ecs_shop_config` VALUES ('9003', '90', 'ecsdxt_pass_word', 'password', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9004', '90', 'ecsdxt_shop_mobile', 'text', '', '', '13000000007', '1');
INSERT INTO `ecs_shop_config` VALUES ('9005', '90', 'ecsdxt_smsgap', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('9006', '90', 'ecsdxt_mobile_reg', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9007', '90', 'ecsdxt_mobile_reg_value', 'textarea', '', '', '您的手机号：{$user_mobile}，注册验证码：{$verify_code}，一天内提交有效。感谢您的注册！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9008', '90', 'ecsdxt_mobile_log', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9009', '90', 'ecsdxt_mobile_pwd', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9010', '90', 'ecsdxt_mobile_pwd_value', 'textarea', '', '', '您的用户名：{$user_name}，新密码：{$new_password}。请及时登陆修改密码！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9011', '90', 'ecsdxt_mobile_changepwd', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9012', '90', 'ecsdxt_mobile_changepwd_value', 'textarea', '', '', '您的用户名：{$user_name}，密码已修改，新密码：{$new_password}。请牢记新密码！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9013', '90', 'ecsdxt_mobile_bind', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9014', '90', 'ecsdxt_mobile_bind_value', 'textarea', '', '', '您的手机号：{$user_mobile}，绑定验证码：{$verify_code}。一天内提交有效！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9015', '90', 'ecsdxt_mobile_cons', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9016', '90', 'ecsdxt_customer_registed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9017', '90', 'ecsdxt_customer_registed_value', 'textarea', '', '', '您注册的用户名：{$user_name}，密码：{$user_pwd}。感谢您的注册！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9018', '90', 'ecsdxt_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9019', '90', 'ecsdxt_order_placed_value', 'textarea', '', '', '您有新的订单：{$order_sn}，收货人：{$consignee}，电话：{$tel}，请及时确认订单！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9020', '90', 'ecsdxt_order_canceled', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9021', '90', 'ecsdxt_order_canceled_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家已取消订单！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9022', '90', 'ecsdxt_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9023', '90', 'ecsdxt_order_payed_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家付款了。收货人：{$consignee}，电话：{$tel}。请及时安排发货！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9024', '90', 'ecsdxt_order_confirm', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9025', '90', 'ecsdxt_order_confirm_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家已确认收货！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9026', '90', 'ecsdxt_customer_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9027', '90', 'ecsdxt_customer_placed_value', 'textarea', '', '', '您的订单：{$order_sn}，收货人：{$consignee} 电话：{$tel}，已经成功提交。感谢您的购买！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9028', '90', 'ecsdxt_customer_canceled', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9029', '90', 'ecsdxt_customer_canceled_value', 'textarea', '', '', '您的订单：{$order_sn}，已取消！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9030', '90', 'ecsdxt_customer_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9031', '90', 'ecsdxt_customer_payed_value', 'textarea', '', '', '您的订单：{$order_sn}，已于{$time}付款成功。感谢您的购买！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9032', '90', 'ecsdxt_customer_confirm', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9033', '90', 'ecsdxt_customer_confirm_value', 'textarea', '', '', '您的订单：{$order_sn}，确认收货成功。感谢您购买与支持，欢迎您下次光临！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9034', '90', 'ecsdxt_order_picking', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9035', '90', 'ecsdxt_order_picking_value', 'textarea', '', '', '订单号：{$order_sn} 已于{$time}配货。如有问题请及时联系！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9036', '90', 'ecsdxt_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('9037', '90', 'ecsdxt_order_shipped_value', 'textarea', '', '', '订单号：{$order_sn} 已于{$time}发货，如有问题请及时联系！', '1');
INSERT INTO `ecs_shop_config` VALUES ('9038', '3', 'show_sales_type', 'select', '1,0', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_snatch_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_stats
-- ----------------------------
INSERT INTO `ecs_stats` VALUES ('1447701258', '192.168.1.88', '7', 'FireFox 42.0', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://192.168.1.88', '/admin/index.php?act=top', '/index.php');
INSERT INTO `ecs_stats` VALUES ('1447706716', '127.0.0.1', '1', 'Internet Explorer 6.0', 'Windows 2000', '', 'LAN', '', '', '/index.php');

-- ----------------------------
-- Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_template
-- ----------------------------
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '首页倒计时广告位', '/library/ad_position.lbi', '0', '5', '4', '4', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '3', '1', '6', '1', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '2', '5', '6', '1', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '1', '11', '6', '1', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '0', '2', '6', '1', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '热卖商品区域', '/library/recommend_hot.lbi', '0', '0', '4', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '天天惊喜--促销商品', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '新品尝新--新品上市商品', '/library/recommend_new.lbi', '0', '0', '2', '0', 'lizi', '');
INSERT INTO `ecs_template` VALUES ('index', '精品推荐', '/library/recommend_best.lbi', '0', '0', '4', '0', 'lizi', '');

-- ----------------------------
-- Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_action`;
CREATE TABLE `ecs_touch_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_action
-- ----------------------------
INSERT INTO `ecs_touch_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_touch_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ecs_touch_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_touch_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ecs_touch_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_touch_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_touch_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ecs_touch_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_touch_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_touch_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_touch_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ecs_touch_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ecs_touch_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_touch_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_touch_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_touch_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_touch_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_touch_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_touch_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ecs_touch_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_touch_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_touch_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ecs_touch_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ecs_touch_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ecs_touch_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_touch_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ecs_touch_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_touch_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ecs_touch_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ecs_touch_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ecs_touch_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ecs_touch_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_touch_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ecs_touch_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ecs_touch_action` VALUES ('97', '164', 'affiliate', '');
INSERT INTO `ecs_touch_action` VALUES ('98', '164', 'affiliate_ck', '');
INSERT INTO `ecs_touch_action` VALUES ('168', '164', 'zdy_parent', '');
INSERT INTO `ecs_touch_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ecs_touch_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ecs_touch_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ecs_touch_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ecs_touch_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ecs_touch_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_touch_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_touch_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ecs_touch_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ecs_touch_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ecs_touch_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_touch_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ecs_touch_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ecs_touch_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ecs_touch_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_touch_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_touch_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_touch_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_touch_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_touch_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('135', '4', 'role_manage', '');
INSERT INTO `ecs_touch_action` VALUES ('138', '0', 'wechat', '');
INSERT INTO `ecs_touch_action` VALUES ('139', '138', 'wx_api', '');
INSERT INTO `ecs_touch_action` VALUES ('140', '138', 'wx_menu', '');
INSERT INTO `ecs_touch_action` VALUES ('141', '138', 'wx_config', '');
INSERT INTO `ecs_touch_action` VALUES ('142', '138', 'wx_bonus', '');
INSERT INTO `ecs_touch_action` VALUES ('143', '138', 'wx_regmsg', '');
INSERT INTO `ecs_touch_action` VALUES ('144', '138', 'wx_lang', '');
INSERT INTO `ecs_touch_action` VALUES ('145', '138', 'wx_keywords', '');
INSERT INTO `ecs_touch_action` VALUES ('146', '138', 'wx_point', '');
INSERT INTO `ecs_touch_action` VALUES ('147', '138', 'wx_fun', '');
INSERT INTO `ecs_touch_action` VALUES ('148', '138', 'wx_prize', '');
INSERT INTO `ecs_touch_action` VALUES ('149', '138', 'wx_zjd', '');
INSERT INTO `ecs_touch_action` VALUES ('150', '138', 'wx_dzp', '');
INSERT INTO `ecs_touch_action` VALUES ('151', '138', 'wx_qr', '');
INSERT INTO `ecs_touch_action` VALUES ('152', '138', 'wx_order', '');
INSERT INTO `ecs_touch_action` VALUES ('153', '138', 'wx_pay', '');
INSERT INTO `ecs_touch_action` VALUES ('154', '138', 'wx_reorder', '');
INSERT INTO `ecs_touch_action` VALUES ('155', '138', 'wx_fans', '');
INSERT INTO `ecs_touch_action` VALUES ('156', '138', 'wx_oauth', '');
INSERT INTO `ecs_touch_action` VALUES ('157', '138', 'wx_tuijian', '');
INSERT INTO `ecs_touch_action` VALUES ('158', '138', 'wx_list', '');
INSERT INTO `ecs_touch_action` VALUES ('159', '5', 'website', '');
INSERT INTO `ecs_touch_action` VALUES ('160', '5', 'user_card', '');
INSERT INTO `ecs_touch_action` VALUES ('161', '5', 'mail_settings', '');
INSERT INTO `ecs_touch_action` VALUES ('162', '5', 'category_icon', '');
INSERT INTO `ecs_touch_action` VALUES ('163', '138', 'wx_autoreg', '');
INSERT INTO `ecs_touch_action` VALUES ('164', '0', 'fenxiao', '');
INSERT INTO `ecs_touch_action` VALUES ('165', '164', 'danpin_tuiguang', '');
INSERT INTO `ecs_touch_action` VALUES ('166', '5', 'ectouch', '');
INSERT INTO `ecs_touch_action` VALUES ('167', '5', 'weixintong', '');

-- ----------------------------
-- Table structure for `ecs_touch_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad`;
CREATE TABLE `ecs_touch_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad
-- ----------------------------
INSERT INTO `ecs_touch_ad` VALUES ('1', '1', '0', '手机版首页Banner-1', '', '1457812991560083075.jpg', '1396339200', '1525161600', '', '', '', '47', '1');
INSERT INTO `ecs_touch_ad` VALUES ('2', '1', '0', '手机版首页Banner-2', '', '1457813006192951719.jpg', '1396339200', '1525161600', '', '', '', '44', '1');
INSERT INTO `ecs_touch_ad` VALUES ('4', '1', '0', '手机版首页Banner-3', '', '1457813020818820425.jpg', '1444204800', '1604649600', '', '', '', '3', '1');
INSERT INTO `ecs_touch_ad` VALUES ('5', '2', '0', '特色市场左侧2张广告图-1', '', '1449014605524349143.jpg', '1444291200', '1604736000', '', '', '', '18', '1');
INSERT INTO `ecs_touch_ad` VALUES ('6', '2', '0', '特色市场左侧2张广告图-2', '', '1449014633204150477.jpg', '1444291200', '1604736000', '', '', '', '28', '1');
INSERT INTO `ecs_touch_ad` VALUES ('7', '3', '0', '特色市场右侧1张广告图', '', '1457813429601574062.jpg', '1444291200', '1604736000', '', '', '', '30', '1');
INSERT INTO `ecs_touch_ad` VALUES ('8', '4', '0', '热门市场-1', '', '1449017705247505261.jpg', '1444291200', '1604736000', '', '', '', '31', '1');
INSERT INTO `ecs_touch_ad` VALUES ('9', '4', '0', '热门市场-2', '', '1449017715707894167.jpg', '1444291200', '1604736000', '', '', '', '11', '1');
INSERT INTO `ecs_touch_ad` VALUES ('10', '4', '0', '热门市场-3', '', '1449017725192980023.jpg', '1444291200', '1604736000', '', '', '', '11', '1');
INSERT INTO `ecs_touch_ad` VALUES ('11', '4', '0', '热门市场-4', '', '1449017734025885281.jpg', '1444291200', '1604736000', '', '', '', '8', '1');
INSERT INTO `ecs_touch_ad` VALUES ('12', '4', '0', '热门市场-5', '', '1449017744088348985.jpg', '1444291200', '1604736000', '', '', '', '16', '1');
INSERT INTO `ecs_touch_ad` VALUES ('13', '4', '0', '热门市场-6', '', '1449017754317369153.jpg', '1444291200', '1604736000', '', '', '', '23', '1');
INSERT INTO `ecs_touch_ad` VALUES ('14', '4', '0', '热门市场-7', '', '1449017763165246328.jpg', '1444291200', '1604736000', '', '', '', '14', '1');
INSERT INTO `ecs_touch_ad` VALUES ('15', '4', '0', '热门市场-8', '', '1449017772357575701.jpg', '1444291200', '1604736000', '', '', '', '12', '1');
INSERT INTO `ecs_touch_ad` VALUES ('16', '4', '0', '热门市场-9', '', '1449017780762813247.jpg', '1444291200', '1604736000', '', '', '', '16', '1');

-- ----------------------------
-- Table structure for `ecs_touch_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad_position`;
CREATE TABLE `ecs_touch_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad_position
-- ----------------------------
INSERT INTO `ecs_touch_ad_position` VALUES ('1', '手机版首页Banner', '360', '168', '', '<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');
INSERT INTO `ecs_touch_ad_position` VALUES ('2', '特色市场左侧2张广告图', '360', '140', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_touch_ad_position` VALUES ('3', '特色市场右侧1张广告图', '258', '280', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_touch_ad_position` VALUES ('4', '热门市场', '345', '372', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');

-- ----------------------------
-- Table structure for `ecs_touch_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_nav`;
CREATE TABLE `ecs_touch_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_nav
-- ----------------------------
INSERT INTO `ecs_touch_nav` VALUES ('1', '', '0', '全部分类', '1', '0', '0', 'cat_all.php', '1443584338752549142.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('2', 'a', '3', '帮助中心', '1', '0', '0', 'article_cat.php?id=3', '1448075935109557161.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('3', '', '0', '个人中心', '1', '0', '0', 'user.php', '1443584373727011961.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('4', '', '0', '分销中心', '1', '0', '0', 'distribute.php', '1443586488909704319.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('5', '', '0', '联系我们', '1', '0', '0', 'ectouch.php?act=contact', '1443586300343329180.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('6', '', '0', '团购', '1', '0', '0', 'group_buy.php', '1443585779204202237.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('7', '', '0', '积分商城', '1', '0', '0', 'exchange.php', '1443586061863736586.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('8', '', '0', '购物车', '1', '0', '0', 'flow.php', '1443584408064043342.png', 'middle');

-- ----------------------------
-- Table structure for `ecs_touch_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_payment`;
CREATE TABLE `ecs_touch_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_payment
-- ----------------------------
INSERT INTO `ecs_touch_payment` VALUES ('4', 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '0', 'a:3:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"763191200@qq.com\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"7edvbj40ze3ok3499pb385h5zyl1y7vl\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"2088102839435593\";}}', '1', '0', '1');
INSERT INTO `ecs_touch_payment` VALUES ('6', 'cod', '货到付款', '0', '开通城市：×××\r\n货到付款区域：×××', '0', 'a:0:{}', '1', '1', '0');
INSERT INTO `ecs_touch_payment` VALUES ('7', 'bank', '银行汇款/转帐', '0', '银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ecs_touch_payment` VALUES ('8', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1');
INSERT INTO `ecs_touch_payment` VALUES ('9', 'wx_new_jspay', '微信支付', '0', '本支付适用于新版本微信支付', '0', 'a:5:{i:0;a:3:{s:4:\"name\";s:5:\"appid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:5:\"mchid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:3:\"key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"t8e4z5zmt8e4z5zmt8e4z5zmt8e4z5zm\";}i:3;a:3:{s:4:\"name\";s:9:\"appsecret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:4;a:3:{s:4:\"name\";s:4:\"logs\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"0\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `ecs_touch_priv`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_priv`;
CREATE TABLE `ecs_touch_priv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_list` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_priv
-- ----------------------------
INSERT INTO `ecs_touch_priv` VALUES ('3', '2', 'all');
INSERT INTO `ecs_touch_priv` VALUES ('4', '3', 'goods_manage,cat_manage,attr_manage,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_fun,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_fans,wx_oauth,wx_tuijian,wx_list');
INSERT INTO `ecs_touch_priv` VALUES ('5', '4', 'goods_manage,cat_manage,cat_drop,attr_manage,brand_manage,goods_type,users_manage,users_drop,user_rank,surplus_manage,account_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,template_manage,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,user_card,mail_settings,category_icon,ectouch,weixintong,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,bonus_manage,gift_manage,card_manage,pack,ad_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_fun,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_fans,wx_oauth,wx_tuijian,wx_list,wx_autoreg,affiliate,affiliate_ck,danpin_tuiguang');

-- ----------------------------
-- Table structure for `ecs_touch_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shop_config`;
CREATE TABLE `ecs_touch_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9039 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shop_config
-- ----------------------------
INSERT INTO `ecs_touch_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9', '0', 'wap', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', 'O菜龙工作室微商店', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', 'ecshop生鲜食品蔬菜水果微信分销商城网站模板+手机wap+微信支付', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', 'ecshop生鲜食品蔬菜水果微信分销商城网站模板+手机wap+微信支付', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '10', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '147', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '西三3号', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '763191200', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', 'o菜龙', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '763191200@qq.com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '欢迎光临手机网,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话0319-5238276</P></FONT></U></MARQUEE>', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '1000', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '1222996236', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '1bb759b4db9d8176af3463fdf6a33c4a362d3e71fe5bcbcc80a29d62c8d64d9c', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥<span>%s</span>', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '220', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '220', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '450', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '450', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '18', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '100', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '20', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '4', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', 'b76989c756aab2c64cf941eb31dec09c', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'ocailong_com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1379320265', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:0;s:11:\"expire_unit\";N;s:11:\"separate_by\";i:0;s:15:\"level_point_all\";d:0;s:15:\"level_money_all\";d:0;s:18:\"level_register_all\";i:0;s:17:\"level_register_up\";i:0;}s:4:\"item\";a:5:{i:0;a:2:{s:11:\"level_point\";s:3:\"10%\";s:11:\"level_money\";s:3:\"10%\";}i:1;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"5%\";s:11:\"level_money\";s:2:\"5%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"6%\";s:11:\"level_money\";s:2:\"5%\";}i:4;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"8%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '39', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '13566667777', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('904', '3', 'auction_ad', 'text', '', '', '20', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('90', '0', 'ecsdxt', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9001', '90', 'ecsdxt_gateway', 'options', '1,2', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9002', '90', 'ecsdxt_user_name', 'text', '', '', 'xkfla', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9003', '90', 'ecsdxt_pass_word', 'password', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9004', '90', 'ecsdxt_shop_mobile', 'text', '', '', '13981750563', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9005', '90', 'ecsdxt_smsgap', 'text', '', '', '10', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9006', '90', 'ecsdxt_mobile_reg', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9007', '90', 'ecsdxt_mobile_reg_value', 'textarea', '', '', '您的手机号：{$user_mobile}，注册验证码：{$verify_code}，一天内提交有效。感谢您的注册！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9008', '90', 'ecsdxt_mobile_log', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9009', '90', 'ecsdxt_mobile_pwd', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9010', '90', 'ecsdxt_mobile_pwd_value', 'textarea', '', '', '您的用户名：{$user_name}，新密码：{$new_password}。请及时登陆修改密码！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9011', '90', 'ecsdxt_mobile_changepwd', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9012', '90', 'ecsdxt_mobile_changepwd_value', 'textarea', '', '', '您的用户名：{$user_name}，密码已修改，新密码：{$new_password}。请牢记新密码！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9013', '90', 'ecsdxt_mobile_bind', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9014', '90', 'ecsdxt_mobile_bind_value', 'textarea', '', '', '您的手机号：{$user_mobile}，绑定验证码：{$verify_code}。一天内提交有效！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9015', '90', 'ecsdxt_mobile_cons', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9016', '90', 'ecsdxt_customer_registed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9017', '90', 'ecsdxt_customer_registed_value', 'textarea', '', '', '您注册的用户名：{$user_name}，密码：{$user_pwd}。感谢您的注册！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9018', '90', 'ecsdxt_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9019', '90', 'ecsdxt_order_placed_value', 'textarea', '', '', '您有新的订单：{$order_sn}，收货人：{$consignee}，电话：{$tel}，请及时确认订单！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9020', '90', 'ecsdxt_order_canceled', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9021', '90', 'ecsdxt_order_canceled_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家已取消订单！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9022', '90', 'ecsdxt_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9023', '90', 'ecsdxt_order_payed_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家付款了。收货人：{$consignee}，电话：{$tel}。请及时安排发货！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9024', '90', 'ecsdxt_order_confirm', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9025', '90', 'ecsdxt_order_confirm_value', 'textarea', '', '', '订单号 ：{$order_sn} 买家已确认收货！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9026', '90', 'ecsdxt_customer_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9027', '90', 'ecsdxt_customer_placed_value', 'textarea', '', '', '您的订单：{$order_sn}，收货人：{$consignee} 电话：{$tel}，已经成功提交。感谢您的购买！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9028', '90', 'ecsdxt_customer_canceled', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9029', '90', 'ecsdxt_customer_canceled_value', 'textarea', '', '', '您的订单：{$order_sn}，已取消！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9030', '90', 'ecsdxt_customer_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9031', '90', 'ecsdxt_customer_payed_value', 'textarea', '', '', '您的订单：{$order_sn}，已于{$time}付款成功。感谢您的购买！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9032', '90', 'ecsdxt_customer_confirm', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9033', '90', 'ecsdxt_customer_confirm_value', 'textarea', '', '', '您的订单：{$order_sn}，确认收货成功。感谢您购买与支持，欢迎您下次光临！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9038', '3', 'show_sales_type', 'select', '1,0', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_touch_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_template`;
CREATE TABLE `ecs_touch_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_template
-- ----------------------------
INSERT INTO `ecs_touch_template` VALUES ('index', '热门市场', '/library/ad_position.lbi', '0', '4', '9', '4', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '特色市场右侧1张广告图', '/library/ad_position.lbi', '0', '3', '1', '4', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '特色市场左侧2张广告图', '/library/ad_position.lbi', '0', '2', '2', '4', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', 'touch首页广告区域', '/library/ad_position.lbi', '0', '1', '3', '4', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/cat_goods.lbi', '1', '2', '6', '1', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/cat_goods.lbi', '2', '1', '6', '1', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/cat_goods.lbi', '3', '5', '6', '1', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '', '/library/recommend_hot.lbi', '0', '0', '3', '0', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '', '/library/recommend_new.lbi', '0', '0', '3', '0', 'ocailong_com', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/recommend_best.lbi', '0', '0', '3', '0', 'ocailong_com', '');

-- ----------------------------
-- Table structure for `ecs_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `actual_name` varchar(50) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `wxid` char(28) NOT NULL,
  `wxch_bd` char(2) NOT NULL,
  `nicheng` varchar(255) DEFAULT NULL,
  `password_xkfla` varchar(40) NOT NULL,
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
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_users
-- ----------------------------
INSERT INTO `ecs_users` VALUES ('1', '', 'adf@adsf.com', 'aabbcc', '5d1c2d83408fed211dce1f7ff5d9a70a', '', '', '', '0', '0000-00-00', '11023.00', '0.00', '111105699', '88', '1', '1447960293', '1449090803', '0000-00-00 00:00:00', '192.168.1.88', '14', '0', '0', '6088', '0', '5', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('2', '', 'service@66mail.cn', 'xkfla', 'c79914def32521f87f126be109ba2904', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1448157869', '1448166558', '0000-00-00 00:00:00', '192.168.1.88', '6', '0', '0', '3959', '0', '0', '0', '', '', '', '', '', '15884444720', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('3', '', '75283535@qq.com', '18113131306', '1de33d10f9cecfdcbb2d18b045ac6496', '', '', '', '0', '1955-01-01', '-0.02', '0.00', '0', '0', '5', '1448162628', '1448225920', '0000-00-00 00:00:00', '192.168.1.88', '3', '0', '0', '8136', '0', '0', '0', '', '', '', '', '', '18113131306', '0', '1111.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('4', '', '', 'abcabc', '68b89cde86ed3e7524579fdd8ef18195', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1448228380', '1448229023', '0000-00-00 00:00:00', '192.168.1.88', '2', '0', '0', '9964', '0', '0', '0', '', '', '', '', '', '18980923392', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('5', '', '', 'aaaaa', '9a70b2a1ab88e395f3b22dbdcf5ea0ac', '', '', '', '0', '0000-00-00', '908.80', '0.00', '27', '9', '6', '1448229970', '1448410717', '0000-00-00 00:00:00', '171.214.146.138', '88', '1', '0', '9188', '0', '0', '0', '', '', '', '', '', '18113131307', '0', '0.00', '', '', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'ok', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('8', '', '12354668@156.com', '546971327', '08ab2d4cce95eb4299f54b6b3c90372d', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1448607028', '1448607028', '0000-00-00 00:00:00', '182.247.135.57', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '18088000102', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('9', '', '', '123456788', '14920e4fd7326eef04639adb243d8b1b', '', '', '', '255', '0000-00-00', '0.00', '0.00', '0', '0', '7', '1449360036', '1449360129', '0000-00-00 00:00:00', '123.169.114.29', '2', '0', '0', '8519', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('10', '', '123123@qq.com', 'buyer', '3dc8d329819893cf0923a10920a7ac30', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '8', '1449386881', '1449388613', '0000-00-00 00:00:00', '118.186.147.17', '2', '0', '0', '5130', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('11', '', '', 'dithion', 'aeeb268ced776204222089a53ec10f9a', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1457813662', '1457813662', '0000-00-00 00:00:00', '124.156.73.88', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `ecs_users` VALUES ('12', '', 'wzj4858@163.com', '111111', '7829efb3f9a3a87f300984bb7ae0587a', '', '', '邬志君', '1', '1986-08-24', '0.00', '0.00', '0', '0', '9', '1498443370', '1498708372', '0000-00-00 00:00:00', '0.0.0.0', '1290', '0', '0', '2644', '0', '0', '0', '', '', '', '', '', '13811571327', '0', '0.00', null, null, '', '', null, '', '152634198608240019', '2011-12-10', '2018-12-10', '北京市昌平区', '汉族', '沙河镇北街家园五区1-4-901', '28', '2', '0', '140', '1', '沙河镇北街家园五区', '1', '宝来12年款灰色', '2', '1', '', '4', '0', '2013-01-04', '78.5', '0', '50', '百度外卖', '彩虹大厦', '58832000', '2', '互联网', '基础架构部', '工程师', '2016-09-01', '6');

-- ----------------------------
-- Table structure for `ecs_users_friend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users_friend`;
CREATE TABLE `ecs_users_friend` (
  `friend_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `friend_name` varchar(50) NOT NULL,
  `firend_type` varchar(60) NOT NULL DEFAULT '',
  `friend_phone` varchar(60) NOT NULL DEFAULT '',
  `friend_address` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_users_friend
-- ----------------------------
INSERT INTO `ecs_users_friend` VALUES ('36', '12', '1', '11', '111', '1111');
INSERT INTO `ecs_users_friend` VALUES ('37', '12', '2', '22', '222', '2222');
INSERT INTO `ecs_users_friend` VALUES ('38', '12', '3', '33', '333', '3333');
INSERT INTO `ecs_users_friend` VALUES ('39', '12', '4', '44', '444', '4444');
INSERT INTO `ecs_users_friend` VALUES ('40', '12', '5', '55', '555', '5555');

-- ----------------------------
-- Table structure for `ecs_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_address
-- ----------------------------
INSERT INTO `ecs_user_address` VALUES ('1', '', '1', '张三', 'asdf@asd.com', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '13981750562', '', '');
INSERT INTO `ecs_user_address` VALUES ('5', '', '3', '张三', '75283535@qq.com', '1', '26', '322', '2739', '详细地址详细地址', '', '', '18113131306', '', '');
INSERT INTO `ecs_user_address` VALUES ('6', '', '5', '张三', '', '1', '2', '52', '500', '详细地址详细地址', '', '010-12345678', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('7', '', '9', '开口', '', '1', '5', '65', '629', 'uiyuhuiuighjk', '', '1332552695', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('8', '', '10', '杨彪', '123123@qq.com', '1', '3', '41', '435', '底商0212312', '', '', '18909876543', '', '');
INSERT INTO `ecs_user_address` VALUES ('9', '', '12', '邬志君', 'wzj4858@163.com', '1', '2', '52', '500', '方式来加进来设计分类', '', '58832000', '13811571327', '', '');

-- ----------------------------
-- Table structure for `ecs_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_card`;
CREATE TABLE `ecs_user_card` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ct_id` int(10) unsigned NOT NULL DEFAULT '0',
  `card_level` varchar(60) NOT NULL DEFAULT '',
  `card_no` varchar(60) NOT NULL DEFAULT '',
  `card_pass` varchar(60) NOT NULL DEFAULT '',
  `card_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(60) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `bind_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `true_name` varchar(60) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `is_show` int(1) unsigned NOT NULL DEFAULT '0',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_card_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_card_type`;
CREATE TABLE `ecs_user_card_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ct_id`),
  UNIQUE KEY `ct_name` (`ct_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_card_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_rank
-- ----------------------------
INSERT INTO `ecs_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');

-- ----------------------------
-- Table structure for `ecs_verifycode`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_verifycode`;
CREATE TABLE `ecs_verifycode` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(12) NOT NULL,
  `getip` char(15) NOT NULL,
  `verifycode` char(6) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `reguid` mediumint(8) unsigned DEFAULT '0',
  `regdateline` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_verifycode
-- ----------------------------
INSERT INTO `ecs_verifycode` VALUES ('14', '18113131307', '192.168.1.88', '584771', '1448229828', '5', '1448229970', '2');
INSERT INTO `ecs_verifycode` VALUES ('15', '18113131307', '192.168.1.88', '123456', '1448229970', '5', '0', '7');
INSERT INTO `ecs_verifycode` VALUES ('16', '18113131307', '192.168.1.88', '234567', '1448230011', '5', '0', '6');

-- ----------------------------
-- Table structure for `ecs_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_virtual_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_weixin_autoreg`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_autoreg`;
CREATE TABLE `ecs_weixin_autoreg` (
  `autoreg_id` tinyint(1) NOT NULL,
  `autoreg_rand` tinyint(1) unsigned NOT NULL,
  `autoreg_name` varchar(200) NOT NULL,
  `autoreg_content` text NOT NULL,
  `state` tinyint(1) NOT NULL,
  `rank_id` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`autoreg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_autoreg
-- ----------------------------
INSERT INTO `ecs_weixin_autoreg` VALUES ('1', '2', 'wshop', 'N;', '1', '1');

-- ----------------------------
-- Table structure for `ecs_weixin_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_cfg`;
CREATE TABLE `ecs_weixin_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) DEFAULT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_cfg
-- ----------------------------
INSERT INTO `ecs_weixin_cfg` VALUES ('1', 'murl', 'mobile/', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('2', 'baseurl', 'http://ecshop1.shamuban.com', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('3', 'imgpath', 'local', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('4', 'plustj', 'true', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('5', 'userpwd', 'xkfla', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('8', 'oauth', 'true', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('7', 'bd', 'web', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('9', 'goods', 'false', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('10', 'article', 'article.php?id=', 'yes');
INSERT INTO `ecs_weixin_cfg` VALUES ('13', 'weixin_url', 'http://mp.weixin.qq.com/s?__biz=MzA3NjQ5MDUzNg==&mid=206468600&idx=1&sn=e5bd46e66f70ea2ecdb046e9d6fd8fd0#rd', 'yes');

-- ----------------------------
-- Table structure for `ecs_weixin_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_config`;
CREATE TABLE `ecs_weixin_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_config
-- ----------------------------
INSERT INTO `ecs_weixin_config` VALUES ('1', 'weixintestsa', '', '', 'KEBNgaIdph6lv1A1ZHHClTcsKoZuZcXzPzzjBSTYho1--o_Lr_e2QWNBQkOiK13tB5Rkxt5qXBDnhFBXcLubgvt2WKcIxaS7c9_y6qPpBLMQSBiAJAJLU', '1448449705');

-- ----------------------------
-- Table structure for `ecs_weixin_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_coupon`;
CREATE TABLE `ecs_weixin_coupon` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_coupon
-- ----------------------------
INSERT INTO `ecs_weixin_coupon` VALUES ('1', '0');

-- ----------------------------
-- Table structure for `ecs_weixin_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_keywords`;
CREATE TABLE `ecs_weixin_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_keywords
-- ----------------------------
INSERT INTO `ecs_weixin_keywords` VALUES ('1', '正版申明', 'o菜龙工作室', '1', '支持正版，拒绝倒卖。倒卖者一律取消售后和更新资格。旺旺：O菜龙 店名：O菜龙工作室 <a href=\"http://www.ocailong.com\">http://www.ocailong.com</a> 店铺地址：淘宝搜索 店铺&nbsp;&nbsp; O菜龙工作室', '352', '1');
INSERT INTO `ecs_weixin_keywords` VALUES ('2', 'xkfla1748', 'xkfla1748', '1', 'xkfla1748', '0', '1');
INSERT INTO `ecs_weixin_keywords` VALUES ('4', '1111', '22222', '1', '333333333333333333333333333', '1', '1');

-- ----------------------------
-- Table structure for `ecs_weixin_keywords1`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_keywords1`;
CREATE TABLE `ecs_weixin_keywords1` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `is_start` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_keywords1
-- ----------------------------
INSERT INTO `ecs_weixin_keywords1` VALUES ('14', '关注回复图文', '关注回复图文', '4', '', '11', '1', '0');
INSERT INTO `ecs_weixin_keywords1` VALUES ('27', '关注回复文本', '关注回复文本', '3', '欢迎关注模板之家微信公众演示平台！平台购买旺旺：xkfla。', '1164', '1', '1');

-- ----------------------------
-- Table structure for `ecs_weixin_keywords_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_keywords_article`;
CREATE TABLE `ecs_weixin_keywords_article` (
  `kws_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kws_id`,`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_keywords_article
-- ----------------------------
INSERT INTO `ecs_weixin_keywords_article` VALUES ('14', '23');

-- ----------------------------
-- Table structure for `ecs_weixin_lang`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_lang`;
CREATE TABLE `ecs_weixin_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_lang
-- ----------------------------
INSERT INTO `ecs_weixin_lang` VALUES ('1', 'regmsg', '<p>欢迎关注蓝蜘蛛科技微信公众号</p>');
INSERT INTO `ecs_weixin_lang` VALUES ('2', 'help', '功能说明：\r\n输入news显示新品\r\n输入hot显示热销\r\n输入best显示推荐\r\n输入bd进入绑定会员流程\r\n输入ddcx查询最后一个订单\r\n输入kdcx查询最后一个订单中的快递\r\n输入ddlb显示多个订单信息\r\n输入help显示帮助说明');
INSERT INTO `ecs_weixin_lang` VALUES ('3', 'coupon', '欢迎关注微信公众号,您已经领取过红包');
INSERT INTO `ecs_weixin_lang` VALUES ('4', 'coupon1', '欢迎关注微信公众号,活动期间关注送');
INSERT INTO `ecs_weixin_lang` VALUES ('5', 'coupon2', '欢迎关注微信公众号,红包已送完');
INSERT INTO `ecs_weixin_lang` VALUES ('6', 'coupon3', ',记得要使用哦！');
INSERT INTO `ecs_weixin_lang` VALUES ('7', 'qdok', '签到成功+');
INSERT INTO `ecs_weixin_lang` VALUES ('8', 'qdno', '签到数次已用完');
INSERT INTO `ecs_weixin_lang` VALUES ('9', 'qdstop', '已经关闭了签到');
INSERT INTO `ecs_weixin_lang` VALUES ('10', 'bd', '快速绑定会员帐号，享受我们提供给你更全面的服务');
INSERT INTO `ecs_weixin_lang` VALUES ('11', 'prize_egg', '砸金蛋抽奖规则');
INSERT INTO `ecs_weixin_lang` VALUES ('12', 'prize_dzp', '大转盘抽奖活动说明');

-- ----------------------------
-- Table structure for `ecs_weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_menu`;
CREATE TABLE `ecs_weixin_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(6) NOT NULL,
  `level` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `aid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_menu
-- ----------------------------
INSERT INTO `ecs_weixin_menu` VALUES ('1', 'click', '1', '商品', '', '0');
INSERT INTO `ecs_weixin_menu` VALUES ('2', 'click', '1', '会员', '', '0');
INSERT INTO `ecs_weixin_menu` VALUES ('3', 'click', '1', '客服', '', '0');
INSERT INTO `ecs_weixin_menu` VALUES ('4', 'click', '2', '新品上市', 'news', '1');
INSERT INTO `ecs_weixin_menu` VALUES ('5', 'click', '2', '精品推荐', 'best', '1');
INSERT INTO `ecs_weixin_menu` VALUES ('6', 'click', '2', '热销商品', 'hot', '1');
INSERT INTO `ecs_weixin_menu` VALUES ('7', 'view', '2', '进入首页', 'http://ecshop1.shamuban.com/wechat/oauth/wxch_oauth.php?oid=1', '1');
INSERT INTO `ecs_weixin_menu` VALUES ('8', 'click', '2', '', '', '1');
INSERT INTO `ecs_weixin_menu` VALUES ('9', 'click', '2', '绑定会员', 'bd', '2');
INSERT INTO `ecs_weixin_menu` VALUES ('10', 'click', '2', '我的推广', 'qrcode', '2');
INSERT INTO `ecs_weixin_menu` VALUES ('11', 'view', '2', '分销中心', 'http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=14', '2');
INSERT INTO `ecs_weixin_menu` VALUES ('12', 'click', '2', '帐户资金', 'jfcx', '2');
INSERT INTO `ecs_weixin_menu` VALUES ('13', 'click', '2', '订单查询', 'ddcx', '2');
INSERT INTO `ecs_weixin_menu` VALUES ('14', 'click', '2', '呼叫客服', 'kefu', '3');
INSERT INTO `ecs_weixin_menu` VALUES ('15', 'click', '2', '二维码图片', 'ewm', '3');
INSERT INTO `ecs_weixin_menu` VALUES ('16', 'click', '2', '大转盘', 'dzp', '3');
INSERT INTO `ecs_weixin_menu` VALUES ('17', 'click', '2', '砸金蛋', 'zjd', '3');
INSERT INTO `ecs_weixin_menu` VALUES ('18', 'click', '2', '签到', 'qiandao', '3');

-- ----------------------------
-- Table structure for `ecs_weixin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_message`;
CREATE TABLE `ecs_weixin_message` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `w_message` text NOT NULL,
  `message` text NOT NULL,
  `belong` int(9) unsigned NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wxid` (`wxid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_message
-- ----------------------------
INSERT INTO `ecs_weixin_message` VALUES ('1', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448432277');
INSERT INTO `ecs_weixin_message` VALUES ('2', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '1', '1448432277');
INSERT INTO `ecs_weixin_message` VALUES ('3', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:subscribe', '0', '1448435379');
INSERT INTO `ecs_weixin_message` VALUES ('4', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448435402');
INSERT INTO `ecs_weixin_message` VALUES ('5', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448435402');
INSERT INTO `ecs_weixin_message` VALUES ('6', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:subscribe', '0', '1448435527');
INSERT INTO `ecs_weixin_message` VALUES ('7', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:member', '0', '1448435693');
INSERT INTO `ecs_weixin_message` VALUES ('8', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"member\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>', '', '0', '1448435693');
INSERT INTO `ecs_weixin_message` VALUES ('9', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:cxbd', '0', '1448435699');
INSERT INTO `ecs_weixin_message` VALUES ('10', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=49\'>1分钱支付测试商品</a>', '', '0', '1448435699');
INSERT INTO `ecs_weixin_message` VALUES ('11', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:cxbd', '0', '1448435708');
INSERT INTO `ecs_weixin_message` VALUES ('12', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>', '', '0', '1448435708');
INSERT INTO `ecs_weixin_message` VALUES ('13', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:promote', '0', '1448435716');
INSERT INTO `ecs_weixin_message` VALUES ('14', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"promote\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=42\'>带包包棉夹克宠物服饰小狗衣服</a>', '', '0', '1448435716');
INSERT INTO `ecs_weixin_message` VALUES ('15', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448435736');
INSERT INTO `ecs_weixin_message` VALUES ('16', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448435736');
INSERT INTO `ecs_weixin_message` VALUES ('17', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:subscribe', '0', '1448435763');
INSERT INTO `ecs_weixin_message` VALUES ('18', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:cxbd', '0', '1448435769');
INSERT INTO `ecs_weixin_message` VALUES ('19', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=35\'>狗狗拔毛粉泰迪贵宾犬耳朵清洁耳道消炎杀菌50g</a>', '', '0', '1448435769');
INSERT INTO `ecs_weixin_message` VALUES ('20', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448436009');
INSERT INTO `ecs_weixin_message` VALUES ('21', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448436009');
INSERT INTO `ecs_weixin_message` VALUES ('22', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448436049');
INSERT INTO `ecs_weixin_message` VALUES ('23', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448436049');
INSERT INTO `ecs_weixin_message` VALUES ('24', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:news', '0', '1448436083');
INSERT INTO `ecs_weixin_message` VALUES ('25', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448436083');
INSERT INTO `ecs_weixin_message` VALUES ('26', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448436203');
INSERT INTO `ecs_weixin_message` VALUES ('27', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448436203');
INSERT INTO `ecs_weixin_message` VALUES ('28', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:zjd', '0', '1448436222');
INSERT INTO `ecs_weixin_message` VALUES ('29', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448436222');
INSERT INTO `ecs_weixin_message` VALUES ('30', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:dzp', '0', '1448436228');
INSERT INTO `ecs_weixin_message` VALUES ('31', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448436228');
INSERT INTO `ecs_weixin_message` VALUES ('32', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:jfcx', '0', '1448436247');
INSERT INTO `ecs_weixin_message` VALUES ('33', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '余额：0.00\r\n积分：65', '', '0', '1448436247');
INSERT INTO `ecs_weixin_message` VALUES ('34', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:ddcx', '0', '1448436256');
INSERT INTO `ecs_weixin_message` VALUES ('35', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您还没有订单', '', '0', '1448436256');
INSERT INTO `ecs_weixin_message` VALUES ('36', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448436692');
INSERT INTO `ecs_weixin_message` VALUES ('37', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448436692');
INSERT INTO `ecs_weixin_message` VALUES ('38', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448436936');
INSERT INTO `ecs_weixin_message` VALUES ('39', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448436936');
INSERT INTO `ecs_weixin_message` VALUES ('40', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:qrcode', '0', '1448437216');
INSERT INTO `ecs_weixin_message` VALUES ('41', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448437218');
INSERT INTO `ecs_weixin_message` VALUES ('42', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1', '0', '1448437225');
INSERT INTO `ecs_weixin_message` VALUES ('43', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>', '', '0', '1448437225');
INSERT INTO `ecs_weixin_message` VALUES ('44', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1', '0', '1448437237');
INSERT INTO `ecs_weixin_message` VALUES ('45', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=49\'>1分钱支付测试商品</a>', '', '0', '1448437237');
INSERT INTO `ecs_weixin_message` VALUES ('46', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448437640');
INSERT INTO `ecs_weixin_message` VALUES ('47', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448437640');
INSERT INTO `ecs_weixin_message` VALUES ('48', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:subscribe', '0', '1448437674');
INSERT INTO `ecs_weixin_message` VALUES ('49', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:best', '0', '1448438281');
INSERT INTO `ecs_weixin_message` VALUES ('50', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448438281');
INSERT INTO `ecs_weixin_message` VALUES ('51', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448438854');
INSERT INTO `ecs_weixin_message` VALUES ('52', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448438854');
INSERT INTO `ecs_weixin_message` VALUES ('53', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:dzp', '0', '1448438889');
INSERT INTO `ecs_weixin_message` VALUES ('54', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448438889');
INSERT INTO `ecs_weixin_message` VALUES ('55', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:zjd', '0', '1448438919');
INSERT INTO `ecs_weixin_message` VALUES ('56', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448438919');
INSERT INTO `ecs_weixin_message` VALUES ('57', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:dzp', '0', '1448438951');
INSERT INTO `ecs_weixin_message` VALUES ('58', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448438951');
INSERT INTO `ecs_weixin_message` VALUES ('59', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:ddcx', '0', '1448439061');
INSERT INTO `ecs_weixin_message` VALUES ('60', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448439061');
INSERT INTO `ecs_weixin_message` VALUES ('61', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1', '0', '1448439450');
INSERT INTO `ecs_weixin_message` VALUES ('62', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=5\'>宝路中小型犬成犬牛肉通用犬粮7.5kg</a>', '', '0', '1448439450');
INSERT INTO `ecs_weixin_message` VALUES ('63', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:bd', '0', '1448449705');
INSERT INTO `ecs_weixin_message` VALUES ('64', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>', '', '0', '1448449705');
INSERT INTO `ecs_weixin_message` VALUES ('65', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:qrcode', '0', '1448449751');
INSERT INTO `ecs_weixin_message` VALUES ('66', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448449752');
INSERT INTO `ecs_weixin_message` VALUES ('67', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:ewm', '0', '1448449778');
INSERT INTO `ecs_weixin_message` VALUES ('68', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'M0Vs4XYydBgFZ2-QAMfT_dyTgryaPnP8K4n-Z2udS5lcaBPZsIuD9J0EJjOJksE5', '', '0', '1448449780');
INSERT INTO `ecs_weixin_message` VALUES ('69', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:ewm', '0', '1448449783');
INSERT INTO `ecs_weixin_message` VALUES ('70', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '6c2I0KAQdQtnxnwY1c79Az-ZfCXVJyI9HYQSEY1OCktmpFmuSC2cylQWg6zuxg1b', '', '0', '1448449784');
INSERT INTO `ecs_weixin_message` VALUES ('71', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:qrcode', '0', '1448449793');
INSERT INTO `ecs_weixin_message` VALUES ('72', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448449794');
INSERT INTO `ecs_weixin_message` VALUES ('73', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '', 'menu:', '0', '1448682494');
INSERT INTO `ecs_weixin_message` VALUES ('74', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '图文消息', '', '0', '1448682494');

-- ----------------------------
-- Table structure for `ecs_weixin_msg`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_msg`;
CREATE TABLE `ecs_weixin_msg` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `function` varchar(30) NOT NULL,
  `command` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_msg
-- ----------------------------
INSERT INTO `ecs_weixin_msg` VALUES ('1', '新品', 'news', 'xk 新款 News');
INSERT INTO `ecs_weixin_msg` VALUES ('2', '精品', 'best', 'Best 精品');
INSERT INTO `ecs_weixin_msg` VALUES ('3', '热销', 'hot', 'Hot 热销');
INSERT INTO `ecs_weixin_msg` VALUES ('4', '绑定会员', 'bd', 'BD Bd 绑定会员');
INSERT INTO `ecs_weixin_msg` VALUES ('5', '重新绑定', 'cxbd', '重新绑定 Cxbd');
INSERT INTO `ecs_weixin_msg` VALUES ('6', '订单列表', 'ddlb', '订单列表 Ddlb');
INSERT INTO `ecs_weixin_msg` VALUES ('7', '订单查询', 'ddcx', '订单查询 Ddcx');
INSERT INTO `ecs_weixin_msg` VALUES ('8', '订单快递', 'kdcx', '订单快递 Kdcx');
INSERT INTO `ecs_weixin_msg` VALUES ('9', '帮助说明', 'help', '帮助说明 Help 帮助');
INSERT INTO `ecs_weixin_msg` VALUES ('10', '砸金蛋', 'zjd', '砸金蛋 Zjd');
INSERT INTO `ecs_weixin_msg` VALUES ('11', '签到', 'qiandao', 'qiandao 签到');
INSERT INTO `ecs_weixin_msg` VALUES ('12', '大转盘', 'dzp', '大转盘 Dzp');

-- ----------------------------
-- Table structure for `ecs_weixin_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_oauth`;
CREATE TABLE `ecs_weixin_oauth` (
  `oid` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_oauth
-- ----------------------------
INSERT INTO `ecs_weixin_oauth` VALUES ('1', '手机版网站首页', 'http://ecshop1.shamuban.com/mobile', '3942', '1');
INSERT INTO `ecs_weixin_oauth` VALUES ('12', '推广教程', 'http://ecshop1.shamuban.com/mobile/article.php?id=37', '2053', '1');
INSERT INTO `ecs_weixin_oauth` VALUES ('13', '推广首页', 'http://sp.codes5.com/mobile/', '4928', '1');
INSERT INTO `ecs_weixin_oauth` VALUES ('14', '分销中心', 'http://sp.codes5.com/mobile/distribute.php', '4604', '1');
INSERT INTO `ecs_weixin_oauth` VALUES ('15', '单品推广演示', 'http://sp.codes5.com/mobile/xkfla2015.php', '87', '1');

-- ----------------------------
-- Table structure for `ecs_weixin_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_order`;
CREATE TABLE `ecs_weixin_order` (
  `id` tinyint(1) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `autoload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_order
-- ----------------------------
INSERT INTO `ecs_weixin_order` VALUES ('1', 'order', '发货提醒', 'images/201504/1427952990857338988.jpg', '<p>&nbsp;ffffff</p>', 'yes');
INSERT INTO `ecs_weixin_order` VALUES ('2', 'reorder', '订单确认提醒', 'images/201504/1427952978792506840.jpg', 'fff', 'yes');
INSERT INTO `ecs_weixin_order` VALUES ('3', 'pay', '成功支付', 'images/201504/1428653561481550531.jpg', '已经成功支付', 'yes');

-- ----------------------------
-- Table structure for `ecs_weixin_pay`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_pay`;
CREATE TABLE `ecs_weixin_pay` (
  `id` int(1) NOT NULL,
  `appid` char(18) NOT NULL,
  `paysignkey` char(128) NOT NULL,
  `partnerkey` char(32) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_pay
-- ----------------------------
INSERT INTO `ecs_weixin_pay` VALUES ('1', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `ecs_weixin_point`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_point`;
CREATE TABLE `ecs_weixin_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_point
-- ----------------------------
INSERT INTO `ecs_weixin_point` VALUES ('1', 'news', '5', '2', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('2', 'best', '15', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('3', 'hot', '5', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('4', 'bd', '30', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('5', 'ddcx', '5', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('6', 'kdcx', '5', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('7', 'zjd', '5', '0', 'no');
INSERT INTO `ecs_weixin_point` VALUES ('8', 'qiandao', '10', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('9', 'dzp', '10', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('11', 'share_fpoint', '10', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('12', 'share_dfpoint', '10', '1', 'yes');
INSERT INTO `ecs_weixin_point` VALUES ('13', 'g_point', '10', '5', 'yes');

-- ----------------------------
-- Table structure for `ecs_weixin_point_record`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_point_record`;
CREATE TABLE `ecs_weixin_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_point_record
-- ----------------------------
INSERT INTO `ecs_weixin_point_record` VALUES ('1', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'g_point', '4', '1448437675', '1448435382');
INSERT INTO `ecs_weixin_point_record` VALUES ('2', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'bd', '1', '1448436050', '1448436050');
INSERT INTO `ecs_weixin_point_record` VALUES ('3', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'news', '1', '1448436084', '1448436084');
INSERT INTO `ecs_weixin_point_record` VALUES ('4', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'zjd', '1', '1448436222', '1448436222');
INSERT INTO `ecs_weixin_point_record` VALUES ('5', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'dzp', '1', '1448436229', '1448436229');
INSERT INTO `ecs_weixin_point_record` VALUES ('6', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'best', '1', '1448438282', '1448438282');
INSERT INTO `ecs_weixin_point_record` VALUES ('7', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'ddcx', '1', '1448439061', '1448439061');

-- ----------------------------
-- Table structure for `ecs_weixin_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize`;
CREATE TABLE `ecs_weixin_prize` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `fun` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `count` int(8) NOT NULL,
  `loop` int(3) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  `point` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize
-- ----------------------------
INSERT INTO `ecs_weixin_prize` VALUES ('1', '正在测试的', 'egg', '1', '1', '210', '1', '1394899200', '1460649600', '1420996251', '10');
INSERT INTO `ecs_weixin_prize` VALUES ('2', '大转盘', 'dzp', '1', '10', '477', '1', '1420732800', '1486742400', '1429164887', '3');

-- ----------------------------
-- Table structure for `ecs_weixin_prize_append`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize_append`;
CREATE TABLE `ecs_weixin_prize_append` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `prize_id` int(4) unsigned NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize_append
-- ----------------------------
INSERT INTO `ecs_weixin_prize_append` VALUES ('1', '2', 'iphone6', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('2', '2', 'iphone5', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('3', '2', 'iphone4', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('4', '2', 'ipad', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('5', '2', '', '0');
INSERT INTO `ecs_weixin_prize_append` VALUES ('6', '2', '', '0');
INSERT INTO `ecs_weixin_prize_append` VALUES ('7', '1', '100元话费', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('8', '1', '50元话费', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('9', '1', '20元话费', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('10', '1', '5元话费', '10');
INSERT INTO `ecs_weixin_prize_append` VALUES ('11', '1', '', '0');
INSERT INTO `ecs_weixin_prize_append` VALUES ('12', '1', '', '0');

-- ----------------------------
-- Table structure for `ecs_weixin_prize_cnum`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize_cnum`;
CREATE TABLE `ecs_weixin_prize_cnum` (
  `pcid` int(5) NOT NULL AUTO_INCREMENT,
  `paid` int(5) NOT NULL,
  `pid` int(4) NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  `user_count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize_cnum
-- ----------------------------
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('1', '0', '2', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('2', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('3', '0', '2', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('4', '0', '2', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('5', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('6', '0', '2', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('7', '3', '2', 'iphone4', '1', '10');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('8', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('9', '2', '2', 'iphone5', '1', '10');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('10', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('11', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('12', '4', '2', 'ipad', '8', '254');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('13', '0', '1', 'null', '0', '1');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('14', '1', '2', 'iphone6', '1', '10');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('15', '9', '1', '20元话费', '1', '10');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('16', '10', '1', '5元话费', '9', '119');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('17', '8', '1', '50元话费', '1', '10');
INSERT INTO `ecs_weixin_prize_cnum` VALUES ('18', '7', '1', '100元话费', '1', '10');

-- ----------------------------
-- Table structure for `ecs_weixin_prize_count`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize_count`;
CREATE TABLE `ecs_weixin_prize_count` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize_count
-- ----------------------------
INSERT INTO `ecs_weixin_prize_count` VALUES ('1', '2', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '1', '1', '1448438970', '1448438970');

-- ----------------------------
-- Table structure for `ecs_weixin_prize_register`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize_register`;
CREATE TABLE `ecs_weixin_prize_register` (
  `rid` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `wxid` (`wxid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize_register
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_weixin_prize_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_prize_users`;
CREATE TABLE `ecs_weixin_prize_users` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL DEFAULT '',
  `fun` varchar(10) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `prize_id` int(5) DEFAULT NULL,
  `prize_name` varchar(64) DEFAULT NULL,
  `prize_sn` varchar(35) NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `yn` varchar(3) NOT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prize_id` (`prize_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_prize_users
-- ----------------------------
INSERT INTO `ecs_weixin_prize_users` VALUES ('1', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', 'dzp', '徐凯', '2', 'ipad', '268857341d3dc60babe8219b55465c3c', '0', '1', 'no', '1448438970');

-- ----------------------------
-- Table structure for `ecs_weixin_qr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_qr`;
CREATE TABLE `ecs_weixin_qr` (
  `qid` int(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(2) NOT NULL,
  `expire_seconds` int(4) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  `scene_id` int(7) NOT NULL,
  `ticket` varchar(120) NOT NULL,
  `scene` varchar(200) NOT NULL,
  `qr_path` varchar(200) NOT NULL,
  `subscribe` int(8) unsigned NOT NULL,
  `scan` int(8) unsigned NOT NULL,
  `function` varchar(100) NOT NULL,
  `affiliate` int(8) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_qr
-- ----------------------------
INSERT INTO `ecs_weixin_qr` VALUES ('1', 'tj', '0', 'QR_LIMIT_SCENE', '5', 'gQHI7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3dFeFZCbW5sYy1JS0FwbDRwMkRmAAIE4WVVVgMEAAAAAA==', 'aaaaa', 'http://sp.codes5.com/images/qrcode/qrcode_430/oG9l1t6rvjOCmUHiXQGvvVwpviWM.jpg', '0', '0', '', '5', '0', '0');

-- ----------------------------
-- Table structure for `ecs_weixin_qr_xkfla2015`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_qr_xkfla2015`;
CREATE TABLE `ecs_weixin_qr_xkfla2015` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `qr_path` varchar(255) DEFAULT NULL,
  `scene` varchar(255) DEFAULT NULL,
  `scene_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_qr_xkfla2015
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_weixin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_user`;
CREATE TABLE `ecs_weixin_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `affiliate` int(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_user
-- ----------------------------
INSERT INTO `ecs_weixin_user` VALUES ('2', '0', 'oG9l1t6rvjOCmUHiXQGvvVwpviWM', '徐凯', '1', '成都', '中国', '四川', 'zh_CN', 'http://wx.qlogo.cn/mmopen/YUHWia7ps2muHW8unr12GxvorGm1xmeEEsXcDTHV76zYfrCOytzF7iaV1TpnT3JicHQP9O9xRCf1ThCBAvTz82L8Ow9vTiaD43Gic/0', '1448437674', '', '3', 'aaaaa', '', '0', '1448682494');

-- ----------------------------
-- Table structure for `ecs_weixin_ver`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_weixin_ver`;
CREATE TABLE `ecs_weixin_ver` (
  `vid` tinyint(1) NOT NULL,
  `type` varchar(5) NOT NULL,
  `ver` varchar(8) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_weixin_ver
-- ----------------------------
