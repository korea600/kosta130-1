<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function exitForm(){
		window.close();
	}
	
	function updateForm(){
		document.qnaform.submit();
		window.close();
		opener.location.href='/Project2/admin/listQnaConfirm.do?action=AdminQna';
	}
</script>
</head>
<body>
	<form name="qnaform" action="/Project2/admin/upformQna.do?action=update" method="post">
	<input type="hidden" name="no" value="${upform.no }">
	<table id="table_reg">
	
		<tr>
			<th>상담제목</th>
			<td><input type=text name="title" value="${upform.title }" disabled></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="15" cols="40" name="content">${upform.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type=submit value="답변완료" onclick="updateForm()">
			<input type="button" value="취소" onclick="exitForm()"></td>
		</tr>
	</table>
	</form>
</body>
</html>