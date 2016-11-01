<%@page import="reg.model.RegDTO"%>
<%@page import="reg.model.A_RegDAO"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String action = request.getParameter("action");
A_RegDAO dao = new A_RegDAO();
if(action.equals("update")){
RegDTO reg = new RegDTO(request.getParameter("id"), null, null, null, "승인", request.getParameter("request"),
		null, null);
boolean ch = dao.update(reg);
if(ch==true){
%>
<%="ok" %>
<%}else if(ch==false){ %>
<%="no"%>
<%}
}else if(action.equals("delete")){
	RegDTO reg = new RegDTO(request.getParameter("id"), null, null, null, "거절", null, null, null);
	boolean ch = dao.delete(reg);
	if(ch==true){%>
		
		<%="ok" %>
		<%}else if(ch==false){ %>
		<%="no"%>
<% }}%>