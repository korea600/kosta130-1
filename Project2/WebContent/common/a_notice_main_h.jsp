<%@page import="notice.model.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<b>학사공지</b>

<% request.setCharacterEncoding("UTF-8");
	List<NoticeDTO> list = (List<NoticeDTO>)request.getAttribute("list_h");%>
<table>
<tr>
<th>학사공지</th>
<th>날짜</th>
</tr>
</table>
<% for(int i=0; i<list.size(); i++){ %>
<tr>
<th><%=list.get(i).getTitle() %></th>
</tr>
<%} %>
</center>
</body>
</html>