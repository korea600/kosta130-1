<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				alert('error : '+error);
			}
		});
		$('[name=confirm]').click(function(){
			var filevalue = $('[name=plan]').val();
			if($('[name=start]').val()>$('[name=end]').val())
				alert("강의시간을 확인해 주세요.");
			else if(filevalue=='')
				alert("강의계획서를 업로드 해 주세요.");
			else if(filevalue.substring(filevalue.lastIndexOf("."))!=".doc")
				alert(".doc 파일만 업로드가 가능합니다.");
			else{
				document.frm.submit();
				opener.getList();
				self.close();
			}
		});
		$('[name=cancel]').click(function(){
			self.close();
		});	
	});
	function getList(){
		$.ajax({
			url:'/Project2/pro/subjectlist.do',
			success:function(data,status,xhr){
				$('.sub_list').html(data);
			},
			error:function(xhr,status,error){
				alert('error : '+error);
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