<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력</title>
<link rel="stylesheet" href="/Project2/common/css/a_member_grade.css" type="text/css" />
<link rel="stylesheet" href="/Project2/common/css/style.css" type="text/css" />
<script type="text/javascript" src="/Project2/js/ajax.js"></script>
<script type="text/javascript" src="/Project2/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function(){
		$('.grade_info').hide();
	});
	function load_semester(){
		var items=["학기",1,2];
		add_options("semester", items);
	}
	function load_checked(){
		var items=["이수구분","교양","전공"];
		add_options("checked", items);
	}
	function load_sub(){
		var year=document.getElementsByName("year").item(0);
		var semester=document.getElementsByName("semester").item(0);
		var checked=document.getElementsByName("checked").item(0);
		var params="action=find_sub&id="+${LoginDTO.id}+"&year="+year.value+"&semester="+semester.value+"&checked="+checked.value;
		sendRequest('/Project2/pro/action.do', params, result_sub, 'POST');
	}
	function result_sub(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var subs=("강좌명|"+xhr.responseText.trim()).split("|");
				add_options("sub",subs);
			}
			else{
				alert("강좌명을 조회할 수 없습니다.");
			}
		}
		
	}
	function add_options(option_name,items){	// select태그내 option 값 변경
		var option=document.getElementsByName(option_name).item(0);
		while(option.hasChildNodes()){
			option.removeChild(option.firstChild);
		}
		for(var i=0;i<items.length;i++){
			var add = document.createElement("option");
			add.setAttribute("value", items[i]);
			add.setAttribute("label", items[i]);
			option.appendChild(add);
		}
		
	}
	function load_grade(){
		var year=$('[name=year]').val();
		var semester=$('[name=semester]').val();
		var checked=$('[name=checked]').val();
		var sub=$('[name=sub]').val();
		if(year=='학년도' || semester=='학기' || checked=='이수구분' || sub=='강좌명'){
			alert('유효하지 않은 입력이 있습니다.');
			return;
		}
		var params="action=select&id="+${LoginDTO.id}+"&year="+year+"&semester="+semester+"&checked="+checked+"&sub="+sub;
		sendRequest('/Project2/pro/action.do', params, result_grade, 'POST');
	}
	function result_grade(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				$('.grade_info').show();
				var result=eval("("+xhr.responseText+")");
				var results='';
				$('ul.member_text').remove();
				for(var i=0;i<result.dto.length;i++){
					// 학년 구하기 (1~2학기 -> 1학년, 3~4학기 -> 2학년, ...)
					var level = Math.round(result.dto[i].semester/2);
					
					// 태그에 삽입할 형태로 데이터 변환
					results+="<ul class='member_text'>"
						+"<li>"+level+"</li>"
						+"<li>"+result.dto[i].dept+"</li>"
						+"<li>"+result.dto[i].id+"</li>"
						+"<li>"+result.dto[i].name+"</li><li>"
						+"<select name='grade"+i+"'>"
						+"<option value='A+'>A+</option>"
						+"<option value='A'>A</option>"
						+"<option value='B+'>B+</option>"
						+"<option value='B'>B</option>"
						+"<option value='C+'>C+</option>"
						+"<option value='C'>C</option>"
						+"<option value='D+'>D+</option>"
						+"<option value='D'>D</option>"
						+"<option value='F'>F</option></select></li></ul>"
				}
				// 태그에 데이터 삽입 + select값 적용
				$('.top_text').append(results);
				$('.top_text').append("<div class='school_btn' name='insert'>입력</div>");
				for(var i=0;i<result.dto.length;i++){
					$('[name=grade'+i+']').val(result.dto[i].grade);
					
				}
			}
			else{
				alert("성적을 조회할 수 없습니다.");
			}
		}
		$('[name=insert]').click(function(){
			document.grades.submit();
		});	
	}
</script>
<!-- <link rel="stylesheet" href="css/sugang.css" type="text/css"> -->
</head>
<body>

<form name='request'>
<select name='year' class='part' onchange="load_semester()">
	<option value='학년도'>학년도</option>
	<option value='2016'>2016</option>
	<option value='2015'>2015</option>
	<option value='2014'>2014</option>
	<option value='2013'>2013</option>
</select>
<select name='semester' class='part' onchange="load_checked()">
	<option value='학기'>학기</option>
</select>
<select name='checked' class='part'onchange="load_sub()">
	<option value='이수구분'>이수구분</option>
</select>
<select name='sub' class='part'>
	<option value='강좌명'>강좌명</option>
</select>
<div class="school_btn" onclick="load_grade()">조회</div>

</form><br>
<form name='grades'>
<div class="grade_info">
				<ul class="top_text">
					<li>학년</li>
					<li>전공</li>
					<li>학번</li>
					<li>성명</li>
					<li>평가</li>
				</ul>
</div>
</form>
</body>
</html>