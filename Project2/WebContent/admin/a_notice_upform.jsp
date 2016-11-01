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
					opener.getList('학사');
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
	});
	
	function delete_check(){
		if(confirm("삭제하시겠습니까?")){
			$.ajax({				
				url:'/Project2/admin/notice_list.do',
				type:'POST',
				data:{
					action:'delete',
					no:$('[name=no]').val()
				},
				success:function(result,status){
					result=result.trim();
					if(result=="true"){
						alert('삭제 성공');
						opener.getList('학사');
						self.close();
					}
					else
						alert('삭제 실패');
				},
				error:function(xhr,status,error){
					alert('Error ! : '+error);
					self.close();
				} 
			});
		}
	}
	function exitForm(){
		window.close();
	}	
</script>
</head>
<body>
<center>
<form action="notice_list.do?action=update" name="upform_frm" method="post">
<input type="text" name="no" value=${dto.no }>

제목 <input type="text" name="title" value=${dto.title }><br><br>
내용 <textarea rows="10" cols="23" name="content">${dto.content }</textarea>
<Br>

<input type="submit" value="수정">
<input type="button" value="삭제" onclick="delete_check()">
<input type="button" value="취소" onclick="exitForm()">
</form>
</center>
</body>
</html>