<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- mission4.jsp --%>
<select>
	<c:forEach items="${list }" var="area">
		<option>${area }</option>
	</c:forEach>
</select>