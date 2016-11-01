<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/Table.css" type="text/css" />
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
				alert('입력 성공');
				opener.getSchedule();
				self.close();
			}
			else
				alert('입력 실패');
		},
		error:function(xhr,status,error){
			alert('Error ! : '+error);
			self.close();
		} 
	});
	
	$('[name=cancel]').click(function(){
		window.close();
	});
});	
</script>
</head>
<body>
	<center>
		<!-- <form name="schAdd" action="/struts/Admin/list.do?action=insert"> -->
		<form name="schAdd" action="/Project2/admin/addResult.do?action=insert" method="post">
			<table>
				<tr>
					<th>시작</th>
					<td><select name="syear">
							<option>년</option>
							<%
								for (int i = 2018; i > 2010; i--) {
									out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select> <select name="smonth">
							<option>월</option>
							<%
								for (int i = 1; i < 13; i++) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select> <select name="sday">
							<option>일</option>
							<%
								for (int i = 1; i < 32; i++) {
									if (i < 10) {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								} else {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}}
							%>
					</select> <select name="shour">
					<option>시</option>
							<%
								for (int i = 0; i < 24; i++) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select><select name="sminute">
					<option>분</option>
							<%
								for (int i = 0; i < 60; i+=10) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select></td>
				</tr>
				<tr>
					<th>종료</th>
					<td><select name="eyear">
							<option>년</option>
							<%
								for (int i = 2018; i > 2010; i--) {
									out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select> <select name="emonth">
							<option>월</option>
							<%
								for (int i = 1; i < 13; i++) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select> <select name="eday">
							<option>일</option>
							<%
								for (int i = 1; i < 32; i++) {
									if (i < 10) {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								} else {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}}
							%>
					</select> <select name="ehour">
					<option>시</option>
							<%
								for (int i = 0; i < 24; i++) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select><select name="eminute">
					<option>분</option>
							<%
								for (int i = 0; i < 60; i+=10) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textArea name="content"></textArea></td>
				</tr>
				<tr>
					<th>비고</th>
					<td><select name='etc'>
						<option>1학기수강신청(베팅1차)</option>
						<option>1학기수강신청(베팅2차)</option>
						<option>1학기수강신청(일반)</option>
						<option>1학기개강</option>
						<option>1학기중간고사</option>
						<option>1학기기말고사</option>
						<option>1학기종강</option>
						<option>2학기수강신청(베팅1차)</option>
						<option>2학기수강신청(베팅2차)</option>
						<option>2학기수강신청(일반)</option>
						<option>2학기개강</option>
						<option>2학기중간고사</option>
						<option>2학기기말고사</option>
						<option>2학기종강</option>
						<option>기타</option>
						
					</select></td>
				</tr>
				<tr>
				<tr>
					<td colspan=2 align=center><input type=submit value="확인">
						<input type="button" value="취소" name="cancel"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>