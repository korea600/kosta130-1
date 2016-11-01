<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function(){
		$('form').ajaxForm({
			beforeSubmit:function(){},
			success:function(result,status){
				result=result.trim();
				if(result=="true"){
					alert('입력 성공');
					var checked=$('[name=checked]').val();
					opener.getList(checked);
					self.close();
				}
				else
					alert('입력 실패');
			},
			error:function(xhr,status,error){
				alert('Error ! : '+error);
				self.close();
			} 
		});
	})
	function exitForm(){
		window.close();
	}
</script>
</head>
<body>
<center>
<form name="frm" action="notice_list.do?action=insert" method="post">
제목 <input type="text" name="title"><br><br>
내용 <textarea rows="10" cols="23" name="content"></textarea>
<Br>

<select name="checked">
<option value="학사">학사</option>
<option value="취업">취업</option>
</select>
<br>

<input type="submit" value="확인">
<input type="button" value="취소" onclick="exitForm()">
</form>
</center>
</body>
</html>