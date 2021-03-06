<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/subject_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>과목개설신청 수정</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
$(function(){
	$('[name=division]').val("${dto.division}");
	$('[name=cnt]').val("${dto.cnt}");
	$('[name=credit]').val("${dto.credit}");
	$('[name=day]').val("${day}");
	$('[name=start]').val("${start}");
	$('[name=end]').val("${end}");
	$('form').ajaxForm({
		beforeSubmit: function(data,form,option){
			var filename=$(':file').val();
			var flag=false;
			if($('[name=start]').val() > $('[name=end]').val())
				alert('값이 유효하지 않습니다.');
			else if(filename==''){
				alert('강의계획서는 기존 상태로 유지합니다.');
				flag=true;
			}
			else if(filename.substring(filename.lastIndexOf("."))!=".doc"){
				alert('.DOC 파일만 업로드 가능합니다.');
			}
			else{
				alert('새로운 강의계획서를 등록합니다.');
				flag=true;
			}
			return flag;	
		},
		success:function(result,status){
			if(result=="true"){
				alert('입력 성공');
				opener.getList();
				self.close();
			}
			else
				alert('입력 실패');
		},
        error:function(xhr,status,error){
        	self.close();
			opener.location.href='/Project2/common/errorPage.jsp';
		}
	});
	$('[name=delete]').click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				url:'/Project2/pro/subjectdelete.do',
				data:{code:$('[name=code]').val()},
				success:function(data,status,xhr){
					alert("삭제되었습니다.");
					opener.getList();
					self.close();		
				},
		        error:function(xhr,status,error){
		        	self.close();
					opener.location.href='/Project2/common/errorPage.jsp';
				}
			});
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
	<th class='menu'>과목명</th>
	<td class='content'><input type='text'  class='full' name='sub' value="${dto.sub}"></td>
</tr>
<tr>
	<th class='menu'>이수구분</th>
	<td class='content'>
		<select name='division'  class='full'>
			<option value='교양'>교양</option>
			<option value='전공'>전공</option>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>교수명</th>
	<td class='content'><input type='text' name='name' class='full' readonly="readonly" value="${LoginDTO.name}"></td>
</tr>
<tr>
	<th class='menu'>시간</th>
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
	<th class='menu'>이수학점</th>
	<td class='content'>
		<select name='credit'  class='full'>
			<option value='2'>2</option>
			<option value='3'>3</option>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>강의실</th>
	<td class='content'><input type='text' name='room' class='full' value='${dto.room}'>	</td>
</tr>
<tr>
	<th class='menu'>수강인원</th>
	<td class='content'>
		<select name='cnt' class='full'>
			<%for(int i=30;i<=80;i+=5){ %>
				<option value=<%=i %>><%=i %></option>
			<%} %>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>강의계획서</th>
	<td class='content'><input type='file' name='plan' class='full'></td>
</tr>
<tr>
	<td colspan='2' align="center">
		<input type="submit" name='confirm' value='수정'>
		<input type="button" name='delete' value='삭제'>
		<input type="button" name='cancel' value='취소'>
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>