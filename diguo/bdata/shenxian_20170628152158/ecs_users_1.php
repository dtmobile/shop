<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_users`;");
E_C("CREATE TABLE `ecs_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_users` values('1','','adf@adsf.com','aabbcc','5d1c2d83408fed211dce1f7ff5d9a70a','','','','0','0000-00-00','11023.00','0.00','111105699','88','1','1447960293','1449090803','0000-00-00 00:00:00','192.168.1.88','14','0','0','6088','0','5','0','','','','','','','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('2','','service@66mail.cn','xkfla','c79914def32521f87f126be109ba2904','','','','0','0000-00-00','0.00','0.00','0','0','0','1448157869','1448166558','0000-00-00 00:00:00','192.168.1.88','6','0','0','3959','0','0','0','','','','','','15884444720','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('3','','75283535@qq.com','18113131306','1de33d10f9cecfdcbb2d18b045ac6496','','','','0','1955-01-01','-0.02','0.00','0','0','5','1448162628','1448225920','0000-00-00 00:00:00','192.168.1.88','3','0','0','8136','0','0','0','','','','','','18113131306','0','1111.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('4','','','abcabc','68b89cde86ed3e7524579fdd8ef18195','','','','0','0000-00-00','0.00','0.00','0','0','0','1448228380','1448229023','0000-00-00 00:00:00','192.168.1.88','2','0','0','9964','0','0','0','','','','','','18980923392','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('5','','','aaaaa','9a70b2a1ab88e395f3b22dbdcf5ea0ac','','','','0','0000-00-00','908.80','0.00','27','9','6','1448229970','1448410717','0000-00-00 00:00:00','171.214.146.138','88','1','0','9188','0','0','0','','','','','','18113131307','0','0.00','','','oG9l1t6rvjOCmUHiXQGvvVwpviWM','ok','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('8','','12354668@156.com','546971327','08ab2d4cce95eb4299f54b6b3c90372d','','','','0','0000-00-00','0.00','0.00','0','0','0','1448607028','1448607028','0000-00-00 00:00:00','182.247.135.57','1','0','0','','0','0','0','','','','','','18088000102','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('9','','','123456788','14920e4fd7326eef04639adb243d8b1b','','','','255','0000-00-00','0.00','0.00','0','0','7','1449360036','1449360129','0000-00-00 00:00:00','123.169.114.29','2','0','0','8519','0','0','0','','','','','','','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('10','','123123@qq.com','buyer','3dc8d329819893cf0923a10920a7ac30','','','','0','0000-00-00','0.00','0.00','0','0','8','1449386881','1449388613','0000-00-00 00:00:00','118.186.147.17','2','0','0','5130','0','0','0','','','','','','','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('11','','','dithion','aeeb268ced776204222089a53ec10f9a','','','','0','0000-00-00','0.00','0.00','0','0','0','1457813662','1457813662','0000-00-00 00:00:00','124.156.73.88','1','0','0','','0','0','0','','','','','','','0','0.00','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
E_D("replace into `ecs_users` values('12','','wzj4858@163.com','111111','7829efb3f9a3a87f300984bb7ae0587a','','','邬志君','1','1986-08-24','0.00','0.00','0','0','0','1498443370','1498632391','0000-00-00 00:00:00','0.0.0.0','782','0','0','2644','0','0','0','','','','','','13811571327','0','0.00',NULL,NULL,'','',NULL,'','152634198608240019','2011-12-10','2018-12-10','北京市昌平区','汉族','沙河镇北街家园五区1-4-901','28','2','0','140','1','沙河镇北街家园五区','1','宝来12年款灰色','2','1','','4','0','2013-01-04','78.5','0','50','百度外卖','彩虹大厦','58832000','2','互联网','基础架构部','工程师','2016-09-01','6');");
E_D("replace into `ecs_users` values('13','','www.123@qq.com','test2','4297f44b13955235245b2497399d7a93','','','','0','0000-00-00','0.00','0.00','0','0','0','1498634273','1498634273','0000-00-00 00:00:00','127.0.0.1','1','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");

require("../../inc/footer.php");
?>