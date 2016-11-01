<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
$(function(){
	$('form').ajaxForm({
		beforeSubmit:function(){},					
		success:function(result,status){
			result=result.trim();
			if(result=="true"){
				alert('수정 성공');
				opener.getList();
				self.close();
			}
			else
				alert('수정 실패');
		},
		error:function(xhr,status,error){
			alert('Error ! : '+error);
			self.close();
		} 
	});
	$('[name=cancel]').click(function(){
		self.close();
	});
})
</script>
</head>
<body>
	<form name="qnaform" action="/Project2/admin/qna.do?action=update" method="post">
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
			<input type=submit value="답변완료">
			<input type="button" value="취소" name='cancel'></td>
		</tr>
	</table>
	</form>
</body>
</html>