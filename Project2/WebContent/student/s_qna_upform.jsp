<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/qna_form.css"
	type="text/css" />
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>건의사항 확인 (수정/삭제)</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		var content = $('[name=content]').val();
		$('form').ajaxForm({
			beforeSubmit : function() {
				var flag=false;
				if($('[name=title]').val().length==0){
					alert('제목을 입력하세요.');
				}
				else if($('[name=content]').val().length==0){
					alert('내용을 입력하세요.');
				}
				else if($('[name=content]').val()==content){
					alert('수정된 내용이 없습니다.');
				}
				else flag=true;
				return flag;
			},
			success : function(result, status) {
				result = result.trim();
				if (result == "true") {
					alert('수정 성공');
					opener.getList();
					self.close();
				} else
					alert('수정 실패');
			},
			error : function(xhr, status, error) {
				alert('Error ! : ' + error);
				self.close();
			}
		});

		$('[name=delete]').click(function() {
			if (confirm("삭제하시겠습니까?")) {
				var status = document.qnaform.status.value;
				var no = document.qnaform.no.value;
				$.ajax({
					url : '/Project2/student/qna.do',
					type : 'POST',
					data : {
						action : 'delete',
						status : $('[name=status]').val(),
						no : $('[name=no]').val()
					},
					success : function(result, status) {
						result = result.trim();
						if (result == "true") {
							alert('삭제 성공');
							opener.getList();
							self.close();
						} else
							alert('삭제 실패');
					},
					error : function(xhr, status, error) {
						alert('Error ! : ' + error);
						self.close();
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
	<form name="qnaform" action="/Project2/student/qna.do?action=edit"
		method="post">
		<table id="table_reg">
			<input type="hidden" name="no" value="${upform.no }">
			<input type="hidden" name="status" value="${upform.status }">
			<tr>
				<th>상담제목</th>
				<td><input type=text name="title" value="${upform.title }"></td>
			</tr>
			<tr>
				<th id="td_ta">내용</th>
				<td><textarea rows="15" cols="40" name="content">${upform.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<c:if test="${upform.status=='처리중'}">
						<input type='submit' value="수정">
						<input type="button" value="삭제" name='delete'>
					</c:if>
					<input type="button" value="닫기" name='cancel' id="btn_sub">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>