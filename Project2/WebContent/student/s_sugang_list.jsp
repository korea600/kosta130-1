<%@page import="sugang.model.SugangDAO"%>
<%@page import="member.model.LoginDTO"%>
<%@page import="sugang.model.SugangDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/Project2/common/css/student_sugang.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/Project2/js/jquery-1.12.4.js"></script>
<script type="text/javascript"> 
$(function(){
	  var major = $(".major").val();
	  var s_grade = $(".s_grade").val();
	
	$.ajax({
		url:'/Project2/student/sugang.do',
		data:{  action:"division",
				division:"전공"},
		success:function(data){
			var choice = document.getElementById('sel2');
			
			var divisions = data.split("|");
			var htmldata = ""
			for(var i=0; i < divisions.length; i++){
				if(major==$.trim(divisions[i])){
					htmldata += "<option selected='selected'>"+divisions[i]+"</option>"
				}else{
				htmldata += "<option>"+divisions[i]+"</option>"
				}
			}
			$("#sel2").append(htmldata)
		},
        error:function(xhr,status,error){
			location.href='/Project2/common/errorPage.jsp';
		}
	});
	
	$.ajax({
		url:'/Project2/student/sugang.do',
		data:{  action:"year"},
		success:function(data){
			var choice = document.getElementById('sel2');
			
			var divisions = data.split("|");
			var htmldata = ""
			for(var i=0; i < divisions.length; i++){
				if(major==$.trim(divisions[i])){
					alert(major);
					htmldata += "<option selected='selected'>"+divisions[i]+"</option>"
				}else{
				htmldata += "<option>"+divisions[i]+"</option>"
				}
			}
			$("#sel2").append(htmldata)
		},
        error:function(xhr,status,error){
			location.href='/Project2/common/errorPage.jsp';
		}
	});
	
	$('#sp1').change(function(){
		$.ajax({
			url:'/Project2/student/sugang.do',
			data:{  action:"division",
					division:$('#sel1').val()},
			success:function(data){
				var choice = document.getElementById('sel2');
				while(choice.hasChildNodes()){
					choice.removeChild(choice.firstChild);
				}
				var divisions = data.split("|");
				
				var htmldata = ""
				for(var i=0; i < divisions.length; i++){
					htmldata += "<option>"+divisions[i]+"</option>"
				}
				$("#sel2").append(htmldata)
			},
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
		});
	});//sp1 change
});//ready

