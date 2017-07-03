<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_sessions`;");
E_C("CREATE TABLE `ecs_sessions` (
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
) ENGINE=MEMORY DEFAULT CHARSET=utf8");
E_D("replace into `ecs_sessions` values('edb498fea4685ec11fea6a4e7538919b','1470199662','0','1','127.0.0.1','0','0','0.00','0','a:5:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1470170862;s:12:\"suppliers_id\";s:1:\"0\";s:7:\"act_uri\";s:7:\"tuijian\";}');");
E_D("replace into `ecs_sessions` values('40f782ff8543397968c7b6447ce6603f','1470198643','0','1','127.0.0.1','0','0','0.00','0','a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1470169813;s:12:\"suppliers_id\";s:1:\"0\";}');");
E_D("replace into `ecs_sessions` values('716dcee5d5d27450305a5ae5e84a8cd6','1470199390','168','0','127.0.0.1','test789','1','0.80','0','');");
E_D("replace into `ecs_sessions` values('0f9d554df47a9e9411aa4dff6577c2e5','1470198152','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('850a17e4c5ff9976d736151e8f9f3616','1470198152','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('03f0315926f2d8845ff5cc99785dcf64','1470198138','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('4ef439e3425c40306065631bf6e3e65e','1470198137','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('bbd1218e58d7d5951a482c2e720e374a','1470198123','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('61eed55163f2424b23debdc222e5da23','1470198118','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('bb166491fa78e8abf0500a7978482878','1470198113','0','0','127.0.0.1','0','0','1.00','0','a:4:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZDFhM2RiZmE1Yg==\";}');");
E_D("replace into `ecs_sessions` values('f317aad3b70c437b0fcc22845008032d','1470198099','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('8bcb9629a624a56284065b4be467c7ec','1470198099','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('c82135133d88cc77ebcc7156a90c23cb','1470198095','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('f0df849f18ab395747b7450479c8dd57','1470198095','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('8112aef67f1bcf9e184e52f50d88d959','1470198094','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('5b4b664d55e994c38aa45aa585c69f86','1470199829','0','0','127.0.0.1','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('eb4c75dc5af8326b298cb308bcf11270','1470199805','0','1','127.0.0.1','0','0','0.00','0','a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1470170935;s:12:\"suppliers_id\";s:1:\"0\";}');");

require("../../inc/footer.php");
?>