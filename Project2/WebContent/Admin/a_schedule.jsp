<%@page import="schedule.model.ScheduleDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/ajax2.js"></script>
<script type="text/javascript">
	function ch(){
		console.log("ddd");
		var mo= document.sch.month.value;
		location.href="addResult.do?action=search&month="+mo;
	}
</script>
</head>
<body>
<form name="sch">
	<select name="month" id="select">
	<option>월</option>
	<option>
		<%
			for (int i = 1; i < 13; i++) {
				if (i < 10)
					out.println("<option value=0" + i + ">0" + i + "</option>");
				else
					out.println("<option value=" + i + ">" + i + "</option>");
			}
		%>
	</option>
	</select>
	<input type="button" value="조회" onclick="ch()">
	<input type="button" value="등록" onclick="location.href='add.do'">
	<table>
		<tr>
		<th>번호</th>
		<th>시작</th>
		<th>종료</th>
		<th>내용</th>
		<th>비고</th>
		<th>작성자</th>
		</tr>
		<%
		List<ScheduleDTO> list = (List<ScheduleDTO>)request.getAttribute("list");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					ScheduleDTO dto=list.get(i);
					out.print("<tr><td>"+dto.getNo()+"</td><td>"+dto.getStarts()+"</td><td>"+dto.getEnds()+
						"</td> <td> <a href='addResult.do?action=upform&no="+dto.getNo()+"'>"+dto.getContent()+"</a></td><td>"+
						dto.getEtc()+"</td><td>"+dto.getPresenter()+"</td></tr>");
				}
			}
		%>
	</table>
</form>
</body>
</html>