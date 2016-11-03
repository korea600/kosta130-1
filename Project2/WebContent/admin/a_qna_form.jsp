<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/qna_form.css"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>건의사항 처리</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		var oldContent = $('[name=content]').val();
		$('form').ajaxForm({
			beforeSubmit : function() {
				var flag = false;
				if ($('[name=content]').val().length == 0)
					alert('내용을 입력해주세요.');
				else if ($('[name=content]').val() == oldContent)
					alert('내용이 수정되지 않았습니다.');
				else
					flag = true;
				return flag;
			},
			success : function(result, status) {
				result = result.trim();
				if (result == "true") {
					alert('답변 적용이 완료되었습니다.');
					opener.getList();
					self.close();
				} else
					alert('답변이 적용되지 않았습니다.');
			},
	        error:function(xhr,status,error){
	        	self.close();
				location.href='/Project2/common/errorPage.jsp';
			}
		});
		$('[name=cancel]').click(function() {
			self.close();
		});
	})
</script>
</head>
<body>
	<form name="qnaform" action="/Project2/admin/qna.do?action=update"
		method="post">
		<input type="hidden" name="no" value="${upform.no }">
		<table>
			<tr>
				<th>상담제목</th>
				<td><input type=text name="title" value="${upform.title }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<th id="td_ta">내용</th>
				<td><textarea rows="15" cols="38" name="content">${upform.content }</textarea></td>
			</tr>
		</table>
		<center>
			<input type=submit value="답변완료">
			<input type="button" value="취소" name='cancel'>
		</center>
	</form>
</body>
</html>