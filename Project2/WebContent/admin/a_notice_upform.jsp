<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/notice_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		var content = $('[name=content]').val();
		$('form').ajaxForm({
			beforeSubmit : function() {
				var flag = false;
				if ($('[name=title]').val().length == 0)
					alert('제목을 입력하세요.');
				else if ($('[name=content]').val().length == 0)
					alert('내용을 입력하세요.');
				else if ($('[name=content]').val() == content)
					alert('수정된 내용이 없습니다.');
				else
					flag = true;
				return flag;
			},
			success : function(result, status) {
				result = result.trim();
				if (result == "true") {
					alert('수정 성공');
					opener.getList('학사');
					self.close();
				} else
					alert('수정 실패');
			},
			error : function(xhr, status, error) {
				self.close();
				opener.location.href='/Project2/common/errorPage.jsp';
			}
		});
		$('[name=delete]').click(function() {
			if (confirm("삭제하시겠습니까?")) {
				$.ajax({
					url : '/Project2/admin/notice_list.do',
					type : 'POST',
					data : {
						action : 'delete',
						no : $('[name=no]').val()
					},
					success : function(result, status) {
						result = result.trim();
						if (result == "true") {
							alert('삭제 성공');
							opener.getList('학사');
							self.close();
						} else
							alert('삭제 실패');
					},
					error : function(xhr, status, error) {
						self.close();
						opener.location.href='/Project2/common/errorPage.jsp';
					}
				});
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
		<form action="notice_list.do?action=update" name="upform_frm" method="post">
		<input type="hidden" name="no" value=${dto.no }>
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value=${dto.title }></td>
				</tr>
				<tr>
					<th class="td_ta">내용</th>
					<td><textarea rows="15" cols="30" name="content">${dto.content }</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정" class="btn_upform">
						<input type="button" name='delete' value="삭제" class="btn_upform">
						<input type="button" name='cancel' value="취소" class="btn_upform">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>