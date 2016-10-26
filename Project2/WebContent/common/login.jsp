<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Project2/common/css/login.css">
<script type="text/javascript" src="js/ajax2.js"></script>
<script src="common/css/jquery-3.0.0.js"></script>
<script>
// style setting
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
<script type="text/javascript">
	function pass_check(){
		var id=document.frm.id.value;
		var pass=document.frm.pass.value;
		var jobs=document.frm.options;
		var job;
		for(var i=0;i<jobs.length;i++){
			if(jobs[i].checked){
				job=jobs[i].value;
				break;
			}
		}
		var param='id='+id+'&pass='+pass+'&job='+job;
		new ajax.xhr.Request('login.do',param,check_result,'POST');
	}
	function check_result(xhr){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var result=xhr.responseText.trim();
				if(result=="A"){
					location.replace("/Project2/admin/a_main_body.jsp");
				}else if(result=="S"){
					location.replace("/Project2/student/s_main_body.jsp");
				}else if(result=="P"){
					location.replace("/Project2/pro/p_main_body.jsp");
				}else{
					alert('로그인에 실패하였습니다.');
				}
			}
			else alert("서버에서 에러가 발생하였습니다.\n에러코드 : "+xhr.status);
		}
	}
</script>
</head>
<body>
<center>
<img src="/Project2/img/true.jpg" class="img">
<hr>
<!--<img src="login.png" width="1300px" height="200px"><br><br>-->
  <form name='frm'>
<p class="login">Login</p>
  <class="btn-group" data-toggle="buttons">
    <label class="button button1" id="btn11" style="background-color: green;">
      <input type="radio" name="options" id="btn1" class="btn1" value="student" checked="checked"> 학생
    </label>
    <label class="button button2" id="btn22">
      <input type="radio" name="options" id="btn2" class="btn2" value='professor'> 교수
    </label>
    <label class="button button5" id="btn33">
      <input type="radio" name="options" id="btn3" class="btn3" value='admin'> 교직원
    </label>
 
<div style=" padding: 10px; width:430px; height: 190px; overflow-x:hidden; overflow-y:hidden;">
    <label>아이디&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="fname" name="id"  placeholder="학번">
<br>

    <label>비밀번호</label>

    <input type="password" id="lname" name="pass"  placeholder="비밀번호">
<br>
    <input type="button" value="로그인" onclick='pass_check()'>
  </form>
</div>


</center>
</body>
</html>