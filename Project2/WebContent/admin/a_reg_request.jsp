<%@page import="admin.reg.model.RegDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적목록화면</title>
<script type="text/javascript"></script>
</head>
<body>
	<br>
	<br>
	<table border=1 width=80%>
		<TR>
			<th>순번</th>
			<th>구분</th>
			<th>사유</th>
			<th>신청일</th>
			<th>상태</th>
		</TR>

		<c:forEach items="${list }" var="reg">
			<tr>
				<td><a href="a_regForm.do?action=viewForm&id=${reg.id }">${reg.id }</a></td>
				<td>${reg.request }</td>
				<td>${reg.reason }</td>
				<td>${reg.times }</td>
				<td>${reg.checked }</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	</center>
</body>
</html>

