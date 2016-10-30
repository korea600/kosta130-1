<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
$(function(){
	$('[name=division]').val("${dto.division}");
	$('[name=cnt]').val("${dto.cnt}");
	$('[name=credit]').val("${dto.credit}");
	$('[name=day]').val("${day}");
	$('[name=start]').val("${start}");
	$('[name=end]').val("${end}");
	$('[name=confirm]').click(function(){
		if($('[name=start]').val()>$('[name=end]').val())
			alert("강의시간을 확인해 주세요.");
		else{
			var filevalue = $('[name=plan]').val();
			if(filevalue==''){
				alert("강의계획서는 기존 자료로 유지됩니다.");
				document.frm.submit();
				opener.location.href='/Project2/pro/subjectlist.do';
				self.close();
			}
			else if(filevalue.substring(filevalue.lastIndexOf("."))!=".doc")
				alert(".doc 파일만 업로드가 가능합니다.");
			else{
				alert("새로운 강의계획서로 변경됩니다.");
				document.frm.submit();
				opener.location.href='/Project2/pro/subjectlist.do';
				self.close();
			}
		}
	});
	$('[name=delete]').click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			var code=$('[name=code]').val();
			opener.location.href='/Project2/pro/subjectdelete.do?code='+code;
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
<center>
<form name='frm' enctype='multipart/form-data' action='/Project2/pro/subjectupdate.do' method="post">
<input type="hidden" name='code' value="${dto.code}">
<h3>과목등록</h3><hr>
<table>
<tr>
	<td class='menu'>과목명</td>
	<td class='content'><input type='text' name='sub' value="${dto.sub}"></td>
</tr>
<tr>
	<td class='menu'>이수구분</td>
	<td class='content'>
		<select name='division'>
			<option value='교양'>교양</option>
			<option value='전공'>전공</option>
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
			<option value=<%=day[i] %>><%=day[i] %></option>
	<%	} %>
	</select>
	시작<select name='start'>
	<%	for(int i=1;i<9;i++){ %>
			<option value=<%=i %>><%=i %></option>
	<%	} %>
	</select>
	끝<select name='end'>
	<%	for(int i=1;i<9;i++){ %>
			<option value=<%=i %>><%=i %></option>
	<%	} %>
	</select>
	</td>
</tr>
<tr>
	<td class='menu'>이수학점</td>
	<td class='content'>
		<select name='credit'>
			<option value='2'>2</option>
			<option value='3'>3</option>
		</select>
	</td>
</tr>
<tr>
	<td class='menu'>강의실</td>
	<td class='content'><input type='text' name='room' value='${dto.room}'>	</td>
</tr>
<tr>
	<td class='menu'>수강인원</td>
	<td class='content'>
		<select name='cnt'>
			<%for(int i=30;i<=80;i+=5){ %>
				<option value=<%=i %>><%=i %></option>
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
		<input type="button" name='confirm' value='수정'>
		<input type="button" name='delete' value='삭제'>
		<input type="button" name='cancel' value='취소'>
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>