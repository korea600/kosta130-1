<%@page import="admin.reg.model.RegDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/ajax2.js"></script>
<script type="text/javascript">
function delete1() {
	var id = document.upForm.id.value;
	location.href="a_regForm.do?action=delete&id="+id;
}
</script>

</head>
<body>
	<form action="a_regForm.do?action=update" method="post" name="upForm">
		<input type="hidden" name="id" value="${reg.id }">
		<table id="table_reg">
			<tr>
				<th width="100px">이름</th>
				<td><input type=text name=username value="${reg.name }"
					disabled></td>
			</tr>
			<tr>
				<th width="100px">연락처</th>
				<td><input type=text name=phoneNum value="${reg.tel }" readonly="readonly"></td>
			</tr>
			<tr>
				<th>신청내역</th>
				<td><input type="text" name="request"
					value="${reg.request }" readonly="readonly"></td>
			</tr>
			<tr>
				<th>사유</th>
				<td><textarea rows="15" cols="40"
						disabled>${reg.reason }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="승인">
					<input type=button name="dbutton" value="거절" onclick="delete1()"></td>
			</tr>
		</table>
	</form>
</body>
</html>