<%@page import="member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/member_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보수정</title>
<script type="text/javascript" src="/Project2/js/ajax2.js"></script>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
function mem_check(up){
	var email=document.frm.email.value;
	var tel=document.frm.tel.value;
	var addr=document.frm.addr.value;
	var param='action='+up+'&email='+email+'&tel='+tel+'&addr='+addr;
	new ajax.xhr.Request('edit.do',param,check_result,'POST');
}
function check_result(xhr){
	if(xhr.readyState==4){
		if(xhr.status==200){
			var result=xhr.responseText.trim();
			console.log(result);
			if(result="ok"){
				alert('수정 왼료되었습니다');
				window.close();
			}else if(result="no"){
				alert('수정 실패하였습니다');
			}
		}
		else alert("서버에서 에러가 발생하였습니다.\n에러코드 : "+xhr.status);
	}
}
$(function(){
	$('[name=pw_change]').click(function(){
		window.open('/Project2/common/pw_change.jsp','비밀수정','width=360,height=240,menubar=no,status=no,toolbar=no,resizable=no,left=350,top=350');
	});
})
</script>
</head>
<body>
	<form name="frm"><center>
		<table>
		<tr>
			<th>학 번</th>
			<td><input type="text" name="id" maxlength="15" value="${LoginDTO.id }" readonly></td>
		</tr>
		<tr>
			<th>학 과</th>
			<td><input type="text" name="dept" maxlength="20" value="${member.dept }" readonly></td>
			
		</tr>
		<tr>
			<th>이 름</th>
			<td><input type="text" name="name" maxlength="15" value="${LoginDTO.name }" readonly></td>
			
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type='button' name='pw_change' value='변경하기'></td>
			
		</tr>
		<tr>
			<th>email</th>
			<td><input type="text" name="email" maxlength="50" value="${member.email }"></td>
			
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="tel" maxlength="20" value="${member.tel }"></td>
		</tr>
		<tr>
			<th>주 소</th>
			<td><input type="text" name="addr" value="${member.addr }"></td>
			
		</tr>
		<tr>
			<td colspan=2 align=center>
				<input type="button" value="저장" onclick="mem_check('update')">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</center></form>
</body>
</html>