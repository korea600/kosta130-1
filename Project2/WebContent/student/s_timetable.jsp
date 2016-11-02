<%@page import="java.util.Calendar"%>
<%@page import="member.model.LoginDTO"%>
<%@page import="sugang.model.SugangDTO"%>
<%@page import="java.util.List"%>
<%@page import="grade.model.GradeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	GradeDAO dao = new GradeDAO();

	
	LoginDTO id = (LoginDTO)request.getSession().getAttribute("LoginDTO");
	
        Calendar c = Calendar.getInstance();
        int season = 0;
        int smo= c.get(Calendar.MONTH)+1;
        
        if(smo>0 && smo<7){
           season=1;
        }
        else
           season=2;
	SugangDTO input = new SugangDTO(id.getId(),season);
	List<SugangDTO> list = dao.timetale(input);
	String datas = "";
	for(int i=0;i<list.size();i++){
		datas+=(list.get(i).getSub()+"/"+list.get(i).getTimes());
		if(i!=list.size()-1) datas+="|";
	}
%>
<script type="text/javascript" src='/Project2/js/jquery-1.12.4.js'></script>
<script type="text/javascript">
	var data='<%=datas%>'
	var days=["","월","화","수","목","금","토"];
	$(function(){		// 리스트 정보를 이용해서 시간표 그리기
		var items=data.split('|');		// 리스트 요소단위로 분할
		for(var i=0;i<items.length;i++){
			var sub=items[i].split('/')[0];	// 강좌명 분할
			var day=items[i].split('/')[1]	// 요일 분할
			var start=items[i].split('/')[2].split('-')[0];	// 시작교시 분할
			var end=items[i].split('/')[2].split('-')[1];	// 끝교시 분할
			var times=end-start+1;
			var j;			// 요일정보를 인덱스값으로 변환 
			for(j=0;j<days.length;j++)
				if(days[j]==day) break;
			var tableid=start+""+j;						// rowspan 적용할 id값 구하기
			var spantable=document.getElementById(tableid);
			spantable.innerText=sub;
			spantable.rowSpan=times;

		}
	})
</script>
</head>
<body>

 <table width="800" height="600" border="1" cellspacing="1" align="center" >  
 <caption><h1><i>시간표</i></h1></caption>  
 <tr>  
 <th align="center" width = "10%" bgcolor ="5F8EBE">교시</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">월</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">화</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">수</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">목</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">금</th>  
 <th align="center" width = "15%" bgcolor ="5F8EBE">토</th>  
 </tr>
 <%
	int cols=7, rows=8;
 	int itemcount=0;
	for(int i=1;i<=rows;i++){
		out.print("<tr>");
		out.print("<td align='center'>"+i+"</td>");
		for(int j=1;j<=cols;j++){
			out.print("<td align='center' id="+i+""+j+"></td>");
		}
		out.print("</tr>");
	}
 %>
 
</table> 
</body>
</html>