<?php

/**
 * ECSHOP 订单管理
 * ============================================================================
 * 版权所有 2005-2010 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: yehuaixiao $
 * $Id: order.php 17219 2011-01-27 10:49:19Z yehuaixiao $
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'includes/lib_borrow.php');


function object_array($array)
{
    if(is_object($array)) {
        $array = (array)$array;
    } if(is_array($array)) {
    foreach($array as $key=>$value) {
        $array[$key] = object_array($value);
    }
}
    return $array;
}

function friendConvert($friendStr)
{

    $firends = array();
    $friendTemp = isset($friendStr)?json_decode($friendStr):array();
    if (count($friendTemp) == 0)
    {
        return $firends;
    }

    foreach ($friendTemp as $key => $friend)
    {
        $firends[] = object_array($friend);
//        $firends[]=array("friend_id"=>$friend->friend_id, 'friend_name' =>$friend->friend_name,
//            'friend_phone' =>$friend->friend_phone ,'firend_type'=>$friend->firend_type,'friend_address'=>$friend->friend_address);
    }
    return $firends;

}

function borrowList()
{
//    $result = get_filter();
//    if ($result === false) {
//        echo "没有找到filter";
    $fileds = array('actual_name', 'identity_card', 'mobile_phone', 'borrow_id', 'total_money', 'user_bank_id', 'status');
    /* 过滤信息 */
    foreach ($fileds as $filed) {
        $filter[$filed] = empty($_REQUEST[$filed]) ? '' : trim($_REQUEST[$filed]);
    }

    $where = 'WHERE 1 ';
    if ($filter['borrow_id']) {
        $where .= " AND b.borrow_id = '" . $filter['borrow_id'] . "'";
    }
    if ($filter['total_money']) {
        $where .= " AND b.total_money = '" . $filter['total_money'] . "'";
    }
    if ($filter['user_bank_id']) {
        $where .= " AND b.user_bank_id = '" . $filter['user_bank_id'] . "'";
    }
    if ($filter['status']) {
        $where .= " AND b.status = '" . $filter['status'] . "'";
    }

    if ($filter['actual_name']) {
        $where .= " AND a.actual_name = '" . $filter['actual_name'] . "'";
    }

    if ($filter['identity_card']) {
        $where .= " AND a.identity_card = '" . $filter['identity_card'] . "'";
    }

    if ($filter['mobile_phone']) {
        $where .= " AND a.mobile_phone = '" . $filter['mobile_phone'] . "'";
    }

    /* 分页大小 */
    $filter['page'] = empty($_REQUEST['page']) || (intval($_REQUEST['page']) <= 0) ? 1 : intval($_REQUEST['page']);

    if (isset($_REQUEST['page_size']) && intval($_REQUEST['page_size']) > 0) {
        $filter['page_size'] = intval($_REQUEST['page_size']);
    } elseif (isset($_COOKIE['ECSCP']['page_size']) && intval($_COOKIE['ECSCP']['page_size']) > 0) {
        $filter['page_size'] = intval($_COOKIE['ECSCP']['page_size']);
    } else {
        $filter['page_size'] = 15;
    }

    /* 记录总数 */
    $sql = "SELECT COUNT(*) FROM " . $GLOBALS['ecs']->table('borrow') . " AS b " .
        " JOIN " . $GLOBALS['ecs']->table('borrow_attach') . " AS a ON b.borrow_id=a.borrow_id AND b.user_id=a.user_id " . $where;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);
    $filter['page_count'] = $filter['record_count'] > 0 ? ceil($filter['record_count'] / $filter['page_size']) : 1;

    /* 查询 */
    $sql = "SELECT b.borrow_id,b.user_id, b.total_money, b.borrow_purpose, b.borrow_date, b.user_bank_id, b.user_opening_bank, b.amortize_period, b.amortize_type, b.status, a.actual_name FROM " . $GLOBALS['ecs']->table('borrow') . " AS b " .
        " JOIN " . $GLOBALS['ecs']->table('borrow_attach') . " AS a ON b.borrow_id=a.borrow_id AND b.user_id=a.user_id " . $where . " LIMIT " . ($filter['page'] - 1) * $filter['page_size'] . ",$filter[page_size]";

    foreach ($fileds as $filed) {
        $filter[$filed] = stripslashes($filter[$filed]);
    }
//        set_filter($filter, $sql);
//    }
//    else {
//        $sql = $result['sql'];
//        $filter = $result['filter'];
//    }

//    echo $sql;
    $row = $GLOBALS['db']->getAll($sql);
    return array('borrow_list' => $row, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}

