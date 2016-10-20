<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/main_body.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<header><%@include file="header.jsp"%></header>

<title>Insert title here</title>
</head>
<body>
	<center>
		<table class="main_table" width=100%>
			<tr>
				<td class="main_td" colspan=3>
					<table class="sub_news">
						<tr>
							<th>기간</th>
							<th>내용</th>
							<th>기타</th>
						</tr>
						<tr>
							<td>어재~오늘</td>
							<td>수강신청</td>
							<td>ㅇ</td>
						</tr>
						<tr>
							<td>오늘중</td>
							<td>입학식</td>
							<td>ㅇ</td>
						</tr>
						<tr>
							<td>오늘~내일</td>
							<td>수강신청변경</td>
							<td>ㅇ</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="main_td">
					<table class="sub_news" border=1 cellspacing=0
						summary="게시판의 글제목 리스트">
						<caption>게시판 리스트</caption>
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
								<th scope=col>날짜</th>
								<th scope=col>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class=title><a href="#">게시글1 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/17</td>
								<td class=hit>10</td>
							</tr>
							<tr>
								<td class=title><a href="#">게시글2 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/18</td>
								<td class=hit>15</td>
							</tr>
							<tr>
								<td class=title><a href="#">게시글3 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/18</td>
								<td class=hit>20</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td class="main_td">
					<table class="sub_news" border=1 cellspacing=0
						summary="게시판의 글제목 리스트">
						<caption>게시판 리스트</caption>
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
								<th scope=col>날짜</th>
								<th scope=col>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class=title><a href="#">게시글1 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/17</td>
								<td class=hit>10</td>
							</tr>
							<tr>
								<td class=title><a href="#">게시글2 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/18</td>
								<td class=hit>15</td>
							</tr>
							<tr>
								<td class=title><a href="#">게시글3 제목</a></td>
								<td class=name>이름</td>
								<td class=date>2016/10/18</td>
								<td class=hit>20</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>