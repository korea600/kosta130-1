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
<header><%@include file="../common/header.jsp"%></header>
<link href="/Project2/common/css/a_menu.css" rel="stylesheet" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	  $(".zero").click(function(){
		  	$(".zero").css({"background":"#173b68","color":"#fff"})
	         $(".one").css({"background":"#fff","color":"#000"})
	         $(".two").css({"background":"#fff","color":"#000"})
	         $(".three").css({"background":"#fff","color":"#000"})
	      });
		
    $(".one").click(function(){
  	  $(".zero").css({"background":"#fff","color":"#000"})
       $(".one").css({"background":"#173b68","color":"#fff"})
       $(".two").css({"background":"#fff","color":"#000"})
       $(".three").css({"background":"#fff","color":"#000"})
    });

    $(".two").click(function(){
  	  $(".zero").css({"background":"#fff","color":"#000"})
       $(".two").css({"background":"#173b68","color":"#fff"})
       $(".one").css({"background":"#fff","color":"#000"})
       $(".three").css({"background":"#fff","color":"#000"})
    });

    $(".three").click(function(){
  	  $(".zero").css({"background":"#fff","color":"#000"})
       $(".three").css({"background":"#173b68","color":"#fff"})
       $(".two").css({"background":"#fff","color":"#000"})
       $(".one").css({"background":"#fff","color":"#000"})
    });

    $('.zero').click(function(){
    	  //jQuery.ajax({});
    	  console.log("dddd");
    	  $.ajax({    		  
    	     url:'/Project2/main/main_list.do?action=main',
    	     success: function(data){
    	    	$('#main').html(data); 
    	     },
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
    	  });//$.ajax()
      });//button click
      
      $('.one').click(function(){
      	  //jQuery.ajax({});console.log("dddd");
      	  $.ajax({    		  
      	     url:'/Project2/pro/p_grade_info.jsp',
      	     success: function(data){
      	    	$('#main').html(data); 
      	     },
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
      	  });//$.ajax()
        });//button click
        
        $('.two').click(function(){
        	  //jQuery.ajax({});
        	  $.ajax({    		  
        	     url:'/Project2/pro/p_subject.jsp',
        	     success: function(data){
        	    	$('#main').html(data); 
        	     },
     	        error:function(xhr,status,error){
    				location.href='/Project2/common/errorPage.jsp';
    			}
        	  });//$.ajax()
          });//button click
          
          $('.three').click(function(){
          	  //jQuery.ajax({});
          	  $.ajax({    		  
          	     url:'/Project2/admin/notice_list.do',
          	     success: function(data){
          	    	$('#main').html(data); 
          	     },
     	        error:function(xhr,status,error){
    				location.href='/Project2/common/errorPage.jsp';
    			}
          	  });//$.ajax()
            });//button click
 });
</script>
<title></title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
	 List<NoticeDTO> list_h = (List<NoticeDTO>)request.getAttribute("haksa_list");
	 List<NoticeDTO> list_j = (List<NoticeDTO>)request.getAttribute("job_list");%> 
	<center>
	
<table width="1024px" cellpadding="0" cellspacing="0" height="0" border=0 style="padding-top:0px; "> 
<tr> 
<td width="200" valign="top">
<div class="menu">
			<ul>
				<li class="zero"><p>메인</p></li>
				<li class="one"><p>성적입력</p></li>
				<li class="two"><p>과목조회/등록</p></li>

			</ul>
		</div></td> 
<td width="824px" id="main">
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
		</table></td> 

</tr> 
</table> 
		
	</center>
</body>
</html>
