<%@page import="sugang.model.SugangDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/sugang.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	$('#sp1').change(function(){
		$.ajax({
			url:'sugang.do',
			data:{division:$('#sp1 > select').val()},
			success:function(data){
				$('#sp2').html(data);
			}
		});
	});
});
function nullCheck(){
	var sel1 = document.sugang_form.sel1.value;
	var sel2 = $('#sp2 option:selected').text();
	var sel3 = document.sugang_form.sel3.value;
	
	if(sel1 == "==선택=="){
		alert("전공 또는 교양을 선택해주세요.")
	}else if(sel3 == "==선택=="){
		alert("학년을 선택해주세요.")
	}else{
		
	}//if
}
</script>
</head>
<body>
<form name="sugang_form">
	<span id="sp1"><select id="sel1">
		<option value="==선택==">==선택==</option>
		<option>전공</option>
		<option>교양</option>
	</select></span>
	<span id="sp2"><select id="sel2">
	<option value="==선택==">==선택==</option>
	<c:forEach items="${divisionList }" var="area">
		<option>${area }</option>
	</c:forEach>
	
	</select></span>
	<span id="sp3" value="==선택=="><select id="sel3">
		<option>==선택==</option>
		<option>1학년</option>
		<option>2학년</option>
		<option>3학년</option>
		<option>4학년</option>
	</select></span>
	<input type="button" value="조회" onclick='nullCheck()'>
</form>
	<hr>
	<form>
	<table id="complete_table">
		<tr>
			<th>과목코드</th>
			<th>수강년도</th>
			<th>학기</th>
			<th>과목학점</th>
		</tr>
<%
		List<SugangDTO> list = (List<SugangDTO>)request.getAttribute("selectListt");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					SugangDTO dto=list.get(i);
					out.print("<tr><td>"+dto.getCode()+"</td><td>"+dto.getYear()+"</td><td>"+
					dto.getTerm()+"</td><td>"+dto.getGrade()+"</td></tr>");
				}
			}
		%>
	</table>
	</form>
	<hr>
	<table id="sugang_table">
		<tr>
			<th>과목코드</th>
			<th>과목명</th>
			<th>교수명</th>
			<th>강의시간</th>
			<th>인원</th>
			<th>배팅점수</th>
			<th></th>
		</tr>
		<tr>
			<td>K130R6</td>
			<td>자바프로그래밍</td>
			<td>이길재</td>
			<td>09:00~18:50</td>
			<td>25</td>
			<td><input type="text"></td>
			<td><button>신청</button></td>
		</tr>
		<tr>
			<td>K128R7</td>
			<td>보안과정</td>
			<td>노브레이크</td>
			<td>09:00~18:50</td>
			<td>26</td>
			<td><input type="text"></td>
			<td><button>신청</button></td>
		</tr>
	</table>
</body>
</html>