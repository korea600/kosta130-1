<!DOCTYPE html>
<html>
<head>

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
      <input type="radio" name="options" id="btn1" class="btn1"> �л�
    </label>
    <label class="button button2" id="btn22">
      <input type="radio" name="options" id="btn2" class="btn2"> ����
    </label>
    <label class="button button5" id="btn33">
      <input type="radio" name="options" id="btn3" class="btn3"> ������
    </label>
 
<div style=" padding: 10px; width:430px; height: 190px; overflow-x:hidden;overflow-y:hidden;">
  <form action="">
    <label>���̵�&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="fname" name="id"  placeholder="�й�">
<br>
    <label>��й�ȣ</label>
    <input type="password" id="lname" name="pass"  placeholder="��й�ȣ">
<br>
    <input type="submit" value="�α���">
  </form>
</div>


</center>
</body>
</html>
