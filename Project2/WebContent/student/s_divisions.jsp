<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${divisionList }" var="i" varStatus="stat">
${i }<c:if test="${stat.index<divisionList.size()-1}">|</c:if>
</c:forEach>