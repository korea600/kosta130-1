<%@page import="notice.model.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/main_body.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/Project2/common/css/jquery-3.0.0.js" ></script>
<title>Insertasdsadsadsadsads</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
	 List<NoticeDTO> list_h = (List<NoticeDTO>)request.getAttribute("haksa_list");
	 List<NoticeDTO> list_j = (List<NoticeDTO>)request.getAttribute("job_list");%> 
	<center>
	
			<table class="main_table">
			<tr>
				<td class="main_td" colspan=2>
					<table class="sub_news">
						<tr>
							<th>기간</th>
							<th>내용</th>
							<th>기타</th>
						</tr>
						<c:forEach items="${list}" var="i" varStatus="stat">
						<c:if test="${stat.index<5 }">
						<tr>
							<td>${i.starts }~${i.ends}</td>
							<td>${i.content }</td>
							<td>${i.etc }</td>
						</tr>
						</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
			<tr>
				<td class="main_td">
					<table class="sub_news" border=1 cellspacing=0
						summary="게시판의 글제목 리스트">
						<caption>학사공지 리스트</caption>
						<colgroup>
							<col>
							<col width=110>
							<col width=100>
							<col width=80>
						</colgroup>
						<thead>
							<tr>
								<th scope=col>제목</th>
								<th scope=col>글쓴이</th>
								<th scope=col>작성일자</th>
							
							</tr>
						</thead>
						<tbody>
						<% for(int i=0; i<5; i++){ %>
							<tr>
								<th scope=col><%= list_h.get(i).getTitle() %></th>
								<th scope=col><%= list_h.get(i).getName() %></th>
								<th scope=col><%= list_h.get(i).getGdate() %></th>
							</tr>
							<%} %> 
							
						</tbody>
					</table>
				</td>
				<td class="main_td">
					<table class="sub_news" border=1 cellspacing=0
						summary="게시판의 글제목 리스트">
						<caption>취업공지 리스트</caption>
						<colgroup>
							<col>
							<col width=110>
							<col width=100>
							<col width=80>
						</colgroup>
						<thead>
							<tr>
								<th scope=col>제목</th>
								<th scope=col>글쓴이</th>
								<th scope=col>작성일자</th>
							</tr>
						</thead>
						<tbody>
						<% for(int i=0; i<5; i++){ %>
							<tr>
								<th scope=col><%= list_j.get(i).getTitle() %></th>
								<th scope=col><%= list_j.get(i).getName() %></th>
								<th scope=col><%= list_j.get(i).getGdate() %></th>
							</tr>
							<%} %> 
							
						</tbody>
					</table>
				</td>
			</tr>
		</table>

		
	</center>
</body>
</html>
