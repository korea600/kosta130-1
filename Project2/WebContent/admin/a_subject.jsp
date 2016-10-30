<%@page import="subject.model.SubjectDTO"%>
<%@page import="qna.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="table">
		<tr>
			<th id="td_sml">개설연도</th>
			<th id="td_sml">학기</th>
			<th id="td_lar">과목코드</th>
			<th id="td_mid">과목명</th>
			<th id="td_mid">교수명</th>
			<th id="td_mid">시간</th>
			<th id="td_mid">강의실</th>
			<th id="td_mid">승인/거절</th>
			
		</tr>
		<%
		List<SubjectDTO> list = (List<SubjectDTO>)request.getAttribute("statusList");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					SubjectDTO dto=list.get(i);
					out.print("<tr><td>"+dto.getYear()+"</td><td>"+dto.getSemester()+
							"</td><td>"+dto.getCode()+"</td><td>"+dto.getSub()+
						"</td><td>"+dto.getName()+"</td><td>"+dto.getTimes()+"</td><td>"+dto.getRoom()+
						"</td><td><input type='button' value='승인'></td><td><input type='button' value='거절'></td></tr>");
				}
			}
		%>
	</table>
</body>
</html>