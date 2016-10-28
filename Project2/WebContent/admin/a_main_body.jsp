<%@page import="notice.model.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/main_body.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<header><%@include file="/common/header.jsp"%></header>
<title>Insertasdsadsadsadsads</title>
<link href="/Project2/common/css/a_menu.css" rel="stylesheet" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" ></script>

 <script type="text/javascript">
$(document).ready(function(){
	console.log("asdasdasd");
	  $("#zero").click(function(){
		  	$(".zero").css({"background":"#173b68","color":"#fff"})
	         $(".one").css({"background":"#fff","color":"#000"})
	         $(".two").css({"background":"#fff","color":"#000"})
	         $(".three").css({"background":"#fff","color":"#000"})
	         $(".four").css({"background":"#fff","color":"#000"})
	         $(".five").css({"background":"#fff","color":"#000"})
	         $(".six").css({"background":"#fff","color":"#000"})
	      });
		
      $("#one").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $("#two").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".two").css({"background":"#173b68","color":"#fff"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $("#three").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $("#four").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $("#five").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#fff","color":"#000"})
      });

      $("#six").click(function(){
    	  $(".zero").css({"background":"#fff","color":"#000"})
         $(".six").css({"background":"#173b68","color":"#fff"})
         $(".two").css({"background":"#fff","color":"#000"})
         $(".three").css({"background":"#fff","color":"#000"})
         $(".four").css({"background":"#fff","color":"#000"})
         $(".five").css({"background":"#fff","color":"#000"})
         $(".one").css({"background":"#fff","color":"#000"})
      });
      $('#zero').click(function(){
    	  console.log("asdasdasdasd");
      	  //jQuery.ajax({});
      	  $.ajax({    		  
      	     url:'/Project2/main/main_list.do',
      	     success: function(data){
      	    	$('#main').html(data); 
      	     }
      	  });//$.ajax()
        });//button click
        
        $('#one').click(function(){
        	  //jQuery.ajax({});
        	  console.log("DDDD");
        	  $.ajax({    		  
        	     url:'/Project2/main/main_list.do',
        	     success: function(data){
        	    	$('#main').html(data); 
        	     }
        	  });//$.ajax()
          });//button click
          
          $('#two').click(function(){
        	  console.log("DDDD");
          	  //jQuery.ajax({});
          	  $.ajax({    		  
          	     url:'/Project2/admin/listQnaConfirm.do?action=AdminQna',
          	     success: function(data){
          	    	$('#main').html(data); 
          	     }
          	  });//$.ajax()
            });//button click
            
            $('#three').click(function(){
            	 console.log("DDDD");
            	  //jQuery.ajax({});
            	  $.ajax({    		  
            	     url:'/Project2/admin/notice_list.do',
            	     success: function(data){
            	    	$('#main').html(data); 
            	     }
            	  });//$.ajax()
              });//button click
              
              $('#four').click(function(){
            	  console.log("DDDD");
              	  //jQuery.ajax({});
              	  $.ajax({    		  
              	     url:'/Project2/admin/notice_list.do',
              	     success: function(data){
              	    	$('#main').html(data); 
              	     }
              	  });//$.ajax()
                });//button click
                
                $('#five').click(function(){
                	 console.log("DDDD");
                	  //jQuery.ajax({});
                	  $.ajax({    		  
                	     url:'/Project2/common/edit.do?action=member',
                	     success: function(data){
                	    	$('#main').html(data); 
                	     }
                	  });//$.ajax()
                  });//button click
                  
                  $('#six').click(function(){
                	  console.log("DDDD");
                  	  //jQuery.ajax({});
                  	  $.ajax({    		  
                  	     url:'/Project2/admin/list.do?action=list',
                  	     success: function(data){
                  	    	$('#main').html(data); 
                  	     }
                  	  });//$.ajax()
                    });//button click
                    
   });
</script>

</head>
<body>
<% request.setCharacterEncoding("UTF-8");
	 List<NoticeDTO> list_h = (List<NoticeDTO>)request.getAttribute("haksa_list");
	 List<NoticeDTO> list_j = (List<NoticeDTO>)request.getAttribute("job_list");%> 
	<center>
<table width="1024px" cellpadding="0" cellspacing="0" height="0" border=0 style="padding-top:0px; "> 
<tr> 
<td width="200px">
<div class="menu">
		<ul>
				<li><p><a href="#" id="zero">메인</a></p></li>
				<li><p><a id="one">학적처리</a></p></li>
				<li><p><a href="#" id="two">건의사항 확인</a></p></li>
				<li><p><a id="three">공지관리</a></p></li>
				<li><p><a id="four">과목 수정/등록</a></p></li>
				<li><p><a href="#" id="five">회원관리</a></p></li>
				<li><p><a href="#" id="six">학사일정관리</a></p></li>
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