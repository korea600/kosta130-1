<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <select>
    <option>==선택==</option>
    <c:forEach items="${list }" var="subject"> 
      <option>${subject.division }</option>
    </c:forEach>
   </select>