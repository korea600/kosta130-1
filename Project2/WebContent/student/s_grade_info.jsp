<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/student_list.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="member_form" style="margin-top: 0px;">
	<div class="allGrade_info">
		<ul class="top_text">
			<li>1-1</li>
			<li>1-2</li>
			<li>2-1</li>
			<li>2-2</li>
			<li>3-1</li>
			<li>3-2</li>
			<li>4-1</li>
			<li>4-2</li>
			<li>총평점</li>
		</ul>

		<div class="input_box1">
			<ul class="grade_text">
			<c:forEach items="${averages}" var='i'>
				<li>${i}</li>
			</c:forEach>
			</ul>
		</div>
	</div>
	
	<div class="grade_info">
		<ul class="top_text">
			<li>년도/학기</li>
			<li>과목코드</li>
			<li>과목명</li>
			<li>구분</li>
			<li>교수</li>
			<li>학점</li>
		</ul>

		<div class="input_box2">
		<c:forEach items="${mygrade}" var="i">
			<ul class="member_text">
				<li>${i.year}-${i.semester}</li>
				<li>${i.code}</li>
				<li>${i.sub}</li>
				<li>${i.checked}</li>
				<li>${i.professor}</li>
				<li>${i.grade}</li>
			</ul>
		</c:forEach>
		</div>
	</div>
</div>
</body>

</html>