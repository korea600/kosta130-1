<%@page import="subject.model.SubjectDTO"%>
<%@page import="qna.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/p_subject.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('.approval_btn').click(function() {

			var code = $("#code").text();
			console.log("code" + code);
			$.ajax({
				url : '/Project2/admin/approval_btn_ajax.jsp',
				type : 'POST',
				data : {
					"action" : "subappr",
					"code" : code,
					"status" : "처리완료"
				},
				success : function(data) {
					$(".input_box").empty();
					$(".input_box").append(data);
				}
			})
		});
	});
</script>
</head>
<body>
	<form name="frm">
		<div class="member_info">
			<ul class="top_text">
				<li>개설연도</li>
				<li>학기</li>
				<li>과목코드</li>
				<li>과목명</li>
				<li>교수명</li>
				<li>시간</li>
				<li>강의실</li>
				<li>승인/거절</li>
			</ul>

			<div class='input_box'>
				<c:forEach items="${statusList }" var="i">
					<ul class='list_text'>
						<li>${i.year }</li>
						<li>${i.semester }</li>
						<li id="code">${i.code }</li>
						<li>${i.sub }</li>
						<li>${i.name }</li>
						<li>${i.times }</li>
						<li>${i.room }</li>
						<li><input type='button' class='approval_btn' value='승인'></li>
					</ul>
				</c:forEach>
				<%
					/*
					List<SubjectDTO> list = (List<SubjectDTO>)request.getAttribute("statusList");
						if(list != null){
							for(int i=0; i<list.size(); i++){
								SubjectDTO dto=list.get(i);
								
								out.print("<ul class='member_text'><li>"+dto.getYear()+"</li><li>"+dto.getSemester()+
										"</li><li>"+"<a class='code'>"+dto.getCode()+"</a>"+"</li><li>"+dto.getSub()+
									"</li><li>"+dto.getName()+"</li><li>"+dto.getTimes()+"</li><li>"+dto.getRoom()+
									"</li><li><input type='button' class='approval_btn' value='승인'></li></ul>");
							}
						}*/
				%>
			</div>
		</div>
	</form>
</body>
</html>