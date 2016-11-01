<%@page import="schedule.model.ScheduleDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Project2/common/css/a_schedule.css" rel="stylesheet" type="text/css" />
<link href="/Project2/common/css/style.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<script type="text/javascript" src="../js/ajax2.js"></script>

<script type="text/javascript">

$( document ).ready(function() {
	$('#search').click(function(){
		var month = document.sch.month.value;
		console.log(month)
		$.ajax({
			url:'/Project2/admin/schedule_btn_ajax.jsp',
			type:'post',
			data:{"action":"moSearch","month":month},
			success:function(data){
				$(".schedule_form").empty();
				$(".schedule_form").append(data);
				}
		})
	});
	$('#insert').click(function(){
		childWin = window.open('/Project2/admin/a_schedule_add.jsp', 'insert',
								'width=300,height=400,top=100,left=200');
	});
});
</script>
</head>
<body>
<form name="sch">
	<div class="schedule_btn">
		<select name="month" id="select" class="mos mos_1">
		<option>월</option>
			<%
				for (int i = 1; i < 13; i++) {
					if (i < 10)
						out.println("<option value=0" + i + ">0" + i + "</option>");
					else
						out.println("<option value=" + i + ">" + i + "</option>");
				}
			%>
		</select>
		<input type="button" value="조회" id="search" class="mos mos_2">
		<input type="button" value="등록" id="insert" class="mos mos_3">
	</div>
		
	
	<div class="schedule_top">
		<ul>
			<li>번호</li>
			<li>시작</li>
			<li>종료</li>
			<li>내용</li>
			<li>비고</li>
			<li>작성자</li>
		</ul>
	</div>
	<div class="schedule_form">
		<%
		List<ScheduleDTO> list = (List<ScheduleDTO>)request.getAttribute("list");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					ScheduleDTO dto=list.get(i);
					out.print("<ul><li>"+dto.getNo()+"</li><li>"+dto.getStarts()+"</li><li>"+dto.getEnds()+
						"</li> <li> <a href='/Project2/admin/addResult.do?action=upform&no="+dto.getNo()+"'>"+dto.getContent()+"</a></li><li>"+
						dto.getEtc()+"</li><li>"+dto.getPresenter()+"</li></ul>");
				}
			}
		%>
	</div>
	
</form>
</body>
</html>