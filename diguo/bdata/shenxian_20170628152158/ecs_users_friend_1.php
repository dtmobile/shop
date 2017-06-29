<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_users_friend`;");
E_C("CREATE TABLE `ecs_users_friend` (
  `friend_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `friend_name` varchar(50) NOT NULL,
  `firend_type` varchar(60) NOT NULL DEFAULT '',
  `friend_phone` varchar(60) NOT NULL DEFAULT '',
  `friend_address` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_users_friend` values('36','12','1','11','111','1111');");
E_D("replace into `ecs_users_friend` values('37','12','2','22','222','2222');");
E_D("replace into `ecs_users_friend` values('38','12','3','33','333','3333');");
E_D("replace into `ecs_users_friend` values('39','12','4','44','444','4444');");
E_D("replace into `ecs_users_friend` values('40','12','5','55','555','5555');");

require("../../inc/footer.php");
?>