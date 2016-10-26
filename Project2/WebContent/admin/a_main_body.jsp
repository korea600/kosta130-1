<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/main_body.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<header><%@include file="/common/header.jsp"%></header>

<title>Insertasdsadsadsadsads</title>
<script src="/Project2/common/css/jquery-3.0.0.js"></script>
<!--  <script type="text/javascript">
$(function(){
    $('#menu5').click(function(){
    	console.log("ddd");
  	 //$.get(url,callback);
  	 //$.get(URL,function(data응답데이터,status,xhr))
  	 $.get('/Project2/common/edit.do?action=member', function(resultData){
  		 $('#main').html(resultData);
  	 })
    });//b1클릭 	
  });//ready
  
  
</script>-->
</head>
<body>
	<center>
<table width="1024px" cellpadding="0" cellspacing="0" height="0" border=0 style="padding-top:0px; "> 
<tr> 
<td width="200px">
<% %>
<link href="/Project2/common/css/a_menu.css" rel="stylesheet" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  $(".zero").click(function(){
		  	$(".zero").css({"background":"#173b68","color":"#fff"})
	         $(".one").css({"background":"#fff","color":"#000"})
	         $(".two").css({"background":"#fff","color":"#000"})
	         $(".three").css({"background":"#fff","color":"#000"})
	         $(".four").css({"background":"#fff","color":"#000"})
	         $(".five").css({"background":"#fff","color":"#000"})
	         $(".six").css({"background":"#fff","color":"#000"})
	      });
		
      $(".one").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $(".two").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".two").css({"background":"#173b68","color":"#fff"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $(".three").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $(".four").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $(".five").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $(".six").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
      });
   });
</script>
</head>
<body>
<div class="menu">
			<ul>
				<li class="zero"><p><a href="/Project2/admin/a_main_body.jsp">메인</a></p></li>
				<li class="one"><p>학적처리</p></li>
				<li class="two"><p>건의사항 확인</p></li>
				<li class="three"><p><a href="#" id="menu3">공지관리</p></a></li>
				<li class="four"><p>과목 수정/등록</p></li>
				<li class="five"><p><a href="/Project2/common/edit.do?action=member" id="menu5">회원관리</a></p></li>
				<li class="six"><p>학사일정관리</p></li>
			</ul>
		</div></td> 
<td width="800px" id="main">
		<table class="main_table">
			<tr>
				<td class="main_td" colspan=2>
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
		</table></td> 
</tr> 
</table> 
		
	</center>
</body>
</html>