<%@page import="reg.model.RegDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/reg_form.css" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적변경 신청</title>
<script type="text/javascript">
$( document ).ready(function() {
	$('[name=confirm]').click(function(){
		var id = document.frm.id.value;
		var name = document.frm.name.value;
		var request = document.frm.request.value;
		var reason = document.frm.reason.value;
		if(reason.length==0)
			alert('신청 사유를 입력하세요.');
		else{
		    $.ajax({
		        url:'/Project2/student/s_req_insert.jsp',
		        type:'post',
		        data:{"request":request,"reason":reason},
		        success:function(data){
		        	if(data=="ok"){
		        		alert('신청이 등록되었습니다.')
		        		window.close();
		        		opener.location.href="javascript:req();";
		        	}
		        	else
		        		alert('신청 등록이 실패하였습니다.');
		        },
		        error:function(xhr,status,error){
		        	self.close();
					opener.location.href='/Project2/common/errorPage.jsp';
				}
		    })
		}
	});
});
</script>
</head>
<body><center>
	<form name="frm">
		<input type="hidden" name="id" class="id" value="${LoginDTO.id }">
		<table id="table_reg">
			<tr>
				<th width="100px">이름</th>
				<td><input type=text name=username class="name" value="${LoginDTO.name}" readonly="readonly"></td>
			</tr>
			<tr>
				<th>신청내역</th>
				<td><select name='request'>
				<option>군휴학</option>
				<option value='휴학'>일반휴학</option>
				<option value='재학'>복학</option>
				</select></td>
			</tr>
			<tr>
				<th class="td_ta">사유</th>
				<td><textarea rows="15" cols="40" name="reason" class="reason"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" float="center">
					<input type="button" class="sum" id="btn_sub" value="신청" name='confirm'>
					<input type="button" class="sum" id="btn_sub" value="취소" onclick='self.close()'>
				</td>
			</tr>
		</table>
	</form></center>
</body>
</html>