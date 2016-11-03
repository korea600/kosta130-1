<%@page import="reg.model.RegDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="/Project2/common/css/reg.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적목록화면</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var childWin;
	$(function(){
		$('.write_btn').click(function(){
			$.ajax({
				url:'/Project2/s_regupdate.do',
				data:{
					action:'check'	
				},
				type:'POST',
				success:function(data){
					data=data.trim();
					if(data=='true'){
						childWin = window.open('/Project2/student/s_reg_form.jsp','insert',
						'width=500,height=400,menubar=no,status=no,toolbar=no,resizable=no,left=200,top=200');						
					}
					else
						alert('처리 대기중인 건이 이미 있으므로 새로운 신청이 불가능 합니다.');
				},
		        error:function(xhr,status,error){
					location.href='/Project2/common/errorPage.jsp';
				}
			});
		});
		$('.reason').click(function(){
			var checked=$(this).next().next().text();
			if(checked=='처리중'){
				childWin = window.open('/Project2/s_regupdate.do?action=view','check',
				'width=500,height=400,menubar=no,status=no,toolbar=no,resizable=no,left=200,top=200');
			}
			else
				alert('처리완료된 것은 수정/삭제가 불가능 합니다.');
				
		});
	})
</script>
</head>
<body>
	<div class='write_btn'>신청하기</div>
	<!-- <a id="reg_btn" href="#"
		onclick="window.open('/Project2/s_regForm.do?action=viewForm&id=${LoginDTO.id }','학적변경 신청 확인','width=500,height=400,menubar=no,status=no,toolbar=no,resizable=no,left=200,top=200');">신청하기</a>
		-->
	<div class="member_info">
		<ul class="top_text">
			<li>학번</li>
			<li>구분</li>
			<li>사유</li>
			<li>신청일</li>
			<li>상태</li>
		</ul>
		<c:forEach items="${list }" var="reg">
			<ul class="member_text">
				<li>${reg.id }</li>
				<li>${reg.request }</li>
				<li class='reason' style="cursor: pointer;">${reg.reason }</li>
				<li>${reg.times }</li>
				<li>${reg.checked }</li>
			</ul>
		</c:forEach>
	</div>
	<div class="input_box"></div>

</body>
</html>

