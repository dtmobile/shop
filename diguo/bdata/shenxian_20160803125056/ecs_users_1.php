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
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_users` values('165','','shop@admin.com','shop','dc483e80a7a0bd9ef71d8cf973673924','','','0','0000-00-00','0.00','0.00','0','0','0','1469173704','1469173704','0000-00-00 00:00:00','127.0.0.1','1','0','0',NULL,'0','0','0','','','','','','18860407525','0','0.00',NULL,NULL,'','',NULL,'');");
E_D("replace into `ecs_users` values('166','','admin@qq.com','shop1','dc483e80a7a0bd9ef71d8cf973673924','','','0','0000-00-00','0.00','0.00','0','0','0','1469173977','1469173977','0000-00-00 00:00:00','127.0.0.1','1','0','0',NULL,'0','0','0','','','','','','18860407525','0','0.00',NULL,NULL,'','',NULL,'');");
E_D("replace into `ecs_users` values('167','','gaochao@qq.com','idchao','e10adc3949ba59abbe56e057f20f883e','','','0','0000-00-00','0.00','0.00','0','0','0','1469216331','1469216331','0000-00-00 00:00:00','127.0.0.1','1','0','0',NULL,'0','0','0','','','','','','18949646464','0','0.00',NULL,NULL,'','',NULL,'');");
E_D("replace into `ecs_users` values('168','','','test789','3f3add1d508346446be41dba6d70b1dc','','','0','0000-00-00','9977.79','0.00','134','134','52','1470165349','1470171026','0000-00-00 00:00:00','127.0.0.1','89','0','0','9608','0','0','0','','','','','','18860407525','0','0.00',NULL,NULL,'','','fddd','');");

require("../../inc/footer.php");
?>