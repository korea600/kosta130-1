<%@page import="member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/a_member.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<script type="text/javascript">
$( document ).ready(function() {
	$('.school_btn').click(function(){
		var dept = document.frm.part.value;
		var sem = document.frm.level.value;
	    $.ajax({
	        url:'/Project2/admin/school_btn_ajax.jsp',
	        type:'post',
	        data:{"action":"scr_selec","dept":dept,"sem":sem},
	        success:function(data){
	        	$(".input_box").empty();
	            $(".input_box").append(data);
	        }
	    })
	});
	
	$('.name_btn').click(function(){
		var dept = document.frm.part.value;
		var sem = document.frm.level.value;
		var cate = $(".name").val();
		var text = $(".name_text").val();
		console.log(cate+text);
	    $.ajax({
	        url:'/Project2/admin/school_btn_ajax.jsp',
	        type:'post',
	        data:{"action":"scr_selec2","dept":dept,"sem":sem,"cate":cate,"text":text},
	        success:function(data){
	        	$(".input_box").empty();
	            $(".input_box").append(data);
	        }
	    })
	});
});



/*function left_sc(){
	var dept = document.frm.part.value;
	var sem = document.frm.level.value;
	location.href="/Project2/common/edit.do?action=scr_select&dept="+dept+"&sem="+sem;
}*/
</script>
</head>
<body>
<form name="frm">
<section>
		<div class="member_form" style="margin-top: 0px;">
			<!--검색-->
			<div class="search">
				<!--left-->
				<div class="left_search">
					<select class="part" name="part">
						<option>학과</option>
						<c:forEach items="${list }" var="sub">
						<option>${sub.dept }</option>
						</c:forEach>
					</select>

					<select class="level" name="level">
						<option>학년</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
					<div class="school_btn"> 조회</div>
				</div>
				<!--right-->
				<div class="right_search">
					<select class="name">
						<option value="이름">이름</option>
						<option value="학번">학번</option>
					</select>
					<input type="text"  class="name_text"/>
					<div class="name_btn">검색</div>
				</div>
			</div>
			<!--검색-->

			<div class="member_info">
				<ul class="top_text">
					<li>학번</li>
					<li>학과</li>
					<li>이름</li>
					<li>학년</li>
					<li>상태</li>
					<li>연락처</li>
					<li>수정/삭제</li>					
				</ul>
			
				<div class="input_box">
				</div>
		
			
			</div>
		</div>
	</section>
</form>
</body>
</html>