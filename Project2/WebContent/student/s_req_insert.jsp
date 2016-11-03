<%@page import="member.model.LoginDTO"%>
<%@page import="reg.model.RegDTO"%>
<%@page import="reg.model.S_RegDAO"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
S_RegDAO dao = new S_RegDAO();
LoginDTO dto = (LoginDTO) session.getAttribute("LoginDTO");
String id = dto.getId();
String name = dto.getName();
String request1 = request.getParameter("request");
String reason = request.getParameter("reason");
RegDTO regdto = new RegDTO(id,request1,reason,null,"처리중",null,name,null);
boolean ch = dao.s_reginsert(regdto);
if(ch==true){
%>
<%="ok" %>
<%}else if(ch==false){ %>
<%="no" %>
<%} %>