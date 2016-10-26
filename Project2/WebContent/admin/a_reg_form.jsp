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
<script type="text/javascript"></script>
</head>
<body>
	<form>
		<input type="hidden" name="id" value="${reg.id }">
		<table id="table_reg">
			<tr>
				<th width="100px">이름</th>
				<td><input type=text name=username value="${reg.name }"
					disabled></td>
			</tr>
			<tr>
				<th width="100px">연락처</th>
				<td><input type=text name=phoneNum value="${reg.tel }" disabled></td>
			</tr>
			<tr>
				<th>신청내역</th>
				<td><input type="text" name="request"
					value=${register.request } disabled></td>
			</tr>
			<tr>
				<th>사유</th>
				<td><textarea rows="15" cols="40" value=${register.reason }
						disabled></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type=submit value="승인">
					<input type=button value="거절"></td>
			</tr>
		</table>
	</form>
</body>
</html>