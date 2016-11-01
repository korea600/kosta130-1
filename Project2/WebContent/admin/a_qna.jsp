<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/qna.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var childWin;
	$(function(){
		$.ajax({
			url:'/Project2/admin/listQnaConfirm.do',
			data:{
				action:'AdminQna'
			},
			success:function(data,status,xhr){
				$('.view_form').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
			}
		})
	})
	function getList(){
		$.ajax({
			url:'/Project2/admin/listQnaConfirm.do',
			data:{
				action:'AdminQna'
			},
			success:function(data,status,xhr){
				$('.view_form').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
			}
		})
	}
</script>
		
</head>
<body>
<div class='view'>
<ul>
	<li>글번호</li>
	<li>제목</li>
	<li>내용</li>
	<li>신청자</li>
	<li>신청일</li>
</ul>
</div>
<div class='view_form'>

</div>
</body>
</html>