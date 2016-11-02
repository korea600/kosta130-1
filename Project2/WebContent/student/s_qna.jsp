<%@page import="qna.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/s_qna.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var childWin;
	$(function(){
		$.ajax({
			url:'/Project2/student/listQna.do',
			success:function(data,status,xhr){
				$('.view_form').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
			}
		});
		$('.write_btn').click(function(){
			childWin=window.open('/Project2/student/s_qna_form.jsp','_blank','toolbar=yes,location=yes,status=yes'
					+'menubar=yes,scrollbars=yes,resizable=0,width=450,height=350,top=100,left=200');
		})
	})
	function getList(){
		$.ajax({
			url:'/Project2/student/listQna.do',
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
<div class='write_btn'>등록</div>

<div class='view'>
<ul>
	<li>글번호</li>
	<li>제목</li>
	<li>내용</li>
	<li>신청자</li>
	<li>신청일</li>
	<li>상태</li>
</ul>
</div>
<div class='view_form'></div>
</body>
</html>