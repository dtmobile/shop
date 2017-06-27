<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_admin_log`;");
E_C("CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=795 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_admin_log` values('790','1458199610','1','批量删除会员账号: ','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('789','1458199558','1','批量删除会员账号: aabbcc,xkfla,18113131306,abcabc,546971327,123456788,buyer,lycancheng,111111,','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('788','1458199552','1','批量删除会员账号: huang,joki,6907,wshop16,wshop17,哇哈哈,3694222,wshop20,momoismomo,桂圆,哈喽,wshop24,wshop25,,wshop27','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('787','1458199548','1','批量删除会员账号: wshop28,wshop29,九州网络,夏沫,liguoming,E时代大咖,18752739052,IDO,qq10422007,15948363530,李万武,wshop39,a3966230,yoxing520,wshop42','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('786','1458199544','1','批量删除会员账号: wshop43,wshop44,zbwliyudan,guhulang,guhulang1,hz6685770,123456,wshop50,222222,13337983930,vip11166,wshop55,zangwenwen,张兴国,张公岭创新科技','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('785','1458199538','1','批量删除会员账号: wshop59,momo,ceshixia,z x cv,wshop63,wshop64,cipa,wshop66,wshop67,blue,Gootor,wshop70,88888888,wshop72,huang1','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('784','1458199533','1','批量删除会员账号: wshop74,jea,glul,wshop77,wshop78,wshop79,lin050,wdcul,jimiwudi,wshop83,wshop84,wshop85,18180556779,hongfei,小米谷子-三级佣金分销系统','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('783','1458199529','1','批量删除会员账号: zhouquanhua,wshop90,wshop91,wshop92,人生若只如初见,wshop94,wshop95,zzluyun,13679083909,gsdgjj,szdgjj,wshop100,test120,wshop101,admin','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('776','1458199385','1','删除操作日志: ','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('777','1458199484','1','编辑支付方式: 微信支付','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('778','1458199491','1','卸载支付方式: alipay','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('779','1458199510','1','批量删除会员账号: wshop149,郑鸿飞,wshop151,wshop152,wshop153,lision,wshop155,wshop156,wshop157,wshop158,wshop159,wshop161,蓝蜘蛛科技,wshop163,耿瑞朋','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('780','1458199515','1','批量删除会员账号: cipa2008,wshop135,dong,wshop137,test,wshop139,wshop140,wshop141,wshop142,H,wshop144,wshop145,wshop146,imc123,wshop148','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('781','1458199520','1','批量删除会员账号: wshop119,wshop120,yun,wshop122,yy123456789,wshop124,wshop125,wshop126,dithion,wshop128,华仔色影,11223344,maisui,wshop132,曹辉宇（果鲜优品创始人）','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('782','1458199524','1','批量删除会员账号: wshop104,wshop105,codes589,shine1188,ly83256,wshop109,test110,codes5,yc1xy,new  any  think,wshop114,wshop115,21212112,wshop117,123456789','171.214.150.155');");
E_D("replace into `ecs_admin_log` values('791','1469173869','1','编辑商店设置: ','127.0.0.1');");
E_D("replace into `ecs_admin_log` values('792','1469173938','1','编辑商店设置: ','127.0.0.1');");
E_D("replace into `ecs_admin_log` values('793','1469216596','1','编辑商店设置: ','127.0.0.1');");
E_D("replace into `ecs_admin_log` values('794','1470171005','1','编辑商店设置: ','127.0.0.1');");

require("../../inc/footer.php");
?>