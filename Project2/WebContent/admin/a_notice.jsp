<%@page import="notice.model.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function upNoticeForm() {
		childwin = window.open('/Project2/admin/a_notice_form.jsp', 'form_write',
				'width=300,height=400,top=100,left=200');
	
	}

	function checked_get() {
		var checked = document.body_frm.body_checked.value;
		location.href=('notice_list.do?checked='+checked)
	
	}
	
  	function checked_close(){
  		location.href=('notice_list.do');
    	childwin.close();
  	}

</script>
</head>
<body>

	<form name="body_frm">
		<select name="body_checked" onChange="checked_get();">
			<option>학사/취업</option>
			<option value="학사">학사공지사항</option>
			<option value="취업">취업공지사항</option>
		</select> <br> <br> <br> <br> <br>
		
		
		<center>

			<table border="3">

				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
				<% List<NoticeDTO> list = (List<NoticeDTO>) request.getAttribute("list"); %>
			
				<% for(int i=0; i<list.size(); i++){ %>
					<tr>
					<th><%=list.get(i).getNo() %></th>
					<th><a style="cursor:pointer" onclick="window.open('/Project2/admin/notice_list.do?action=viewupdate&no=<%=list.get(i).getNo()%>' , 'upform_write', 'width=300,height=400,top=100,left=200')"><%=list.get(i).getTitle() %></a></th>		
					<th><%=list.get(i).getGdate() %></th>
					</tr>

				<%} %> 
			</table>

			<br> <br> <input type="button" value="글쓰기"
				onclick="upNoticeForm()">

		</center>

	</form>
</body>
</html>