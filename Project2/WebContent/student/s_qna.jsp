<%@page import="qna.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/tables.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="등록" onclick="location.href='/Project2/student/addQna.do'">
	<table id="table">
		<tr>
			<th id="td_sml">글번호</th>
			<th id="td_sml">제목</th>
			<th id="td_lar">내용</th>
			<th id="td_mid">신청자</th>
			<th id="td_mid">신청일</th>
			<th id="td_sml">상태</th>
		</tr>
		<%
		List<QnaDTO> list = (List<QnaDTO>)request.getAttribute("list");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					QnaDTO dto=list.get(i);
					out.print("<tr><td>"+dto.getNo()+"</td><td>"+dto.getTitle()+"</td><td> <a href='#' onclick=window.open('/Project2/student/supformQna.do?action=upform&no="+dto.getNo()+"&status="+dto.getStatus()+"','건의사항','width=400,height=350');>"+dto.getContent()+
							"</a></td><td>"+dto.getName()+"</td><td>"+dto.getTimes()+"</td><td>"+dto.getStatus()+"</td></tr>");
				}
			}
		%>
	</table>
</body>
</html>