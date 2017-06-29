<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_borrow`;");
E_C("CREATE TABLE `ecs_borrow` (
  `borrow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户编号',
  `total_money` float NOT NULL COMMENT '贷款总额',
  `borrow_purpose` varchar(500) NOT NULL COMMENT '贷款目的',
  `user_bank_id` varchar(30) NOT NULL COMMENT '用户银行卡号',
  `user_opening_bank` varchar(255) NOT NULL COMMENT '开户行',
  `amortize_period` int(11) NOT NULL,
  `amortize_type` int(11) NOT NULL COMMENT '0-等额本息 1-等额本金',
  `comment` varchar(1000) DEFAULT NULL COMMENT '其它说明',
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8");

require("../../inc/footer.php");
?>