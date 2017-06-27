<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_back_goods`;");
E_C("CREATE TABLE `ecs_back_goods` (
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
  `back_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL,
  `back_goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `back_goods_number` smallint(5) unsigned NOT NULL,
  `status_back` tinyint(1) NOT NULL DEFAULT '0',
  `status_refund` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_back_goods` values('1','1','9','0',NULL,'爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g',NULL,'ECS000009','0','0','','0','0','134.40','1','5','0');");
E_D("replace into `ecs_back_goods` values('2','2','9','0',NULL,'爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g',NULL,'ECS000009','0','0','','0','0','134.40','1','5','0');");
E_D("replace into `ecs_back_goods` values('3','3','49','0',NULL,'1分钱支付测试商品',NULL,'ECS000049','0','0','','4','0','0.01','1','5','0');");
E_D("replace into `ecs_back_goods` values('4','4','30','0',NULL,'泰国菠萝蜜16-18斤 1个装',NULL,'ECS000030','0','0','','4','0','7.20','1','5','0');");

require("../../inc/footer.php");
?>