$(document).ready(function(){
	$(document).on("click",".sum",function(){
		var code = $(this).parent().parent().children(":first").text();
		var bet = $(this).prev().val();
		var division = document.sugang_form.division.value;
		var major = document.sugang_form.major1.value;
		var level = document.sugang_form.level.value;
		
	    $.ajax({
	        url:'/Project2/student/search_btn_ajax.jsp',
	        type:'post',
	        data:{"action":"enrolment","bet":bet,"division":division,"major":major,"level":level,"code":code},
	        success:function(data){
	        	if($.trim(data)=="No"){
	        		alert("수강 정원이 초과 하였습니다.");
	        		sugang();
	        	}else if($.trim(data)=="NoBet"){
	        		alert("필요한 배팅 점수가 부족합니다.");
	        		sugang();
	        	}else{
	        	$(".sugang_view_table1").empty();
	            $(".sugang_view_table1").append(data);
	        	}
	        },
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
	    })
	});
	 
	
	$('.search_btn').click(function(){
		var division = document.sugang_form.division.value;
		var major = $(this).parent().children().val();
		var level = $(this).prev().children().val();
		console.log(major);
		alert(major);
		if(level=="==선택==" || major==""){
			alert("값이 유효하지 않습니다.")
		}else{
		
		$.ajax({
			url:'/Project2/student/search_btn_ajax.jsp',
			type:'POST',
			data:{"action":"possibleList","division":division,"major":major,"level":level},
			success:function(data){
				$('.sugang_application').empty();
				$('.sugang_application').append(data);
			},
	        error:function(xhr,status,error){
				location.href='/Project2/common/errorPage.jsp';
			}
		})
		}
	});



});
</script>
</head>
<% LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
String id = login.getId();
SugangDAO dao1 = new SugangDAO();
SugangDTO dto1 = dao1.mainSelectList(id); %>
<body>

	<form name="sugang_form" class="sugang_form">
	<input type="hidden"  name="major" class="major" value="<%=dto1.getDept()%>">
	<input type="hidden" name="s_grade" class="s_grade" value="<%=dto1.getSemester()%>">
	<span id="sp1"><select id="sel1" name="division">
		<option selected="selected">전공</option>
		<option>교양</option>
	</select></span>
	<span id="sp2"><select id="sel2" name="major1">
	<option id="choice" value="==선택==">==선택==</option>
	</select></span>
	<%
		int sem = dto1.getSemester();
	if(sem==1 || sem==2){ %>
	<span id="sp3" value="==선택=="><select id="sel3" name="level">
		<option value="1">==선택==</option>
		<option selected="selected">1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
	</select></span>
	<%} else if(sem==3 || sem==4){ %>
	<span id="sp3" value="==선택=="><select id="sel3" name="level">
		<option value="1">==선택==</option>
		<option>1</option>
		<option selected="selected">2</option>
		<option>3</option>
		<option>4</option>
	</select></span>
	<%} else if(sem==5 || sem==6){ %>
	<span id="sp3" value="==선택=="><select id="sel3" name="level">
		<option value="1">==선택==</option>
		<option>1</option>
		<option>2</option>
		<option selected="selected">3</option>
		<option>4</option>
	</select></span>
	<%} else if(sem==7 || sem==8){ %>
	<span id="sp3" value="==선택=="><select id="sel3" name="level">
		<option value="1">==선택==</option>
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option selected="selected">4</option>
	</select></span>
	<%} %>
	<input class="search_btn" type="button" value="조회">
	</form>
	<div class="sugang">
		<div class="right_pop"><p>* 배팅가능 점수 : ${pTagData.total }</p><p>* 신청가능 학점 : ${pTagData.t_credit }</p></div>
		
		<h3 style="margin-top: 30px;">수강가능 목록</h3>
		<div class="sugang_table1">
			<ul>
				<li>과목코드</li>
				<li>과목명</li>
				<li>교수명</li>
				<li>강의시간</li>			
				<li>강의실</li>			
				<li>인원</li>
				<li>배팅점수</li>
			</ul>
		</div>
   </div>
   <div class="sugang_view_table1">
		<div class="sugang_application">
			<%
		List<SugangDTO> list1 = (List<SugangDTO>)request.getAttribute("applySelect");
			if(list1 != null){
				SugangDAO dao = new SugangDAO();
				
				for(int i=0; i<list1.size(); i++){
					SugangDTO dto=list1.get(i);
					if(dao.allCntSelect(dto.getCode()) > dao.notBetGrade_info(dto.getCode())){
					out.print("<ul><li>"+dto.getCode()+"</li><li>"+dto.getSub()+"</li><li>"+dto.getProfessor()+
							"</li><li>"+dto.getTimes()+"</li><li>"+dto.getRoom()+"</li><li>"+dto.getCnt()+"</li><li>"+
							"<input type='text' class='enrolment_text'><input type='button' class='sum' value='신청'></li></ul>");
					}else if(dao.allCntSelect(dto.getCode()) <= dao.notBetGrade_info(dto.getCode())){
						out.print("<ul><li>"+dto.getCode()+"</li><li>"+dto.getSub()+"</li><li>"+dto.getProfessor()+
								"</li><li>"+dto.getTimes()+"</li><li>"+dto.getRoom()+"</li><li>"+dto.getCnt()+"</li><li>"+
								"<input type='text' class='enrolment_text'><input type='button' class='sum' value='정원초과' disabled='disabled'></li></ul>");
					}
					}
					
			}
		%>
		</div>
	
	<h3 style="margin-top: 30px;">수강신청 목록</h3>
		<div class="sugang_table2">
			<ul>
				<li>과목코드</li>
				<li>과목명</li>
				<li>교수명</li>
				<li>강의시간</li>
				<li>강의실</li>
				<li>인원</li>
				<li>배팅점수</li>
			</ul>
		</div>
		<div class="sugang_view_table2">
			<%
		List<SugangDTO> list2 = (List<SugangDTO>)request.getAttribute("sugangApply");
			if(list2 != null){
				for(int i=0; i<list2.size(); i++){
					SugangDTO dto=list2.get(i);
					out.print("<ul><li>"+dto.getCode()+"</li><li>"+dto.getSub()+"</li><li>"+dto.getProfessor()+
							"</li><li>"+dto.getTimes()+"</li><li>"+dto.getRoom()+"</li><li>"+dto.getCnt()+"</li><li>"+
							dto.getBet()+"</li></ul>");
				}
			}
		%>
		</div>
 </div>
	<h3 style="margin-top: 30px;">수강신청 완료</h3>
	<div class="sugang_table3">
			<ul>
				<li>과목코드</li>
				<li>과목명</li>
				<li>교수명</li>
				<li>강의시간</li>
				<li>강의실</li>
				<li>인원</li>
			</ul>
		</div>
		<div class="sugang_view_table3">
		<%
		List<SugangDTO> list = (List<SugangDTO>)request.getAttribute("selectList");
			if(list != null){
				for(int i=0; i<list.size(); i++){
					SugangDTO dto=list.get(i);
					out.print("<ul><li>"+dto.getCode()+"</li><li>"+dto.getSub()+"</li><li>"+dto.getProfessor()+
							"</li><li>"+dto.getTimes()+"</li><li>"+dto.getRoom()+"</li><li>"+dto.getCnt()+"</li>"+
							"</ul>");
				}
			}
		%>
		</div>
</body>
</html>