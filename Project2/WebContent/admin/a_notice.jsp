<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Project2/common/css/not.css" type="text/css" />
<title>공지</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var childWin;
	$(function(){
		$.ajax({
			url:'/Project2/admin/notice_list.do',
			success:function(data,status,xhr){
				$('.view_form').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
			}
		});
		
	});
	
	function getList(check){	// 학사/취업 종류별로 리스트 갱신
		if(check==null) check='학사';
		$.ajax({
			url:'/Project2/admin/notice_list.do',
			data:{
				checked:check
			},
			success:function(data,status,xhr){
				$('.view_form').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
			}
		});
	}
	function changeList(){
		var check = $("[name=body_checked]").val();
		getList(check);
	}
	function upNoticeForm() {
		childWin = window.open('/Project2/admin/a_notice_form.jsp', 'insert',
				'width=500,height=400,top=100,left=200');
	}
</script>
</head>
<body>
<select name="body_checked" class="check" onchange="changeList()">
	<option value="학사">학사공지사항</option>
	<option value="취업">취업공지사항</option>
</select> 
<input type="button" value="글쓰기" onclick="upNoticeForm()" class="write_btn">
<div class="view">
	<ul>
		<li>글번호</li>
		<li>제목</li>
		<li>작성일</li>
	</ul>
</div>
<div class="view_form">

</div>
</body>
</html>