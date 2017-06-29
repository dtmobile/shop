<?php

/**
 * ECSHOP 用户交易相关函数库
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: lib_transaction.php 17217 2011-01-19 06:29:08Z liubo $
 */

if (!defined('IN_ECS')) {
    die('Hacking attempt');
}
include_once('includes/cls_json.php');

function getAllBorrowsByStatus($status)
{

}

function getBorrowByUserId($userId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow') . " WHERE user_id = '$userId'";
    return $GLOBALS['db']->getAll($sql);
}

function getAmortizeList($userId,$selectBorrowId)
{
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow_amortize') . " WHERE borrow_id = '$selectBorrowId' AND user_id='$userId'";
    return $GLOBALS['db']->getAll($sql);
}


function getAmortizeByBorrowId($userId, $borrowId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    if (empty($borrowId)) {
        $GLOBALS['err']->add("无法获取贷款申请编号");
        return false;
    }
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow_amortize') . " WHERE user_id = $userId AND borrow_id=$borrowId";
    return $GLOBALS['db']->getAll($sql);
}

function amortizeRepayCommit($params)
{
    if (empty($params->user_id))
    {
        return '用户编号不可以为空';
    }
    if (empty($params->borrow_id))
    {
        return '贷款编号不可以为空';
    }
    if (empty($params->amortize_id))
    {
        return '分期编号不可以为空';
    }
    if (empty($params->amortize_repay_money))
    {
        return '实际支付金额格式不正确';
    }
    if (empty($params->repay_serial_code))
    {
        return '支付流水号不可以为空';
    }

    $repayDateTime = time();//date("Y-m-d",time());;
    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow_amortize') . " SET amortize_repay_money = '$params->amortize_repay_money', repay_serial_code='$params->repay_serial_code',amortize_repay_date=$repayDateTime,status='待审核' "." WHERE amortize_id='$params->amortize_id' AND borrow_id='$params->borrow_id' AND user_id = '$params->user_id'";
//    echo $sql;
    $result = $GLOBALS['db']->query($sql);
    if ($result) {
        return "";
    } else {
        return $GLOBALS['db']->errorMsg();
    }

    return "";
}

?>