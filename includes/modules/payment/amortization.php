<?php

/**
 * ECSHOP 银行汇款（转帐）插件
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: bank.php 17217 2011-01-19 06:29:08Z liubo $
 */

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$payment_lang = ROOT_PATH . 'languages/' .$GLOBALS['_CFG']['lang']. '/payment/amortization.php';

if (file_exists($payment_lang))
{
    global $_LANG;

    include_once($payment_lang);
}

/* 模块的基本信息 */
if (isset($set_modules) && $set_modules == TRUE)
{
    $i = isset($modules) ? count($modules) : 0;

    /* 代码 */
    $modules[$i]['code']    = basename(__FILE__, '.php');

    /* 描述对应的语言项 */
    $modules[$i]['desc']    = 'amortization_desc';

    /* 是否支持货到付款 */
    $modules[$i]['is_cod']  = '0';

    /* 是否支持在线支付 */
    $modules[$i]['is_online']  = '0';

    /* 作者 */
    $modules[$i]['author']  = 'XXFF TEAM';

    /* 网址 */
    $modules[$i]['website'] = 'http://www.ecshop.com';

    /* 版本号 */
    $modules[$i]['version'] = '1.0.0';

    /* 配置信息 */
    $modules[$i]['config']  = array();

    return;
}

/**
 * 类
 */
class amortization
{
    /**
     * 构造函数
     *
     * @access  public
     * @param
     *
     * @return void
     */
    function bank()
    {
    }

    function __construct()
    {
        $this->bank();
    }

    function get_code($order, $payment)
    {
        if (!defined('EC_CHARSET'))
        {
            $charset = 'utf-8';
        }
        else
        {
            $charset = EC_CHARSET;
        }

        $button = <<<EOT

<img src="images/wetchatpay/wetchat.jpg"/>
<div >
<span class="newroman font_16">请输入实际支付金额</span>
<input name="amortize_repay_money" type="text" size="25" class="inputBg" placeholder="请填写实际支付金额"/>元
</div>
<div>
<span class="newroman font_16">请输入支付流水号</span>
<input name="repay_serial_code" type="text" size="25" class="inputBg" placeholder="请填写支付流水号"/>
</div>
<button class="font_20" style="background-color: #008CBA;" onclick="repaySuccess({$order['log_id']},{$order['order_amount']},'wxpay')">支付成功</button>
<button class="font_20" style="background-color: #555555;" onclick="repayCancel()">取消支付</button>
EOT;

        return  $button;
    }
    /**
     * 处理函数
     */
    function response()
    {
        return;
    }
}

?>