/*------------------------------------------------------ */
//-- 贷款订单查询
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'borrow_list') {
    /* 模板赋值 */
    $smarty->assign('ur_here', $_LANG['01_borrow_list']);
//    $smarty->assign('action_link', array('href' => 'order.php?act=order_query', 'text' => $_LANG['03_order_query']));

//    $smarty->assign('os_unconfirmed', OS_UNCONFIRMED);
//    $smarty->assign('cs_await_pay', CS_AWAIT_PAY);
//    $smarty->assign('cs_await_ship', CS_AWAIT_SHIP);
    $smarty->assign('full_page', 1);

    $borrow_list = borrowList();
//    var_dump($borrow_list);
//    return;
    $smarty->assign('borrow_list', $borrow_list['borrow_list']);
    $smarty->assign('filter', $borrow_list['filter']);
    $smarty->assign('record_count', $borrow_list['record_count']);
    $smarty->assign('page_count', $borrow_list['page_count']);

    $smarty->assign('status_list', array('待审核', '已打款')); //'还款中','已还清','删除'

    /* 显示模板 */
    assign_query_info();
    $smarty->display('borrow_list.htm');
} else if ($_REQUEST['act'] == 'info') {
    /* 根据订单id或订单号查询订单信息 */
    if (isset($_REQUEST['borrow_id'])) {


        $smarty->assign('borrow_status_list', array("待审核","已打款"));

        $borrowerId = intval($_REQUEST['user_id']);
        $borrowId = intval($_REQUEST['borrow_id']);

        $borrow = getBorrowById($borrowerId,$borrowId);
//        $borrow['status']="待审核";
        $attach = getBorrowAttach($borrowerId,$borrowId);
        $attach['friends']=  friendConvert($attach['friends']);
        $amortizeList = getAmortizeList($borrowerId,$borrowId);
//        var_dump($borrow);
//        var_dump($amortizes);
        $smarty->assign('borrow', $borrow);
        $smarty->assign('borrow_attach', $attach);
        $smarty->assign('amortize_list', $amortizeList);
        $smarty->display('borrow_info.htm');
        return;


    } else {
        /* 如果参数不存在，退出 */
        die('invalid parameter');
    }

    /* 显示模板 */
    assign_query_info();
    $smarty->display('borror_info.htm');
} elseif ($_REQUEST['act'] == 'query') {
    $borrow_list = borrowList();
    $smarty->assign('borrow_list', $borrow_list['borrow_list']);
    $smarty->assign('filter', $borrow_list['filter']);
    $smarty->assign('record_count', $borrow_list['record_count']);
    $smarty->assign('page_count', $borrow_list['page_count']);
//    $sort_flag  = sort_flag($borrow_list['filter']);
    make_json_result($smarty->fetch('borrow_list.htm'), '', array('filter' => $borrow_list['filter'], 'page_count' => $borrow_list['page_count']));
}elseif ($_REQUEST['act'] == 'change_borrow_status')
{
    include_once('../includes/cls_json.php');
    $json = new JSON;

    $borrowerId = $_REQUEST['borrower_id'];
    $borrowId = $_REQUEST['borrow_id'];
    $borrowStatus = $_REQUEST['borrow_status'];


    $result = array('error' => 0, 'message' => '');
//    $params = $json->decode($_POST['parmas']);
    //save params to db
    $errMsg = changeBorrwoStatus($borrowerId,$borrowId,$borrowStatus);

    $content = array();
    if (!empty($errMsg)) {
        $result['error'] = 1;
        $result['message'] = $errMsg;
        $content['change_result'] = false;
    } else {
        $content['change_result'] = true;
//        $content['borrower_id'] = $borrowerId;
    }
    $result['content'] = json_encode($content);
    die($json->encode($result));
    
}elseif ($_REQUEST['act'] == 'change_amortize_status')
{
 include_once('../includes/cls_json.php');
    $json = new JSON;
    $result = array('error' => 0, 'message' => '');
    $errMsg = changeAmortizeStatus($_REQUEST['user_id'],$_REQUEST['amortize_id'],$_REQUEST['borrow_id'],$_REQUEST['amortize_status']);

    $content = array();
    if (!empty($errMsg)) {
        $result['error'] = 1;
        $result['message'] = $errMsg;
        $content['change_result'] = false;
    } else {
        $content['change_result'] = true;
//        $content['borrower_id'] = $borrowerId;
    }
    $result['content'] = json_encode($content);
    die($json->encode($result));
}

?>