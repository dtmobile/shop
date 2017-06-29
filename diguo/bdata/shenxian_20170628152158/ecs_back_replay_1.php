<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_back_replay`;");
E_C("CREATE TABLE `ecs_back_replay` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_back_replay` values('1','4','dddd','1470170568','1');");

require("../../inc/footer.php");
?>