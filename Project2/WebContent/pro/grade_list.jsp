<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
{
	dto:[
		<c:forEach items="${list}" var='i' varStatus="stat">{
		"semester":"${i.seasons}","dept":"${i.dept}","id":"${i.id}","name":"${i.name}","grade":"${i.grade}"
		}<c:if test="${stat.index<list.size()-1}">,</c:if>
		</c:forEach>
	]
}