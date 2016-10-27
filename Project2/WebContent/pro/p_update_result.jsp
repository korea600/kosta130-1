<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력 결과</title>
<script type="text/javascript" src='../js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	$(function(){
		var result = '${update_result}';
		if(result=="success"){
			alert("입력이 정상적으로 이루어 졌습니다.");
			location.href='p_grade_info.jsp';
		}
		else{
			alert("입력이 실패하였습니다.");
			history.back();
		}
	});
</script>
</head>
<body>
</body>
</html>