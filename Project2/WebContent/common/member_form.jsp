<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/member_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table>
		<tr>
			<th>학 번</th>
			<td><input type="text" name="ab_name" maxlength="15" value="${LoginDTO.id }"></td>
		</tr>
		<tr>
			<th>이 름</th>
			<td><input type="text" name="ab_name" maxlength="15" value="${LoginDTO.name }"></td>
		</tr>
		<tr>
			<th>email</th>
			<td><input type="email" name="ab_email" maxlength="50"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="ab_tel" maxlength="20"></td>
		</tr>
		<tr>
			<th>주 소</th>
			<td><input type="text" name="ab_birth"></td>
		</tr>
		<tr>
			<th>학 과</th>
			<td><input type="text" name="ab_comdept" maxlength="20"></td>
		</tr>
		<tr>
			<td colspan=2 align=center>
				<input type=submit value="저장">
				<input type=reset value="취소">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>