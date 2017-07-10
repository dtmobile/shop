<?php
// database host
$db_host   = "localhost:3306";

// database name
$db_name   = "shenxian";

// database username
$db_user   = "root";

// database password
$db_pass   = "";

// table prefix
$prefix    = "ecs_";

$timezone    = "PRC";

$cookie_path    = "/";

$cookie_domain    = "";

$session = "1440";

define('EC_CHARSET','utf-8');

define('ADMIN_PATH','admin');

define('AUTH_KEY', 'this is a key');

define('OLD_AUTH_KEY', '');

define('API_TIME', '2017-07-10 10:59:12');

define('DEBUG_MODE', 3);
//0 //禁用调试模式
//1 //显示所有错误
//2 //禁用Smarty缓存
//4 //使用includes/lib.debug.php
//8 //记录查询的SQL“includes/cls_mysql.php query()”到“data/mysql_query_hash_Y_M_D.log”。

?>