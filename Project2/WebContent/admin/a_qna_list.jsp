<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	$(function(){
		$('.edit').click(function(){
			var no = $(this).prev().prev().text();
			childWin=window.open('/Project2/admin/upformQna.do?action=upform&no='+no,'check','toolbar=yes,location=yes,status=yes'
							+'menubar=yes,scrollbars=yes,resizable=0,width=400,height=350,top=100,left=200');
		});
	});
</script>
<c:forEach items="${AdminQna}" var="i" varStatus="stat">
	<ul>
	<li>${i.no}</li>
	<li>${i.title}</li>
	<li class='edit' style='cursor:pointer'>${i.content}</li>
	<li>${i.name}</li>
	<li>${i.times}</li>
	</ul>
</c:forEach>

