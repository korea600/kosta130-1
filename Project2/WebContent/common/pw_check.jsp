<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호확인</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	$(function(){
		$('[name=confirm]').click(function(){
			$.ajax({
				url:'/Project2/common/password.do',
				data:{
					action:"check",
					password:$('[name=password]').val()
				},
				success:function(data){
					if(data=="true")
						location.href='/Project2/common/edit.do?action=select';
					else
						alert('비밀번호가 맞지 않습니다.');
				}
			});	
		});
	});
</script>
</head>
<body>
<table>
<tr>
	<td>비밀번호 입력</td>
	<td><input type='password' name='password' size=20></td>
</tr>
<tr colspan='2'>
	<td align="center">
		<input type='button' name='confirm' value='확인'>
		<input type='button' name='cancel' value='취소' onclick="self.close()">	
	</td>
</tr>
</table>
</body>
</html>