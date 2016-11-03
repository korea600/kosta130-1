<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/schedule_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학사일정 등록</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function() {
		$('form').ajaxForm(
				{
					beforeSubmit : function() {
						var flag = false;
						var syear = $('[name=syear]').val();
						var smonth = $('[name=smonth]').val();
						var sday = $('[name=sday]').val();
						var shour = $('[name=shour]').val();
						var sminute = $('[name=sminute]').val();
						var eyear = $('[name=eyear]').val();
						var emonth = $('[name=emonth]').val();
						var eday = $('[name=eday]').val();
						var ehour = $('[name=ehour]').val();
						var eminute = $('[name=eminute]').val();
						var sDate = new Date(syear, smonth, sday, shour,
								sminute)
						var eDate = new Date(eyear, emonth, eday, ehour,
								eminute)
						if (syear == '년' || smonth == '월' || sday == '일'
								|| shour == '시' || sminute == '분'
								|| eyear == '년' || emonth == '월' || eday == '일'
								|| ehour == '시' || eminute == '분')
							alert('시간 입력중 비어있는 곳이 있습니다.');
						else if (sDate > eDate)
							alert('시간 입력이 올바르지 않습니다.');
						else if ($('[name=content]').val().length == 0)
							alert('내용을 입력하세요');
						else
							flag = true;
						return flag;
					},
					success : function(result, status) {
						result = result.trim();
						if (result == "true") {
							alert('입력 성공');
							opener.getSchedule();
							self.close();
						} else
							alert('입력 실패');
					},
					error : function(xhr, status, error) {
						alert('Error ! : ' + error);
						self.close();
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
		<!-- <form name="schAdd" action="/struts/Admin/list.do?action=insert"> -->
		<form name="schAdd"
			action="/Project2/admin/addResult.do?action=insert" method="post">
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
								}
								}
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
								for (int i = 0; i < 60; i += 10) {
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
								}
								}
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
								for (int i = 0; i < 60; i += 10) {
									if (i < 10)
										out.println("<option value=" + i + ">" + i + "</option>");
									else
										out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
					</select></td>
				</tr>
				<tr>
					<th class="td_ta2">내용</th>
					<td><textArea name="content" rows="5" cols="36"></textArea></td>
				</tr>
				<tr>
					<th>비고</th>
					<td><select name='etc'>
							<option>1학기수강신청(베팅)</option>
							<option>1학기수강신청(일반)</option>
							<option>1학기개강</option>
							<option>1학기중간고사</option>
							<option>1학기기말고사</option>
							<option>1학기종강</option>
							<option>2학기수강신청(베팅)</option>
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
					<td colspan=2 align=center>
						<input type=submit value="확인" class="btn_add">
						<input type="button" value="취소" name="cancel" class="btn_add">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>