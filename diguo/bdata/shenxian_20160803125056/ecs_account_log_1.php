<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_account_log`;");
E_C("CREATE TABLE `ecs_account_log` (
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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_account_log` values('8','5','99999999.99','0.00','0','0','1448230508','111','2');");
E_D("replace into `ecs_account_log` values('9','5','-0.01','0.00','0','0','1448231164','支付订单 2015112391096','99');");
E_D("replace into `ecs_account_log` values('10','5','0.00','0.00','0','0','1448232942','订单 2015112356122 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('11','5','-0.01','0.00','0','0','1448234136','支付订单 2015112318877','99');");
E_D("replace into `ecs_account_log` values('12','5','0.00','0.00','0','0','1448242320','订单 2015112369856 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('13','5','0.00','0.00','0','0','1448247519','订单 2015112314657 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('14','5','0.00','0.00','0','0','1448250063','订单 2015112366532 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('15','5','-111111.00','0.00','0','0','1448408235','111','2');");
E_D("replace into `ecs_account_log` values('16','5','-1111111.00','0.00','0','0','1448408273','111','2');");
E_D("replace into `ecs_account_log` values('17','5','-99999999.99','0.00','0','0','1448408290','1111','2');");
E_D("replace into `ecs_account_log` values('18','5','11111111.00','0.00','0','0','1448408322','1111','2');");
E_D("replace into `ecs_account_log` values('19','5','99999999.99','0.00','0','0','1448408338','111','2');");
E_D("replace into `ecs_account_log` values('20','5','-99999999.00','0.00','0','0','1448408358','111','2');");
E_D("replace into `ecs_account_log` values('21','5','899.01','0.00','0','0','1448408391','111','2');");
E_D("replace into `ecs_account_log` values('22','5','0.00','0.00','0','0','1448409431','订单 2015112344712 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('23','5','0.00','0.00','0','0','1448409980','订单 2015112561257 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('36','168','0.00','0.00','134','134','1470165455','订单 2016080393285 赠送的积分','99');");
E_D("replace into `ecs_account_log` values('37','168','10000.00','0.00','0','0','1470169843','sss','2');");
E_D("replace into `ecs_account_log` values('38','168','-22.21','0.00','0','0','1470169867','支付订单 2016080311912','99');");

require("../../inc/footer.php");
?>