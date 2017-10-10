/* *
 * 修改会员信息
 */

function repayInfoCommitResponse(result)
{
    // console.log(result);
    if (result.message.length > 0)
    {
        //提交还款信息失败
        alert(result.message);
    }
    if (result.error == 0)
    {
        //提交还款信息成功
        var content = $.evalJSON(result.content);
        easyDialog.close();//关闭弹出层
        alert("提交还款结果成功,最终结果需要等待工作人员确认");
        location.reload();
    }
}

function amortizeRepay(userId,borrowId,amortizeId,amortizeNeedMoney,userVipCode) {
    // console.log("还款人编号"+userId);
    // console.log("贷款编号"+borrowId);
    // console.log("分期编号"+amortizeId);

    var repayDialog = document.getElementsByName('repay_borrow_dialog')[0];
    repayDialog.user_id=userId;
    repayDialog.borrow_id=borrowId;
    repayDialog.amortize_id=amortizeId;
    repayDialog.amortize_need_money=amortizeNeedMoney;

    document.getElementsByName('amortize_repay_money')[0].value="";
    document.getElementsByName('repay_serial_code')[0].value="";
    document.getElementsByName('amortize_need_money_label')[0].innerText = amortizeNeedMoney;
    document.getElementsByName('repay_vip_code')[0].value = userVipCode;


    // var repay_source_select = document.getElementsByName('repay_source')[0];
    // repay_source_select.value="微信";
    var repay_source_image = document.getElementsByName('repay_image')[0];
    repay_source_image.src="../../images/alipay/alipay.jpg";

    // repay_source_select.onchange = function(){
    //     if(repay_source_select.value == "微信")
    //     {
    //         repay_source_image.src="../../images/wetchatpay/wetchat.jpg";
    //     }else if(repay_source_select.value == "支付宝"){
    //         repay_source_image.src="../../images/alipay/alipay.jpg";
    //     }
    //
    // }
    easyDialog.open({
        container : 'repay_borrow_dialog'
    });
}

function repaySuccess() {
    var amortizeRepayMoney =  document.getElementsByName('amortize_repay_money')[0].value;
    if(Utils.isEmpty(amortizeRepayMoney))
    {
        alert("请输入实际支付金额");
        return;
    }
    if(!Utils.isFloat(amortizeRepayMoney))
    {
        alert("实际支付金额格式不正确");
        return;
    }


    // var repaySource =  document.getElementsByName('repay_source')[0].value;
    // if(Utils.isEmpty(repaySource))
    // {
    //     alert("请选中支付方式");
    //     return;
    // }

    var repaySerialCode =  document.getElementsByName('repay_serial_code')[0].value;
    if(Utils.isEmpty(repaySerialCode))
    {
        alert("请输入支付流水号");
        return;
    }

    var amortizeNeedMoney =  document.getElementsByName('amortize_need_money_label')[0].innerText;
    if(amortizeRepayMoney != amortizeNeedMoney)
    {
        alert("实际支付金额与期望还款金额不符");
        return;
    }

    var repayUserName =  document.getElementsByName('repay_user_name')[0].value;
    if(Utils.isEmpty(repayUserName))
    {
        alert("请输入您的姓名");
        return;
    }

    var repaySxdCode =  document.getElementsByName('repay_vip_code')[0].value;
    if(Utils.isEmpty(repaySxdCode))
    {
        alert("请输入您的商享贷卡号");
        return;
    }

    var params = new Object();
    var repayDialog = document.getElementsByName('repay_borrow_dialog')[0];
    params.user_id = repayDialog.user_id;
    params.borrow_id = repayDialog.borrow_id;
    params.amortize_id = repayDialog.amortize_id;
    params.amortize_repay_money = amortizeRepayMoney;
    params.repay_source = "支付宝";
    params.repay_serial_code = repaySerialCode;
    params.repay_user_name = repayUserName;
    params.repay_vip_code = repaySxdCode;
    params.comment = '';
    console.log("还款信息如下");
    console.log(params);
    Ajax.call('borrow.php?act=repay_info_commit', 'parmas=' + $.toJSON(params),repayInfoCommitResponse, 'POST', 'JSON');


}

function repayCancel() {
    var r=confirm("如果您扫码支付了本期账单，请务必填写交易流水号后点击‘支付成功’按钮。\n\n\n继续退出请按'确认'按钮")
    if (r==true)
    {
        easyDialog.close();//关闭弹出层
    }
}




