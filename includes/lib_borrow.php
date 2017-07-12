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
//include_once('includes/cls_json.php');
include_once(ROOT_PATH . 'includes/lib_transaction.php');

function getBorrowByUserId($userId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow') . " WHERE user_id = '$userId'";
    return $GLOBALS['db']->getAll($sql);
}

function userIsVIP($userId)
{
    $sql = "SELECT COUNT(*) FROM " . $GLOBALS['ecs']->table('user_rank') . " as r JOIN ".$GLOBALS['ecs']->table('users') ." as u ON user_id = '$userId' AND r.rank_name='VIP' AND r.rank_id=u.user_rank";
    $count = $GLOBALS['db']->getOne($sql);
//    echo 'email_is_same value is ' . $count;
    return $count > 0 ? true : false;
}

function getBorrowById($userId,$borrowId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow') . " WHERE user_id = '$userId' AND borrow_id='$borrowId'";
    return $GLOBALS['db']->getRow($sql);
}

function removeBorrowById($userId, $borrowId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }

    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow') . " SET removed = 1 "." WHERE user_id='$userId' AND borrow_id='$borrowId'";
    $result = $GLOBALS['db']->query($sql);
}

function getAmortizeList($userId,$borrowId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    if (empty($borrowId)) {
        $GLOBALS['err']->add("无法获取贷款申请编号");
        return false;
    }

    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow_amortize') . " WHERE borrow_id = '$borrowId' AND user_id='$userId'";
//    var_dump($sql);
    return $GLOBALS['db']->getAll($sql);
}

function changeCreditLine($user_id, $borrow_id, $amortize_id)
{
    if (empty($user_id)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    if (empty($borrow_id)) {
        $GLOBALS['err']->add("无法获取贷款申请编号");
        return false;
    }
    if (empty($amortize_id))
    {
        $GLOBALS['err']->add("分期编号不可以为空");
        return false;
    }


    $b_sql = "SELECT borrow_type,borrow_purpose FROM " . $GLOBALS['ecs']->table('borrow') . " WHERE  borrow_id = '$borrow_id' AND user_id='$user_id'";
    $b_row = $GLOBALS['db']->getRow($b_sql);

    if ($b_row && isset($b_row['borrow_type']) && $b_row['borrow_type'] == '购物贷' ) {
        require_once(ROOT_PATH . 'includes/lib_common.php');
        $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow_amortize') . " WHERE amortize_id = '$amortize_id' AND borrow_id = '$borrow_id' AND user_id='$user_id'";
        $row = $GLOBALS['db']->getRow($sql);
        if ($row['principal_money'] > 0) {
            log_account_change($user_id, $row['principal_money'], 0, 0, 0, sprintf("由于还款成功（ %s ），增加信用额度", $b_row['borrow_purpose']));
        }
    }
    return true;
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
    if (empty($params->repay_source))
    {
        return '实际支付方式没有指定';
    }
    if (empty($params->amortize_repay_money))
    {
        return '实际支付金额格式不正确';
    }
    if (empty($params->repay_serial_code))
    {
        return '支付流水号不可以为空';
    }

    $repayDate =  date("Y-m-d",time());
    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow_amortize') . " SET amortize_repay_money = '$params->amortize_repay_money',repay_source='$params->repay_source', repay_serial_code='$params->repay_serial_code',repay_date='$repayDate',status='待审核' "." WHERE amortize_id='$params->amortize_id' AND borrow_id='$params->borrow_id' AND user_id = '$params->user_id'";
//    echo $sql;
    $result = $GLOBALS['db']->query($sql);
    if (!$result) {
         return $GLOBALS['db']->errorMsg();
    }

    return "";
}

function getBorrowAttach($userId,$borrowId)
{
    if (empty($userId)) {
        $GLOBALS['err']->add($GLOBALS['_LANG']['not_login']);
        return false;
    }
    if (empty($borrowId)) {
        $GLOBALS['err']->add("无法获取贷款申请编号");
        return false;
    }

    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('borrow_attach') . " WHERE borrow_id = '$borrowId' AND user_id='$userId'";
    return $GLOBALS['db']->getRow($sql);
}

function changeBorrwoStatus($borrowerId,$borrowId,$borrowStatus)
{
    if (empty($borrowerId) || empty($borrowId) || empty($borrowStatus))
    {
        return "参数不可以为空";
    }

    $borrowId = trim($borrowId);

    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow') . " SET status = '$borrowStatus' "." WHERE user_id='$borrowerId' AND borrow_id='$borrowId'";
    $result = $GLOBALS['db']->query($sql);
    if ($result) {
        if($borrowStatus=='已打款')
        {
            $result = createAmortizeByManual($borrowId);
        }
        if(empty($result))
        {
            return "";
        }else{
            return $result;
        }
    } else {
//        return $GLOBALS['db']->errorMsg();
        return "修改贷款申请状态失败";
    }



}

function changeTotalBorrow($borrowerId,$borrowId,$totalMoney)
{
    if (empty($borrowerId) || empty($borrowId) || empty($totalMoney))
    {
        return "参数不可以为空";
    }

    $totalMoney = intval($totalMoney);

    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow') . " SET total_money = '$totalMoney' "." WHERE user_id='$borrowerId' AND borrow_id='$borrowId'";
    $result = $GLOBALS['db']->query($sql);
    if ($result) {
        return "";
    } else {
//        return $GLOBALS['db']->errorMsg();
        return "修改贷款申请状态失败";
    }
}

function changeAmortizeStatus($userId,$amortizeId,$borrowId,$borrowStatus)
{
    if (empty($userId) || empty($amortizeId) || empty($borrowId) || empty($borrowStatus))
    {
        return "参数不可以为空";
    }

    $sql = "UPDATE " . $GLOBALS['ecs']->table('borrow_amortize') . " SET status = '$borrowStatus' "." WHERE amortize_id='$amortizeId' AND borrow_id='$borrowId' AND user_id='$userId'";
    $result = $GLOBALS['db']->query($sql);
    if ($result) {
        return "";
    } else {
//        return $GLOBALS['db']->errorMsg();
        return "修改分期状态失败";
    }
}


?>