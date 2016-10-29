<%@page import="schedule.model.ScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/Table.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
			<%
				ScheduleDTO sdto = (ScheduleDTO) request.getAttribute("upform");
				String starts = sdto.getStarts();
				String[] sarray = starts.split("-");
				String[] ssarray = sarray[2].split(" ");
				String[] sssarray = ssarray[1].split(":");
			%>
<script type="text/javascript">
	function pass_check(ud){
	if(ud=='del'){
		if(confirm('정말삭제?'))
		location.href='/Project2/admin/addResult.do?action=delete&no=<%= sdto.getNo() %>';
	}else{
		document.schAdd.submit();
	}
}
</script>
</head>
<body>
<center>
<!-- <form name="schAdd" action="/struts/Admin/list.do?action=insert"> -->
<form name="schAdd" action="/Project2/admin/addResult.do?action=update" method="post">
    <input type="hidden" name="no" value="<%= sdto.getNo() %>">
	<table>
		<tr>
		<th>시작</th>
			<td><select name="syear">
			<option>년</option>
			<%
			for (int i = 2018; i > 2010; i--) {
				if (sarray[0].equals(String.valueOf(i))) {
					out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");
				}else{
				out.println("<option value=" + i + ">" + i + "</option>");
				}
			}
			%>

			</select> <select name="smonth">
			<option>월</option>
			<%
			for (int i = 1; i < 13; i++) {
				if(i>9){
					if (sarray[1].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}else{
					if (sarray[1].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}//for
			%>
			</select> <select name="sday">
			<option>일</option>
			<%
			for (int i = 1; i < 32; i++) {
				if(i>9){
					if (ssarray[0].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10) {
			%>
							<option value="<%=i%>">0<%=i%></option>
			<%
						}else{
			%>
							<option value="<%=i%>"><%=i%></option>
			<%
						}
					}
				}else{
					if (ssarray[0].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}//for
			%>
			</select> <select name="shour">
			<option>시</option>
			<%
			for (int i = 0; i < 24; i++) {
				if(i>9){
					if (sssarray[0].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}else{
					if (sssarray[0].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}
			%>
			</select> <select name="sminute">
			<option>분</option>
			<%
			for (int i = 0; i < 60; i+=10) {
				if(i>9){
					if (sssarray[1].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}else{
					if (sssarray[1].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}
			%>
			</select></td>
		</tr>
		<tr>
		<th>종료</th>
			<% ScheduleDTO edto = (ScheduleDTO) request.getAttribute("upform");
				String ends = edto.getEnds();
				String[] earray = ends.split("-");
				String[] eearray = earray[2].split(" ");
				String[] eeearray = eearray[1].split(":");
			%>
			<td><select name="eyear">
			<option>년</option>
			<%
				for (int i = 2018; i > 2010; i--) {
					if (earray[0].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");
					}else{
					out.println("<option value=" + i + ">" + i + "</option>");
					}
				}
			%>
			</select> <select name="emonth">
			<option>월</option>
			<%
			for (int i = 1; i < 13; i++) {
				if(i>9){
					if (earray[1].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}else{
					if (earray[1].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}
			%>
			</select> <select name="eday">
			<option>일</option>
			<%
				for (int i = 1; i < 32; i++) {
					if(i>9){
						if (eearray[0].equals(String.valueOf(i))) {
							out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
						}else{
							if (i < 10) {
				%>
								<option value="<%=i%>">0<%=i%></option>
				<%
							}else{
				%>
								<option value="<%=i%>"><%=i%></option>
				<%
							}
						}
					}else{
						if (eearray[0].equals(String.valueOf("0"+i))) {
							out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
						}else{
							if (i < 10){
								out.println("<option value=" + i + ">0" + i + "</option>");
							}else{
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						}
					}
				}
			%>
			</select> <select name="ehour">
			<option>시</option>
			<%
				for (int i = 0; i < 24; i++) {
					if(i>9){
						if (eeearray[0].equals(String.valueOf(i))) {
							out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
						}else{
							if (i < 10){
								out.println("<option value=" + i + ">0" + i + "</option>");
							}else{
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						}
					}else{
						if (eeearray[0].equals(String.valueOf("0"+i))) {
							out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
						}else{
							if (i < 10){
								out.println("<option value=" + i + ">0" + i + "</option>");
							}else{
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						}
					}
				}
			%>
			</select><select name="eminute">
			<option>분</option>
			<%
			for (int i = 0; i < 60; i+=10) {
				if(i>9){
					if (eeearray[1].equals(String.valueOf(i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}else{
					if (eeearray[1].equals(String.valueOf("0"+i))) {
						out.println("<option value='" + i + "' selected='selected'>" + i + "</option>");					
					}else{
						if (i < 10){
							out.println("<option value=" + i + ">0" + i + "</option>");
						}else{
							out.println("<option value=" + i + ">" + i + "</option>");
						}
					}
				}
			}
			%>
			</select></td>
		</tr>
		<tr>
		<th>내용</th>
			<td><textArea name="content">${upform.content }</textArea></td>
		</tr>
		<tr>
		<th>비고</th>
			<td><input type="text" name="etc" maxlength="20" value="${upform.etc }"></td>
		</tr>
		<tr>
			<td colspan=2 align=center>
				<input type="button" value="수정" onclick="pass_check('up')">
				<input type="button" value="삭제" onclick="pass_check('del')">
				<input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>