<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_order_goods`;");
E_C("CREATE TABLE `ecs_order_goods` (
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
  `is_back` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_order_goods` values('71','71','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('72','72','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('73','73','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('74','74','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('75','75','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('76','76','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('77','77','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('78','78','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('79','79','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('80','80','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('81','81','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('82','82','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('83','83','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('84','84','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('85','85','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('86','86','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('87','87','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('88','88','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('89','89','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('90','90','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('91','91','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('92','92','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('93','93','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('94','94','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('95','95','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('96','96','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('97','97','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('98','98','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('99','99','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('100','100','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('101','101','43','豪华可拆洗狗窝泰迪小狗狗用品狗房子','ECS000043','0','1','153.60','99.00','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('105','105','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('114','112','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('116','114','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('117','115','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('118','116','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('120','118','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('124','122','1','新鲜水果甜蜜香脆单果约800克','ECS000000','4','1','231.60','156.00','重量:500克 \n外观:红色 \n款式:时尚款 \n','0','1','','0','0','4,7,1','0');");
E_D("replace into `ecs_order_goods` values('125','123','48','新疆巴尔鲁克生鲜牛排眼肉牛扒1200g','ECS000048','0','1','126.00','88.00','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('127','125','9','爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g','ECS000009','0','1','201.60','134.40','','1','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('128','126','9','爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g','ECS000009','0','1','201.60','168.00','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('129','127','49','1分钱支付测试商品','ECS000049','0','1','0.01','0.01','','0','1','','0','0','','0');");
E_D("replace into `ecs_order_goods` values('130','127','30','泰国菠萝蜜16-18斤 1个装','ECS000030','0','1','10.79','7.20','','0','1','','0','0','','0');");

require("../../inc/footer.php");
?>