<%@page import="reg.model.RegDTO"%>
<%@page import="reg.model.S_RegDAO"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
S_RegDAO dao = new S_RegDAO();
String id = request.getParameter("id");
String name = request.getParameter("name");
String request1 = request.getParameter("request");
String tel = request.getParameter("tel");
String reason = request.getParameter("reason");
RegDTO dto = new RegDTO(id,request1,reason,null,"처리중",null,name,tel);
boolean ch = dao.s_reginsert(dto);
%>
<%=ch %>
