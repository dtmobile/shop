<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_order_info`;");
E_C("CREATE TABLE `ecs_order_info` (
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
  `shipping_time_end` int(10) DEFAULT '0',
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
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_order_info` values('71','2015112300972','5','2','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','6','货到付款','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448230282','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('72','2015112391096','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','8','余额支付','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.01','0','0.00','0.00','0.00','0','本站','1448231164','1448231164','1448231164','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('73','2015112356122','5','5','2','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448232418','1448232764','0','1448232942','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('74','2015112318877','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','8','余额支付','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.01','0','0.00','0.00','0.00','0','本站','1448234136','1448234136','1448234136','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('75','2015112367655','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448234226','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('76','2015112357527','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448234455','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('77','2015112348209','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448235224','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('78','2015112370348','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448235602','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('79','2015112335486','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448236363','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('80','2015112344905','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448237362','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('81','2015112385195','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448237498','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('82','2015112381487','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448237554','1448237596','1448237596','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('83','2015112363574','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448237652','1448237675','1448237675','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('84','2015112337132','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448238845','1448238879','1448238879','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('85','2015112357841','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448239056','1448239080','1448239080','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('86','2015112318905','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448239318','1448239341','1448239341','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('87','2015112367767','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448239682','1448239705','1448239705','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('88','2015112372682','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448239962','1448239985','1448239985','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('89','2015112360459','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448240318','1448240341','1448240341','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('90','2015112372725','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448240418','1448240443','1448240443','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('91','2015112346450','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448240969','1448241017','1448241017','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('92','2015112353930','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448241163','1448241185','1448241185','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('93','2015112355924','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448241333','1448241358','1448241358','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('94','2015112344712','5','5','1','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448241704','1448241731','1448241731','1448409431','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('95','2015112366532','5','5','1','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448241849','1448241875','1448241875','1448250063','0','0','0','111111111','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('96','2015112314657','5','5','1','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','0','','等待所有商品备齐后再发','','','','','','','0.01','15.00','0.00','0.00','0.00','0.00','15.01','0.00','0','0.00','0.00','0.00','0','本站','1448242012','1448242033','1448247381','1448247519','0','0','0','590716750039','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('97','2015112369856','5','5','2','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448242105','1448242130','1448242130','1448242320','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('98','2015112315443','5','2','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448242199','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('99','2015112523378','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','本站','1448409522','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('100','2015112561257','5','5','1','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','本站','1448409894','1448409922','1448409922','1448409980','0','0','0','590716750039','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('101','2015112818794','0','0','0','0','斯蒂芬','1','3','39','422','隧道股份斯蒂芬森','','+8657985656219','13735669965','1448996485@qq.com','','','','2','运费到付','1','支付宝','等待所有商品备齐后再发','','','','','','','99.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','99.00','0','pc站','1448687940','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00',NULL,'0');");
E_D("replace into `ecs_order_info` values('105','2015122058894','0','0','0','0','朱佳','1','14','197','1648','马王堆火炬南萨韩鹏','','','18711012736','6427002@qq.com','','','','3','顺丰速运','1','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','pc站','1450572446','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('112','2016031397916','5','1','0','2','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','9','微信支付','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.01','0.00','0','0.00','0.00','0.00','0','微信','1457820103','1457820141','1457820141','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('114','2016031302560','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','微信','1457824800','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('115','2016031331255','0','0','0','0','小七','1','2','52','506','测试路11号','','1234567','','','','','','3','顺丰速运','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','微信','1457824875','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('116','2016031361759','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','微信','1457824924','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('118','2016031325901','5','0','0','0','张三','1','2','52','500','详细地址详细地址','','010-12345678','','','','','','3','顺丰速运','4','支付宝','等待所有商品备齐后再发','','','','','','','0.01','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','0.01','0','微信','1457825487','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','0.01','0');");
E_D("replace into `ecs_order_info` values('122','2016031612187','0','0','0','0','呃呃呃','1','5','63','615','eeeeeeeeeeeeeeeeeeeeee','','','13122222222','44444444@qq.com','','','','4','圆通速递','6','微信扫码支付','等待所有商品备齐后再发','','','','','','','156.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','156.00','0','pc站','1458107124','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','156','0');");
E_D("replace into `ecs_order_info` values('123','2016031611865','0','0','0','0','超级买家','1','4','55','538','请如实填写收货人详细地址','','','13122222222','44444444@qq.com','','','','3','顺丰速运','6','微信扫码支付','等待所有商品备齐后再发','','','','','','','88.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','88.00','0','pc站','1458107322','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','88','0');");
E_D("replace into `ecs_order_info` values('125','2016080393285','168','5','2','2','asdfasdf','1','2','52','500','sadfasdfas','','18973178881','','','','','','3','顺丰速运','7','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','134.40','15.00','0.00','0.00','0.00','0.00','149.40','0.00','0','0.00','0.00','0.00','0','wap站','1470165403','1470165432','1470165438','1470165455','0','0','0','','','0','','','0','','0.00','0','0','0.00','134.4','0');");
E_D("replace into `ecs_order_info` values('126','2016080356277','0','0','0','0','asdfasdf','1','2','52','500','sadfasdfas','','18973178881','','','','','','1','上门取货','4','支付宝','等待所有商品备齐后再发','','','','','','','168.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','168.00','0','wap站','1470166223','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','168','0');");
E_D("replace into `ecs_order_info` values('127','2016080311912','168','1','0','2','asdfasdf','1','2','52','500','sadfasdfas','','18973178881','','','','','','3','顺丰速运','8','余额支付','等待所有商品备齐后再发','','','','','','','7.21','15.00','0.00','0.00','0.00','0.00','0.00','22.21','0','0.00','0.00','0.00','0','wap站','1470169867','1470169867','1470169867','0','0','0','0','','','0','','','0','','0.00','0','0','0.00','7.21','0');");

require("../../inc/footer.php");
?>