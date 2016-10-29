<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function delete_check(){
		if(confirm("삭제하시겠습니까?")){
			var status = document.qnaform.status.value;
			var no = document.qnaform.no.value;
		opener.location.href= "/Project2/student/resultQna.do?action=delete&status="+status+"&no="+no;
		window.close();
		}
	}
</script>
</head>
<body>
	<form name="qnaform" action="/Project2/student/resultQna.do?action=insert" method="post">
	<table id="table_reg">
	<input type="hidden" name="no" value="${upform.no }">
	<input type="hidden" name="status" value="${upform.status }">
		<tr>
			<th>상담제목</th>
			<td><input type=text name="title" value="${upform.title }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="15" cols="40" name="content">${upform.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type=submit value="신청">
			<c:if test="${upform.status eq '처리중'}">
				<input type="button" value="삭제" onclick="delete_check()"></td>
			</c:if>
		</tr>
	</table>
	</form>
</body>
</html>