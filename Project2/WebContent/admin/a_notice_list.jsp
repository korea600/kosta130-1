<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	$('.edit').click(function(){
		var no = $(this).prev().text();
		childWin=window.open('/Project2/admin/notice_list.do?action=viewupdate&no='+no,'check','toolbar=yes,location=yes,status=yes'
						+'menubar=yes,scrollbars=yes,resizable=0,width=300,height=400,top=100,left=200');
	})
			
</script>
<c:forEach items="${list}" var="i">
<ul>
	<li>${i.no}</li>
	<li class='edit' style="cursor:pointer" >${i.title}</li>
	<li>${i.gdate}</li>
</ul>
</c:forEach>