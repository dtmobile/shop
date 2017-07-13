<?php

/**
 * ECSHOP 支付响应页面
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: respond.php 17217 2011-01-19 06:29:08Z liubo $
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/lib_payment.php');
require(ROOT_PATH . 'includes/lib_order.php');

$supported_pay = array('wxpay','alipay','alipayamortization', 'amortization');
$amortization_pay = array('alipayamortization','amortization');

/* 支付方式代码 */
$pay_code = !empty($_REQUEST['code']) ? trim($_REQUEST['code']) : '';

//获取首信支付方式
if (empty($pay_code) && !empty($_REQUEST['v_pmode']) && !empty($_REQUEST['v_pstring']))
{
    $pay_code = 'cappay';
}

if(isset($_POST['MerRemark'])  && $_POST['MerRemark']=='epay')
{
    $pay_code ='epay';
}


//获取快钱神州行支付方式
if (empty($pay_code) && ($_REQUEST['ext1'] == 'shenzhou') && ($_REQUEST['ext2'] == 'ecshop'))
{
    $pay_code = 'shenzhou';
}

/* 参数是否为空 */
if (empty($pay_code))
{
    $msg = $_LANG['pay_not_exist'];
}
else
{
    /* 检查code里面有没有问号 */
    if (strpos($pay_code, '?') !== false)
    {
        $arr1 = explode('?', $pay_code);
        $arr2 = explode('=', $arr1[1]);

        $_REQUEST['code']   = $arr1[0];
        $_REQUEST[$arr2[0]] = $arr2[1];
        $_GET['code']       = $arr1[0];
        $_GET[$arr2[0]]     = $arr2[1];
        $pay_code           = $arr1[0];
    }

    /* 判断是否启用 */
    $sql = "SELECT COUNT(*) FROM " . $ecs->table('payment') . " WHERE pay_code = '$pay_code' AND enabled = 1";
    if ($db->getOne($sql) == 0)
    {
        $msg = $_LANG['pay_disabled'];
    }
    else if (in_array($pay_code, $supported_pay))
    {

        $user_id = $_SESSION['user_id'];
        $order_sn = $_POST['order_sn'];
        $amortize_repay_money = $_POST['amortize_repay_money'];
        $repay_serial_code = $_POST['repay_serial_code'];

        if (in_array($pay_code, $amortization_pay)) {
            include_once(ROOT_PATH . 'includes/lib_transaction.php');
            include_once(ROOT_PATH . 'includes/lib_borrow.php');
            include_once(ROOT_PATH . 'includes/lib_payment.php');

            if (userIsVIP($user_id)) {
                $amortize_period = $_POST['amortizePeriod'];
                $amortize_type = $_POST['amortizeType'];
                $user_info = get_profile($user_id);
                $user_info['user_id'] = $user_id;
                $amortization_money = get_amorization_money($order_sn);
                $down_payment = get_down_payment_money($order_sn);
                $real_order_sn = get_order_sn_for_paid($order_sn);
                $borrowInfo = getBorrowInfoForAmortizaton($user_id, $amortization_money, $real_order_sn, $amortize_period, $amortize_type, $down_payment);
                $commit_res = saveBorrowInfo($user_info, $borrowInfo);
                if (empty($commit_res)) {
                    order_paid($order_sn, 2, '',$repay_serial_code, $amortize_repay_money, $amortization_money, $amortize_period, $amortize_type);
                    $msg = $_LANG['pay_success'];
                } else {
                    $msg = $commit_res;
                }
            }else {
                $msg = '非 VIP 会员不可以使用分期';
            }
        }else {
            order_paid($order_sn, 2, '', $amortize_repay_money, $repay_serial_code);
            $msg = $_LANG['pay_success'];
        }
    } else
    {
        $plugin_file = 'includes/modules/payment/' . $pay_code . '.php';

        /* 检查插件文件是否存在，如果存在则验证支付是否成功，否则则返回失败信息 */
        if (file_exists($plugin_file))
        {
            /* 根据支付方式代码创建支付类的对象并调用其响应操作方法 */
            include_once($plugin_file);

            $payment = new $pay_code();
            $msg     = (@$payment->respond()) ? $_LANG['pay_success'] : $_LANG['pay_fail'];
        }
        else
        {
            $msg = $_LANG['pay_not_exist'];
        }
    }
}

assign_template();
$position = assign_ur_here();
$smarty->assign('page_title', $position['title']);   // 页面标题
$smarty->assign('ur_here',    $position['ur_here']); // 当前位置
$smarty->assign('page_title', $position['title']);   // 页面标题
$smarty->assign('ur_here',    $position['ur_here']); // 当前位置
$smarty->assign('helps',      get_shop_help());      // 网店帮助

$smarty->assign('message',    $msg);
$smarty->assign('shop_url',   $ecs->url());

$smarty->display('respond.dwt');

?>