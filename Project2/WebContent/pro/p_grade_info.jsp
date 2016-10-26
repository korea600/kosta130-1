<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력</title>
<script type="text/javascript" src="/Project2/js/ajax.js"></script>
<script type="text/javascript" src="/Project2/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function(){
	//	$('#grade_list').hide();
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
		var params="action=select&id="+${LoginDTO.id}+"&year="+year+"&semester="+semester+"&checked="+checked+"&sub="+sub;
		sendRequest('/Project2/pro/action.do', params, result_grade, 'POST');
	}
	function result_grade(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				$('#grade_list').show();
				var result=eval("("+xhr.responseText+")");
				var results='';
				for(var i=0;i<result.dto.length;i++){
					results+="<td>"+result.dto[i].semester+"</td><td>"+result.dto[i].dept+"</td>"
						+"<td>"+result.dto[i].id+"</td><td>"+result.dto[i].name+"</td>"
						+"<td><select name='grade"+i+"'>"
						+"<option value='A+'>A+</option>"
						+"<option value='A'>A</option>"
						+"<option value='B+'>B+</option>"
						+"<option value='B'>B</option>"
						+"<option value='C+'>C+</option>"
						+"<option value='C'>C</option>"
						+"<option value='D+'>D+</option>"
						+"<option value='D'>D</option>"
						+"<option value='F'>F</option></select></td>"
				}
				for(var i=0;i<result.dto.length;i++){
					$('#grade_data').html(results);
					$('[name=grade'+i+']').each(function(){
						if($(this).val()==result.dto[i].grade){
							$(this).attr('checked','checked');	
						}
					});
				}
			}
			else{
				alert("성적을 조회할 수 없습니다.");
			}
		}
		
	}
</script>
<!-- <link rel="stylesheet" href="css/sugang.css" type="text/css"> -->
</head>
<body>
<form name='request' action='' method="POST">
<select name='year' onchange="load_semester()">
	<option value='학년도'>학년도</option>
	<option value='2016'>2016</option>
	<option value='2015'>2015</option>
	<option value='2014'>2014</option>
	<option value='2013'>2013</option>
</select>
<select name='semester' onchange="load_checked()">
	<option value='학기'>학기</option>
</select>
<select name='checked' onchange="load_sub()">
	<option value='이수구분'>이수구분</option>
</select>
<select name='sub'>
	<option value='강좌명'>강좌명</option>
</select>
<input type='button' value='조회' onclick="load_grade()">
</form>
<form name='grade' action=''>
<table border="1" id='grade_list'>
<tr><th>학년</th><th>전공</th><th>학번</th><th>성명</th><th colspan="9">평가</th></tr>
<tr id='grade_data'></tr>
</table>
</form>
</body>
</html>