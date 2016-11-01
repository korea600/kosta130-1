<%@page import="reg.model.RegDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="/Project2/common/css/a_mem.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적목록화면</title>

</head>
<body>
	<a href="#" onclick="window.open('/Project2/s_regForm.do?action=viewForm&id=${LoginDTO.id }','학적변경 신청 확인','width=500,height=400,menubar=no,status=no,toolbar=no,resizable=no,left=200,top=200');">신청하기</a></td>
	<br>
	<br>
	<div class="member_info">
	<ul class="top_text">
			<li>학번</li>
			<li>구분</li>
			<li>사유</li>
			<li>신청일</li>
			<li>상태</li>
		</ul>
	</div>
	<div class="input_box">
	</div>
	
</body>
</html>

