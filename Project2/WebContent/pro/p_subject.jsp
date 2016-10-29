<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Project2/common/css/p_subject.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<title>과목조회</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	$(function(){
		$('.edit').click(function(){
			var checked=$(this).prev().text();
			if(checked=='처리완료')
				alert("이미 등록이 완료되어 수정할 수 없습니다.");
			else{
				childWin = window.open('/Project2/pro/subjectlist.do?code='+$(this).val(),'check','toolbar=yes,location=yes,status=yes'
						+'menubar=yes,scrollbars=yes,resizable=0,width=600,height=400,top=100,left=100');
			}
		});
		$('.input_btn').click(function(){
			childWin = window.open("/Project2/pro/p_subject_form.jsp",'check','toolbar=yes,location=yes,status=yes'
					+'menubar=yes,scrollbars=yes,resizable=0,width=600,height=400,top=100,left=100');
		});
	});
</script>
</head>
<body>
<section>	<!-- 1024px -->

<div class="sub_list">
	<div class='input_btn'>등록</div>
	<ul class="top_text">
		<li>개설연도</li>
		<li>학기</li>
		<li>과목코드</li>
		<li>과목명</li>
		<li>교수명</li>
		<li>시간</li>
		<li>강의실</li>
		<li>처리상태</li>
		<li></li>
	</ul>
	<c:forEach items="${subject_list}" var="i">
		<ul class="list_text">
			<li>${i.year}</li>
			<li>${i.semester}</li>
			<li>${i.code}</li>
			<li>${i.sub}</li>
			<li>${i.name}</li>
			<li>${i.times}</li>
			<li>${i.room}</li>
			<li>${i.checked}</li>
			<li class='edit' value="${i.code }">수정/삭제</li>
		</ul>
	</c:forEach>
</div>
</section>
</body>
</html>