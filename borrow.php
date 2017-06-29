<?php

/**
 * ECSHOP 会员中心
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: user.php 17217 2011-01-19 06:29:08Z liubo $
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$user_id = $_SESSION['user_id'];
$action = isset($_REQUEST['act']) ? trim($_REQUEST['act']) : 'borrow';

$affiliate = unserialize($GLOBALS['_CFG']['affiliate']);
$smarty->assign('affiliate', $affiliate);

$smarty->assign('categories', get_categories_tree());  // 分类树
$back_act = '';
$smarty->assign('_CFG', $_CFG);//附加系统配置


// 不需要登录的操作或自己验证是否登录（如ajax处理）的act
$not_login_arr = array();

/* 显示页面的action列表 */
$ui_arr = array('borrow','repay');

/* 未登录处理 */
if (empty($_SESSION['user_id'])) {
    if (in_array($action, $ui_arr)) {
        if (!empty($_SERVER['QUERY_STRING'])) {
            $back_act = 'user.php?' . strip_tags($_SERVER['QUERY_STRING']);
        }
        $action = 'login';
    } else {
        //未登录提交数据。非正常途径提交数据！
        die($_LANG['require_login']);
    }
}

/* 如果是显示页面，对页面进行相应赋值 */
if (in_array($action, $ui_arr)) {
    assign_template();
    $position = assign_ur_here(0, $_LANG['user_center']);
    $smarty->assign('ur_here', $position['ur_here']);
    $sql = "SELECT value FROM " . $ecs->table('shop_config') . " WHERE id = 419";
    $row = $db->getRow($sql);
    $car_off = $row['value'];
    $smarty->assign('car_off', $car_off);
    /* 是否显示积分兑换 */
    if (!empty($_CFG['points_rule']) && unserialize($_CFG['points_rule'])) {
        $smarty->assign('show_transform_points', 1);
    }
    $smarty->assign('helps', get_shop_help());        // 网店帮助
    $smarty->assign('data_dir', DATA_DIR);   // 数据目录
    $smarty->assign('action', $action);
    $smarty->assign('lang', $_LANG);
}

/* 显示我要还款界面 */
if ($action == 'repay') {
    $smarty->assign('page_title', '我要还款'); // 页面标题
    $info = array();
    $info['title']="我要还款-开发中...";
    $smarty->assign('info', $info);
    $smarty->display('borrow.dwt');
} /* 显示查询贷款申请界面 */
elseif ($action == 'borrow') {
    $smarty->assign('page_title', '查询贷款申请'); // 页面标题
    $info['title']="查询贷款申请-开发中...";
    $smarty->assign('info', $info);
    $smarty->display('borrow.dwt');
}
?>