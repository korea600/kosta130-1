<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<script type="text/javascript">//ajax 메인 불러오기
$(document).ready(function(){
    $('.zero').click(function(){
  	  //jQuery.ajax({});
  	  $.ajax({    		  
  	     url:'/Project2/main/main_list.do',
  	     success: function(result,status,xhr){
  	    	$('#main').html(result); 
  	     },
  		 error:function(xhr,status,error){ //error(xhr,status,error)
  			alert('status: '+ status+
  					'\nerror: '+ error);
  		    $('div').text('에러발생:'+ xhr.statusText);
  		 }
  	  });//$.ajax()
    });//button click
    
    $('.one').click(function(){
    	  //jQuery.ajax({});
    	  $.ajax({    		  
    	     url:'/Project2/a_reg.do',
    	     success: function(result,status,xhr){
    	    	$('#main').html(result); 
    	     },
    		 error:function(xhr,status,error){ //error(xhr,status,error)
    			alert('status: '+ status+
    					'\nerror: '+ error);
    		    $('div').text('에러발생:'+ xhr.statusText);
    		 }
    	  });//$.ajax()
      });//button click
      
      $('.two').click(function(){
      	  //jQuery.ajax({});
      	  $.ajax({    		  
      	     url:'/Project2/student/listQna.do?action=list',
      	     success: function(result,status,xhr){
      	    	$('#main').html(result); 
      	     },
      		 error:function(xhr,status,error){ //error(xhr,status,error)
      			alert('status: '+ status+
      					'\nerror: '+ error);
      		    $('div').text('에러발생:'+ xhr.statusText);
      		 }
      	  });//$.ajax()
        });//button click
        
        $('.three').click(function(){
        	  //jQuery.ajax({});
        	  $.ajax({    		  
        	     url:'/Project2/admin/listQnaConfirm.do?action=AdminQna',
        	     success: function(result,status,xhr){
        	    	$('#main').html(result); 
        	     },
        		 error:function(xhr,status,error){ //error(xhr,status,error)
        			alert('status: '+ status+
        					'\nerror: '+ error);
        		    $('div').text('에러발생:'+ xhr.statusText);
        		 }
        	  });//$.ajax()
          });//button click
          
          $('.four').click(function(){
          	  //jQuery.ajax({});
          	  $.ajax({    		  
          	     url:'/Project2/admin/notice_list.do',
          	     success: function(result,status,xhr){
          	    	$('#main').html(result); 
          	     },
          		 error:function(xhr,status,error){ //error(xhr,status,error)
          			alert('status: '+ status+
          					'\nerror: '+ error);
          		    $('div').text('에러발생:'+ xhr.statusText);
          		 }
          	  });//$.ajax()
            });//button click
            
            $('.five').click(function(){
            	  //jQuery.ajax({});
            	  $.ajax({    		  
            	     url:'/Project2/main/main_list.do',
            	     success: function(result,status,xhr){
            	    	$('#main').html(result); 
            	     },
            		 error:function(xhr,status,error){ //error(xhr,status,error)
            			alert('status: '+ status+
            					'\nerror: '+ error);
            		    $('div').text('에러발생:'+ xhr.statusText);
            		 }
            	  });//$.ajax()
              });//button click
              
              $('.six').click(function(){
              	  //jQuery.ajax({});
              	  $.ajax({    		  
              	     url:'/Project2/common/edit.do?action=member',
              	     success: function(result,status,xhr){
              	    	$('#main').html(result); 
              	     },
              		 error:function(xhr,status,error){ //error(xhr,status,error)
              			alert('status: '+ status+
              					'\nerror: '+ error);
              		    $('div').text('에러발생:'+ xhr.statusText);
              		 }
              	  });//$.ajax()
                });//button click
  });//ready

</script>
</head>
<body>
<header><%@include file="/common/header.jsp"%></header> 
<table width="1000" cellpadding="0" cellspacing="0" height=65 align=center border=0> 
<tr> 
<td width="200"><div class="menu">
			<ul>
				<li class="zero"><p><a href="#">메인</a></p></li>
				<li class="one"><p><a href="#">학적처리</a></p></li>
				<li class="two"><p><a href="#">건의사항 확인</a></p></li>
				<li class="three"><p>공지관리</p></li>
				<li class="four"><p>과목 수정/등록</p></li>
				<li class="five"><p><a href="#">회원관리</a></p></li>
				<li class="six"><p><a href="#">학사일정관리</a></p></li>
			</ul>
		</div></td> 
<td width="800"><div id="main">본문</div></td> 
</tr> 
</table> 


</body>
</html>