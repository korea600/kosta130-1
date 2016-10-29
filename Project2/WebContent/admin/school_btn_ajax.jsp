<%@page import="member.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="member.model.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String action = request.getParameter("action");
	String dept = request.getParameter("dept");
	String sem = request.getParameter("sem");
	String cate = null;
	String text = null;
	
	LoginDAO dao = new LoginDAO();
	List<MemberDTO> list = null;
	if(action.equals("scr_selec")){
		MemberDTO dto = new MemberDTO("0",dept,"1","1","1","a",Integer.parseInt(sem),"d",null);
		list = dao.mem_allselect(dto);
	}else if(action.endsWith("scr_selec2")){
		cate = request.getParameter("cate");
		text = request.getParameter("text");
		if(cate.equals("이름")){
			MemberDTO dto = new MemberDTO(null,null,"%"+text+"%",null,null,null,0,null,null);
			list = dao.ch_select(dto);
		}else if(cate.equals("학번")){
			MemberDTO dto = new MemberDTO("%"+text+"%",null,null,null,null,null,0,null,null);
			list = dao.ch_select(dto);
		}
		
	}

	for(int i = 0; i < list.size(); i++){
%>
<%!String seme;
String jobs;%>
<%

int semester = list.get(i).getSemester();
if(semester==1 || semester==2){
	seme = "1학년";
}else if(semester==3 || semester==4){
	seme = "2학년";
}else if(semester==5|| semester==6){
	seme = "3학년";
}else if(semester==7 || semester==8){
	seme = "4학년";
}

String job = list.get(i).getJob();
String jobs = null;
if(job.equals("S")){
	jobs="학생";
}else if(job.equals("A")){
	jobs="교직원";
}else if(job.equals("P")){
	jobs="교슈";
}
%>
			<ul class="member_text">
					<li><%= list.get(i).getId()%></li>
					<li><%= list.get(i).getDept()%></li>
					<li><%= list.get(i).getName()%></li>
					<li><%= seme %></li>
					<li><%= list.get(i).getStatus()%></li>
					<li><%= list.get(i).getTel()%></li>
					<li><%= jobs%></li>
					
				</ul>
<% } %>