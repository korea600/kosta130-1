<%@page import="java.util.List"%>
<%@page import="schedule.model.ScheduleDTO"%>
<%@page import="schedule.model.ScheduleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String action = request.getParameter("action");
	String month = request.getParameter("month");
	ScheduleDAO dao = new ScheduleDAO();
	List<ScheduleDTO> list = null;
	
	if(action.equals("moSearch")){
		list = dao.search(month);
	}
	
	for(int i=0; i<list.size(); i++){
%>
<ul class="member_text">
			<li><%= list.get(i).getNo()%></li>
			<li><%= list.get(i).getStarts()%></li>
			<li><%= list.get(i).getEnds()%></li>
			<li><%= list.get(i).getContent()%></li>
			<li><%= list.get(i).getEtc()%></li>
			<li><%= list.get(i).getPresenter()%></li>
		</ul>
<%} %>
		