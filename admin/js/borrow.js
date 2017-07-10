/* $Id : common.js 4824 2007-01-31 08:23:56Z paulgao $ */

function removeBorrowResponse(result)
{
  if (result.error == 0)
  {
    alert("贷款申请已经删除");
    location.reload();
  }
}


function removeBorrow(borrowId,userId) {
  var r = confirm("确认下删除该借款订单吗？")
  if (!r) {
    return;
  }

  Ajax.call('borrow.php?act=remove_borrow&borrow_id='+borrowId+'&user_id='+userId, '',removeBorrowResponse, 'GET', 'JSON');
}