<%@page import="reg.model.RegDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="/Project2/common/css/reg.css"
	type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css"
	type="text/css" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적목록화면</title>
<script type="text/javascript">
	var childWin;
	$(function(){
		$('.write_btn').click(function(){
			childWin=window.open('/Project2/s_regForm.do?action=viewForm&id=${LoginDTO.id }','check','width=500,height=400,menubar=no,status=no,toolbar=no,resizable=no,left=200,top=200');
		})
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
				<li>${reg.reason }</li>
				<li>${reg.times }</li>
				<li>${reg.checked }</li>
			</ul>
		</c:forEach>
	</div>
	<div class="input_box"></div>

</body>
</html>

