<%@page import="admin.reg.model.RegDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적목록화면</title>
<script type="text/javascript" src="../js/ajax2.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<!-- ID		REQUEST		REASON		TIMES		STATUS -->
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
		<tr>
			<%
				List<RegDTO> list = (List<RegDTO>) request.getAttribute("list");
				for (int i = 0; i < list.size(); i++) {
					RegDTO reg = list.get(i);
			%>
		</tr>
		<tr>
			<td><a href="a_reg.do?action=a_list_form&id=<%=reg.getId()%>"><%=reg.getId()%></a></td>
			<td><%=reg.getRequest()%></td>
			<td><%=reg.getReason()%></td>
			<td><%=reg.getTimes()%></td>
			<td><%=reg.getStatus()%></td>
			<%
				}
			%>
		</tr>
	</table>
	<br>
	</center>
</body>
</html>

