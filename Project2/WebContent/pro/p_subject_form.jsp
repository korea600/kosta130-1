<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/subject_form.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>과목개설 신청 등록</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript" src='/Project2/js/jquery.form.js'></script>
<script type="text/javascript">
	$(function(){
		$('form').ajaxForm({
			beforeSubmit: function(data,form,option){
				var filename=$(':file').val();
				var flag=false;
				if($('[name=sub]').val().length==0)
					alert('과목명을 입력해 주세요');
				else if($('[name=room]').val().length==0)
					alert('강의실을 입력해 주세요');
				else if($('[name=start]').val() > $('[name=end]').val())
					alert('시간 입력값이 유효하지 않습니다.');
				else if(filename=='')
					alert('강의계획서를 등록해주세요');
				else if(filename.substring(filename.lastIndexOf("."))!=".doc")
					alert('.DOC 파일만 업로드 가능합니다.');
				else
					flag=true;
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
				alert('Error ! : '+error);
				self.close();
			} 
		});

		$('[name=cancel]').click(function(){
			self.close();
		}); 
	});
</script>
</head>
<body>
<center>
<form name='frm' enctype='multipart/form-data' action='/Project2/pro/subjectinsert.do' method="post">
<h3>과목등록</h3><hr>
<table>
<tr>
	<th class='menu'>과목명</th>
	<td class='content'><input type='text' name='sub'></td>
</tr>
<tr>
	<th class='menu'>이수구분</th>
	<td class='content'>
		<select name='division'>
			<option>교양</option><option>전공</option>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>교수명</th>
	<td class='content'><input type='text' name='name' readonly="readonly" value="${LoginDTO.name}"></td>
</tr>
<tr>
	<th class='menu'>시간</th>
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
	<th class='menu'>이수학점</th>
	<td class='content'>
		<select name='credit'>
			<option>2</option>
			<option>3</option>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>강의실</th>
	<td class='content'><input type='text' name='room'>	</td>
</tr>
<tr>
	<th class='menu'>수강인원</th>
	<td class='content'>
		<select name='cnt'>
			<%for(int i=30;i<=80;i+=5){ %>
				<option><%=i %></option>
			<%} %>
		</select>
	</td>
</tr>
<tr>
	<th class='menu'>강의계획서</th>
	<td class='content'><input type='file' name='plan'></td>
</tr>
<tr>
	<td colspan='2' align="center">
		<input type="submit" name='confirm' id="btn" value='입력'>
		<input type="button" name='cancel' id="btn" value='취소'>
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>