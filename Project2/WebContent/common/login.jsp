<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/login.css">

<script src="css/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
    $("#btn1").change(function(){
        if($("#btn1").is(":checked")){
            $("#btn11").css("background-color","#45a049");
			$("#btn22").css("background-color","white");
			$("#btn33").css("background-color","white");
        }
    });

	$("#btn2").change(function(){
        if($("#btn2").is(":checked")){
            $("#btn11").css("background-color","white");
			$("#btn22").css("background-color","#008CBA");
			$("#btn33").css("background-color","white");
        }
    });

	$("#btn3").change(function(){
        if($("#btn3").is(":checked")){
            $("#btn11").css("background-color","white");
			$("#btn22").css("background-color","white");
			$("#btn33").css("background-color","#555555");
        }
    });
});
</script>
</head>
<body>
<center>
<img src="true.jpg" class="img">
<hr>
<!--<img src="login.png" width="1300px" height="200px"><br><br>-->
<p class="login">Login</p>
  <class="btn-group" data-toggle="buttons">
    <label class="button button1" id="btn11">
      <input type="radio" name="options" id="btn1" class="btn1"> 학생
    </label>
    <label class="button button2" id="btn22">
      <input type="radio" name="options" id="btn2" class="btn2"> 교수
    </label>
    <label class="button button5" id="btn33">
      <input type="radio" name="options" id="btn3" class="btn3"> 교직원
    </label>
 
<div style=" padding: 10px; width:430px; height: 190px; overflow-x:hidden;overflow-y:hidden;">
  <form action="">
    <label>아이디&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="fname" name="id"  placeholder="학번">
<br>

    <label>비밀번호</label>

    <input type="password" id="lname" name="pass"  placeholder="비밀번호">
<br>
    <input type="submit" value="로그인">
  </form>
</div>


</center>
</body>
</html>
