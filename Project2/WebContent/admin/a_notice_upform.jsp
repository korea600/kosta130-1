<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function update_close(){
		document.upform_frm.submit();
		window.close();
		opener.location.href='notice_list.do';
	}
	
	function exitForm(){
		
		window.close();
	}
	
	function delete_check(){
			if(confirm("삭제하시겠습니까?")){
				var no = document.upform_frm.no.value;
			opener.location.href= "notice_list.do?action=delete&no="+no;
			window.close();
		}
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

<input type="button" value="수정" onclick="update_close()">
<input type="button" value="삭제" onclick="delete_check()">
<input type="button" value="취소" onclick="exitForm()">
</form>
</center>
</body>
</html>