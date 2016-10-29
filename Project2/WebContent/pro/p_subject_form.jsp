<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
$(function(){
	$('[name=confirm]').click(function(){
		if($('[name=start]').val()<=$('[name=end]').val()){
			document.frm.submit();
			self.close();
			opener.location.reload(true);
		}
		else{
			alert('값이 유효하지 않습니다.');
		}
	});
	$('[name=cancel]').click(function(){
		self.close();
	});	
})
</script>

</head>
<body>
<center>
<form name='frm' enctype='multipart/form-data' action='/Project2/pro/subjectinsert.do' method="post">
<h3>과목등록</h3><hr>
<table>
<tr>
	<td class='menu'>과목명</td>
	<td class='content'><input type='text' name='sub'></td>
</tr>
<tr>
	<td class='menu'>이수구분</td>
	<td class='content'>
		<select name='division'>
			<option>교양</option><option>전공</option>
		</select>
	</td>
</tr>
<tr>
	<td class='menu'>교수명</td>
	<td class='content'><input type='text' name='name' readonly="readonly" value="${LoginDTO.name}"></td>
</tr>
<tr>
	<td class='menu'>시간</td>
	<td class='content'>
	요일<select name='day'>
	<%	String day[] = {"월","화","수","목","금","토"};
		for(int i=0;i<day.length;i++){ %>
			<option><%=day[i] %></option>
	<%	} %>
	</select>
	시작<select name='start'>
	<%	for(int i=1;i<9;i++){ %>
			<option><%=i %></option>
	<%	} %>
	</select>
	끝<select name='end'>
	<%	for(int i=1;i<9;i++){ %>
			<option><%=i %></option>
	<%	} %>
	</select>
	</td>
</tr>
<tr>
	<td class='menu'>이수학점</td>
	<td class='content'>
		<select name='credit'>
			<option>2</option>
			<option>3</option>
		</select>
	</td>
</tr>
<tr>
	<td class='menu'>강의실</td>
	<td class='content'><input type='text' name='room'>	</td>
</tr>
<tr>
	<td class='menu'>수강인원</td>
	<td class='content'>
		<select name='cnt'>
			<%for(int i=30;i<=80;i+=5){ %>
				<option><%=i %></option>
			<%} %>
		</select>
	</td>
</tr>
<tr>
	<td class='menu'>강의계획서</td>
	<td class='content'><input type='file' name='plan'></td>
</tr>
<tr>
	<td colspan='2' align="center">
		<input type="button" name='confirm' value='입력'>
		<input type="button" name='cancel' value='취소'>
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>