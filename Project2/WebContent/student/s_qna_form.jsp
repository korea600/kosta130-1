<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/qna_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>건의사항 입력</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		$('form').ajaxForm({
			beforeSubmit : function() {
				var flag=false;
				if($('[name=title]').val().length==0)
					alert("제목을 입력하세요.");
				else if($('[name=content]').val().length==0)
					alert("내용을 입력하세요.");
				else flag=true;
				return flag;
			},
			success : function(result, status) {
				result = result.trim();
				if (result == "true") {
					alert('입력 성공');
					opener.getList();
					self.close();
				} else
					alert('입력 실패');
			},
	        error:function(xhr,status,error){
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
	<form name="qnaform" action="/Project2/student/qna.do?action=insert"
		method="post">
		<table id="table_reg">
			<tr>
				<th>상담제목</th>
				<td><input type=text name="title" size="38"></td>
			</tr>
			<tr>
				<th id="td_ta">내용</th>
				<td><textarea rows="15" cols="38" name="content"></textarea></td>
			</tr>
		</table>
		<center><input type='submit' value="신청">
				<input type="button" value="취소" name='cancel'></center>
	</form>
</body>
</html>