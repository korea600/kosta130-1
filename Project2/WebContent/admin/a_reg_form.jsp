<%@page import="reg.model.RegDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/reg_form.css" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적 변경 처리</title>
<script type="text/javascript" src="../js/ajax2.js"></script>
<script type="text/javascript">
	
	$( document ).ready(function() {
		$('.sum').click(function(){
			var id = document.upForm.id.value;
			var request = document.upForm.request.value;
		    $.ajax({
		        url:'/Project2/admin/a_req_update.jsp',
		        type:'post',
		        data:{"action":"update","id":id,"request":request},
		        success:function(data){
		        	if(data=="ok"){
		        		console.log("ddd");
		        		window.close();
		        		opener.location.href="javascript:req();";
		        	}
		        }
		    })
		});
		$('.del').click(function(){
			var id = document.upForm.id.value;
			var request = document.upForm.request.value;
		    $.ajax({
		        url:'/Project2/admin/a_req_update.jsp',
		        type:'post',
		        data:{"action":"delete","id":id,"request":request},
		        success:function(data){
		        	if(data=="ok"){
		        		window.close();
		        		opener.location.href="javascript:req();";
		        	}
		        }
		    })
		});
		
		
		
	});//ready
</script>

</head>
<body>
	<form name="upForm">
		<input type="hidden" name="id" value="${reg.id }">
		<table id="table_reg">
			<tr>
				<th width="100px">이름</th>
				<td><input type=text name=username value="${reg.name }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<th width="100px">연락처</th>
				<td><input type=text name=phoneNum value="${reg.tel }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<th>신청내역</th>
				<td><input type="text" name="request" value="${reg.request }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<th class="td_ta">사유</th>
				<td><textarea rows="15" cols="40" readonly="readonly">${reg.reason }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" class="sum" value="승인">
					<input class="del" type=button name="dbutton" value="거절"></td>
			</tr>
		</table>
	</form>
</body>
</html>