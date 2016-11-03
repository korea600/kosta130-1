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
	// 유효성 검사
	var regexp_email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	var regexp_tel = /^\d{3}-\d{3,4}-\d{4}$/;
	if(!regexp_email.test(email))
		alert("이메일 입력이 잘못되었습니다.");
	else if(!regexp_tel.test(tel))
		alert("전화번호 입력이 잘못되었습니다.");
	else if(addr.length==0 || addr.length>100)
		alert("주소입력이 없거나 너무 깁니다.")
	else{
		var param='action='+up+'&email='+email+'&tel='+tel+'&addr='+addr;
		new ajax.xhr.Request('edit.do',param,check_result,'POST');
	}
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
		else{
			self.close();
			opener.location.href="/Project2/common/errorPage.jsp";
		}
	}
}
$(function(){
	$('[name=pw_change]').click(function(){
		window.open('/Project2/common/pw_change.jsp','비밀번호수정','width=460,height=300,menubar=no,status=no,toolbar=no,resizable=no,left=750,top=250');
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
				<input type="button" value="취소" onclick="self.close()">
			</td>
		</tr>
	</table>
	</center></form>
</body>
</html>