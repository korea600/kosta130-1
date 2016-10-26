<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="table_reg">
		<tr>
			<th width="100px">이름</th>
			<td><input type=text disabled></td>
		</tr>
		<tr>
			<th>신청구분</th>
			<td align="center">
				<input type="radio" name="reason">일반휴학
				<input type="radio" name="reason">군휴학
				<input type="radio" name="reason">기타
			</td>
		</tr>
		<tr>
			<th>사유</th>
			<td><textarea rows="15" cols="40"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type=submit value="수정완료"><button>신청취소</button></td>
		</tr>
	</table>
</body>
</html>