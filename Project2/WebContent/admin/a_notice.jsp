<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Project2/common/css/not.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
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
		
		
		
/* 
		$('[name=body_checked]').change(function(){
			var checked=$(this).val();
			if(checked!='학사/취업') getList(checked);
		});
 */
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
	
	function upNoticeForm() {
		childWin = window.open('/Project2/admin/a_notice_form.jsp', 'form_write',
				'width=300,height=400,top=100,left=200');
	}
</script>
</head>
<body>

	<form name="body_frm">
		<select name="body_checked" class="check">
			<option value='학사/취업'>학사/취업</option>
			<option value="학사">학사공지사항</option>
			<option value="취업">취업공지사항</option>
		</select> 
		
		 <input type="button" value="글쓰기" onclick="upNoticeForm()" class="write_btn">
		
		
		<center>
			<div class="view">
				<ul>
					<li>글번호</li>
					<li>제목</li>
					<li>작성일</li>
				</ul>
			</div>
			<div class="view_form">

			</div>

		

			<br> <br>

		</center>

	</form>
</body>
</html>