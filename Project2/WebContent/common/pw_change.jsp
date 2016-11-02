<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호수정</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	$(function(){
		$('[name=confirm]').click(function(){
			$.ajax({
				url:'/Project2/common/password.do',
				data:{
					action:"check",
					password:$('[name=oldpassword]').val()
				},
				success:function(data){
					data=data.trim();
					if(data=="true"){
						var newpw1 = $('[name=newpassword1]').val();
						var newpw2 = $('[name=newpassword2]').val();
						if(newpw1==newpw2){
							$.ajax({
								url:'/Project2/common/password.do',
								data:{
									action:"change",
									password:$('[name=newpassword1]').val()
								},
								success:function(data){
									data=data.trim();
									if(data=="true"){
										alert('비밀번호가 변경되었습니다.');
										self.close();
									}
									else
										alert('비밀번호 변경에 실패하였습니다.');
								}
							});
						}
					else
						alert('새 비밀번호와 확인을 일치시켜주세요.');
					}
					else
						alert('기존 비밀번호가 맞지 않습니다.');
				}	
			});
		});
	});
</script>
</head>
<body>
<center>
<h2>비밀번호 수정</h2><br>
<table>
<tr>
	<td>기존 비밀번호</td>
	<td><input type='password' name='oldpassword' size=20></td>
</tr>
<tr>
	<td>새 비밀번호</td>
	<td><input type='password' name='newpassword1' size=20></td>
</tr>
<tr>
	<td>새 비밀번호 (확인)</td>
	<td><input type='password' name='newpassword2' size=20></td>
</tr>
<tr>
	<td  colspan='2' align="center">
		<input type='button' name='confirm' value='수정'>
		<input type='button' name='cancel' value='취소' onclick="self.close()">	
	</td>
</tr>
</table>
</center>
</body>
</html>