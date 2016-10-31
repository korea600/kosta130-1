<%@page import="member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/a_mem.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<script src="/Project2/common/css/jquery-3.0.0.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<script type="text/javascript">
$( document ).ready(function() {
	$('.school_btn').click(function(){
		var dept = document.frm.part.value;
		var sem = document.frm.level.value;
	    $.ajax({
	        url:'/Project2/admin/school_btn_ajax.jsp',
	        type:'post',
	        data:{"action":"scr_selec","dept":dept,"sem":sem},
	        success:function(data){
	        	$(".input_box").empty();
	            $(".input_box").append(data);
	        }
	    })
	});
	
	$('.name_btn').click(function(){
		var cate = $(".name").val();
		var text = $(".name_text").val();
		console.log(cate);
	    $.ajax({
	        url:'/Project2/admin/school_btn_ajax.jsp',
	        type:'post',
	        data:{"action":"scr_selec2","cate":cate,"text":text},
	        success:function(data){
	        	$(".input_box").empty();
	            $(".input_box").append(data);
	        }
	    })
	});
	
	$('.file_insert').click(function(){
		console.log("Ddd");
		 if (frm.file1.value == "") {   
			  alert("파일을 업로드해주세요.");   
			  return false;   
			 }  else if(!checkFileType(frm.file1.value)) {   
			  alert("엑셀파일만 업로드 해주세요.");   
			  return false;   
			 }   
			  document.frm.submit();
			   "WebContent/ex_test/excel_form.jsp"
	});
});




	
	function checkFileType(filePath){   
	  
	 var fileLen = filePath.length;   
	 var fileFormat = filePath.substring(fileLen - 4);   
	 fileFormatfileFormat = fileFormat.toLowerCase();   
	  
	 if (fileFormat == ".xls"){   return true;    
	 }   else{     return false;     }   
	}   
</script>
</head>
<body>
<form name="frm" action="/Project2/admin/excel_insert.jsp" method="post" enctype="multipart/form-data">
<section>
		<div class="member_form" style="margin-top: 0px;">
			<!--검색-->
			<div class="search">
				<!--left-->
				<div class="left_search">
					<select class="part" name="part">
						<option>학과</option>
						<c:forEach items="${list }" var="sub">
						<option>${sub.dept }</option>
						</c:forEach>
					</select>

					<select class="level" name="level">
						<option>학년</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
					<div class="school_btn"> 조회</div>
					<!-- <input type="file" value="등록"> -->
				</div>
				<!--right-->
				<div class="right_search">
					<select class="name">
						<option value="이름">이름</option>
						<option value="학번">학번</option>
					</select>
					<input type="text"  class="name_text"/>
					<div class="name_btn">검색</div>
				</div>
			</div>
			<!--검색-->
			<div class="file_form">
				<input type="file" name="file1" align="absmiddle"/>
				<input type="button" value="전송" class='file_insert'/>
				<a href="/Project2/admin/member.xls" download><input type="button" value="양식다운로드"/></a>
			</div>

			<div class="member_info">
				<ul class="top_text">
					<li>학번</li>
					<li>학과</li>
					<li>이름</li>
					<li>학년</li>
					<li>상태</li>
					<li>연락처</li>
					<li>직책</li>					
				</ul>
			
				<div class="input_box">
				</div>
		
			
			</div>
		</div>
	</section>
</form>
</body>
</html>