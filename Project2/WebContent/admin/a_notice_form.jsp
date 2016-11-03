<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/notice_form.css"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		$('form').ajaxForm({
			beforeSubmit : function() {
				var flag = false;
				if ($('[name=title]').val().length == 0)
					alert('제목을 입력하세요.');
				else if ($('[name=content]').val().length == 0)
					alert('내용을 입력하세요.');
				else
					flag = true;
				return flag;
			},
			success : function(result, status) {
				result = result.trim();
				if (result == "true") {
					alert('입력 성공');
					opener.getList($('[name=checked]').val());
					self.close();
				} else
					alert('입력 실패');
			},
			error : function(xhr, status, error) {
				self.close();
				opener.location.href='/Project2/common/errorPage.jsp';
			}
		});

		$('[name=cancel]').click(function() {
			window.close();
		});
	});
</script>
</head>
<body>
	<center>
		<form name="frm" action="notice_list.do?action=insert" method="post">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th class=td_ta>내용</th>
					<td><textarea rows="15" cols="30" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<th>구분</th>
					<td>
						<select name="checked">
							<option value="학사">학사</option>
							<option value="취업">취업</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" value="확인" class="btn_form">
						<input type="button" name='cancel' value="취소" class="btn_form">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>