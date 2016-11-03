<%@page import="reg.model.RegDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/reg_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적변경 신청 내용 수정</title>
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<script src="/Project2/js/jquery.form.js" type="text/javascript"></script>
<script type="text/javascript">
$( document ).ready(function() {
	var request="${regdto.request}";
	if(request=="복학")
		$('[name=request]').val("재학");
	else
		$('[name=request]').val("${regdto.request}");
	$('[name=reason]').text("${regdto.reason}");
	
	$('form').ajaxForm({
		beforeSubmit: function(data,form,option){
			var flag=false;
			if($('[name=reason]').val().length==0)
				alert('사유가 입력되지 않았습니다.');
			else flag=true;
			return flag;	
		},
		success:function(result,status){
			if(result=="true"){
				alert('수정 성공');
				opener.location.href="javascript:req();";
				self.close();
			}
			else
				alert('수정 실패');
		},
		error:function(xhr,status,error){
			alert('Error ! : '+error);
			self.close();
		} 
	});
	$('[name=delete]').click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				url:'/Project2/s_regupdate.do',
				data:{
					action:'delete',
					id:$('[name=id]').val()
				},
				success:function(data,status,xhr){
					alert("삭제되었습니다.");
					opener.location.href="javascript:req();";
					self.close();		
				},
				error:function(xhr,status,error){
					alert('error : '+error);
				}
			});
		}
	});
});
</script>
</head>
<body><center>
	<form name="frm" action='/Project2/s_regupdate.do?action=update' method='POST'>
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
				<td colspan="2" align="center">
					<input type="submit" class="sum" id="btn_sub" name='confirm' value="수정">
					<input type="button" class="sum" id="btn_sub" name='delete' value="삭제">
					<input type="button" class="sum" id="btn_sub" value="취소" onclick='self.close()'>
				</td>
			</tr>
		</table>
	</form></center>
</body>
</html>