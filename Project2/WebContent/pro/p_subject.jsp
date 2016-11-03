<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Project2/common/css/p_subject.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<title>과목조회</title>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var childWin;
	$(function(){
		$.ajax({
			url:'/Project2/pro/subjectlist.do',
			success:function(data,status,xhr){
				$('.sub_list').html(data);
			},
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
		});

	});
	function getList(){
		$.ajax({
			url:'/Project2/pro/subjectlist.do',
			success:function(data,status,xhr){
				$('.sub_list').html(data);
			},
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
		});
	}
</script>
</head>
<body>

<div class="sub_list">
	
</div>

</body>
</html>