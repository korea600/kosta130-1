<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="table">
		<tr id="th_grade">
			<th>1 - 1</th>
			<th>1 - 2</th>
			<th>2 - 1</th>
			<th>2 - 2</th>
			<th>3 - 1</th>
			<th>3 - 2</th>
			<th>4 - 1</th>
			<th>4 - 2</th>
			<th>총평점</th>
		</tr>
		<tr>
			<c:forEach items="${averages}" var='i'>
				<td>
					${i}
				</td>
			</c:forEach>
		</tr>
	</table>
	<br>
	<table id="table">
		<tr>
			<th id="td_mid">년도/학기</th>
			<th id="td_mid">과목코드</th>
			<th id="td_lar">과목명</th>
			<th id="td_sml">구분</th>
			<th id="td_sml">교수</th>
			<th id="td_sml">학점</th>
		</tr>
		<c:forEach items="${mygrade}" var="i">
		<tr>
			<td>${i.year}-${i.semester}</td>
			<td>${i.code}</td>
			<td>${i.sub}</td>
			<td>${i.checked}</td>
			<td>${i.professor}</td>
			<td>${i.grade}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>