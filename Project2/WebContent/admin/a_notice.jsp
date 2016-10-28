<%@page import="notice.model.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Project2/common/css/a_notice.css" rel="stylesheet" type="text/css" />
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
		<select name="body_checked" onChange="checked_get();" class="check">
			<option>학사/취업</option>
			<option value="학사">학사공지사항</option>
			<option value="취업">취업공지사항</option>
		</select> 
		
		 <input type="button" value="글쓰기" onclick="upNoticeForm()" class="write_btn">
		
		
		<center>
			<div class="view">
				<ul>
					<li>글번호</li>
					<li>제목</li>
					<li>작성일</li>
				</ul>
			</div>
			<div class="view_form">
				<%List<NoticeDTO> list = (List<NoticeDTO> )request.getAttribute("list");  %>		
				<% for(int i=0; i<list.size(); i++){ %>
					<ul>
						<li><%=list.get(i).getNo() %></li>
						<li><a style="cursor:pointer" onclick="window.open('/Project2/admin/notice_list.do?action=viewupdate&no=<%=list.get(i).getNo()%>' , 'upform_write', 'width=300,height=400,top=100,left=200')"><%=list.get(i).getTitle() %></a></li>		
						<li><%=list.get(i).getGdate() %></li>
					</ul>
				<%} %> 
			</div>

		

			<br> <br>

		</center>

	</form>
</body>
</html>