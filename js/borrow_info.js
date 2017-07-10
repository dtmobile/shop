/* $Id : common.js 4824 2007-01-31 08:23:56Z paulgao $ */

function changeBorrowStatusResponse(result) {
    // console.log(result);
    if (result.message.length > 0) {
        alert("修改状态错误" + result.message);
    }
    if (result.error == 0) {
        alert("修改订单状态成功");
    }
    location.reload();
}
function changeBorrowStatus() {
    var r = confirm("您确认要修改该贷款申请的状态？")
    if (r == false) {
        return false;
    }

    var borrowStatus = document.getElementsByName('borrow_status')[0].value;
    if (Utils.isEmpty(borrowStatus)) {
        alert("贷款申请状态不正确");
        return;
    }
    // innerText
    var userId = document.getElementsByName('user_id')[0].innerText;
    var borrowId = document.getElementsByName('borrow_id')[0].innerText;

    var requestUrl = 'borrow.php?act=change_borrow_status&borrower_id=' + userId + '&borrow_id=' + borrowId + '&borrow_status=' + borrowStatus;
    Ajax.call(requestUrl, '', changeBorrowStatusResponse, 'GET', 'JSON');

}

function changeTotalMoneyResponse(result) {
    // console.log(result);
    if (result.message.length > 0) {
        alert("修改状态错误" + result.message);
    }
    if (result.error == 0) {
        alert("修改贷款总金额成功");
    }
    location.reload();
}

function changeTotalMoney() {
    var r = confirm("您确认要修改该贷款的总金额？")
    if (r == false) {
        return false;
    }


    var total_money = document.getElementsByName('total_money')[0].value;
    if (Utils.isEmpty(total_money)) {
        alert("贷款总金额不可以为空");
        return;
    }

    var userId = document.getElementsByName('user_id')[0].innerText;
    var borrowId = document.getElementsByName('borrow_id')[0].innerText;
    var requestUrl = 'borrow.php?act=change_total_money&borrower_id=' + userId + '&borrow_id=' + borrowId + '&total_money=' + total_money;
    Ajax.call(requestUrl, '', changeTotalMoneyResponse, 'GET', 'JSON');

}

function changeAmortizeStatusResponse(result) {
    // console.log(result);
    if (result.message.length > 0) {
        alert("修改分期状态错误" + result.message);
    }
    if (result.error == 0) {
        alert("修改分期状态成功");
        location.reload();
    }
    location.reload();
}
function changeAmortizeStatus(amortizeId) {
    var r = confirm("您确认要修改该分期的状态？")
    if (r == false) {
        return false;
    }

    var amortizeStatus = document.getElementsByName('amortize_status_' + amortizeId)[0].value;
    if (Utils.isEmpty(amortizeStatus)) {
        alert("贷款申请状态不正确");
        return;
    }
    // innerText
    var userId = document.getElementsByName('user_id')[0].innerText;
    var borrowId = document.getElementsByName('borrow_id')[0].innerText;
    var requestUrl = 'borrow.php?act=change_amortize_status&amortize_id=' + amortizeId + '&borrow_id=' + borrowId + '&user_id=' + userId + '&amortize_status=' + amortizeStatus;
    // console.log(requestUrl);
    Ajax.call(requestUrl, '', changeAmortizeStatusResponse, 'GET', 'JSON');

}