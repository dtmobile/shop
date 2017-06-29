<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_amortize`;");
E_C("CREATE TABLE `ecs_amortize` (
  `amortize_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `borrow_id` int(8) unsigned NOT NULL COMMENT '用户编号',
  `amortize_need_money` float(11,0) NOT NULL COMMENT '本分期应该偿还的金额',
  `amortize_repay_money` float NOT NULL COMMENT '本分期实际偿还的金额',
  `amortize_date` date NOT NULL COMMENT '本分期最晚偿还日期',
  `repay_serial_code` varchar(200) NOT NULL COMMENT '偿还金额流水号',
  `comment` varchar(1000) DEFAULT NULL COMMENT '其它说明',
  PRIMARY KEY (`amortize_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8");

require("../../inc/footer.php");
?>