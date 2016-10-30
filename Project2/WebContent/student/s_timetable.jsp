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
</head>
<body>
<%
	GradeDAO dao = new GradeDAO();

	
	LoginDTO id = (LoginDTO)request.getSession().getAttribute("LoginDTO");
	
        Calendar c = Calendar.getInstance();
        String smo = new String();
        int season = 0;
        smo= String.valueOf(c.get(Calendar.MONTH) );
        
        if(smo.equals("1")||smo.equals("8")){
           season=1;
        }else if(smo.equals("9")||smo.equals("12")){
           season=2;
        }
	System.out.println(id.getId());
	SugangDTO input = new SugangDTO(id.getId(),season);
	List<SugangDTO> list = dao.timetale(input);
	
	
%>
<table width="800"  border="1" cellspacing="1" align="center" >  
	<caption><h3>수강신청 목록</h3></caption>
	<tr>
		<th align="center" width = "10%" bgcolor ="5F8EBE">과목코드</th>  
		<th align="center" width = "10%" bgcolor ="5F8EBE">년도</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">학기</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">신청자</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">과목명</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">교수</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">강의시간</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">강의실</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">구분</th>
		<th align="center" width = "10%" bgcolor ="5F8EBE">학기</th>
	</tr>
	 <tr>
	 <%
	 	for(int i = 0; i < list.size(); i++){
	 %>
 	<td align='center'><%=list.get(i).getCode()%></td>
 	<td align='center'><%=list.get(i).getYear()%></td>
 	<td align='center'><%=list.get(i).getSemester()%></td>
 	<td align='center'><%=list.get(i).getId()%></td>
 	<td align='center'><%=list.get(i).getSub()%></td>
 	<td align='center'><%=list.get(i).getProfessor()%></td>
 	<td align='center'><%=list.get(i).getTimes()%></td>
 	<td align='center'><%=list.get(i).getRoom()%></td>
 	<td align='center'><%=list.get(i).getDivision()%></td>
 	<td align='center'><%=list.get(i).getCredit()%></td>
 	</tr>
 	<%} %>
</table>
  <table width="1100" height="800" border="1" cellspacing="1" align="center" >  
 <caption><h3>시간표</h3></caption>  
 <tr>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">교시</th>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">월</th>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">화</th>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">수</th>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">목</th>  
 <th align="center" width = "16%" bgcolor ="5F8EBE">금</th>  
 </tr>
 <%
  //시간표 표시를 위한 2차원 배열.
  String [][] table = new String[5][8];
  for (int i = 0; i < table.length; i++) {
     for (int j = 0; j < table[i].length; j++) {
      table[i][j] = " <td></td>";
     }
     
     //ex
     int time = 1;//1교시,2교시,3교시...
     int day = 1;//요일  0,1,2,3,4
     int a= 5; //시간표 시간.
     
     table[day][time] = " <td rowspan="+a+" align='center' >웹서버 프로그래밍</td>";
     
     int start_del = time+1;
     int last_del = time+a;
     for(int t = start_del; t< last_del; t++){
      table[day][t] = "";
     }
     //for(int del = start_del; del < last_del; start_del++){
    //  table[day][del] = "";
    // } 
     
   }
 %>  
 <%
  for(int mid = 0; mid < 8; mid++){
   out.println(" <tr><td rowspan='1' align='center' >"+(mid+1)+"교시</td>  ");
   for(int td = 0; td < 5; td++){
    out.println(table[td][mid]);
   }
   out.println(" </tr>");
  }
 %>
 </table> 
</body>
</html>