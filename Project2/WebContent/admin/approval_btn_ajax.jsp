<%@page import="subject.model.SubjectDTO"%>
<%@page import="java.util.List"%>
<%@page import="subject.model.SubjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String action = request.getParameter("action");

	SubjectDAO dao = new SubjectDAO();
	List<SubjectDTO> list = null;
	if(action.equals("subappr")){
		int code = Integer.parseInt(request.getParameter("code"));
		String status = request.getParameter("status");
		System.out.println("code:"+code);
		SubjectDTO dto = new SubjectDTO(null,null,null,0,0,code,null,0,null,null,0,status,null);
		dao.approvalUpdate(dto);
		list = dao.a_select("처리중");
		//id,name,division,int year,int semester,int code,sub,int credit,times,room,int cnt,checked,major
	}
	
	for(int i = 0; i < list.size(); i++){
%>
		<ul class="member_text">
			<li><%= list.get(i).getYear()%></li>
			<li><%= list.get(i).getSemester()%></li>
			<li><%= list.get(i).getCode()%></li>
			<li><%= list.get(i).getSub()%></li>
			<li><%= list.get(i).getName()%></li>
			<li><%= list.get(i).getTimes()%></li>
			<li><%= list.get(i).getRoom()%></li>
			<li><input type='button' class='approval_btn' value='승인'></li>
		</ul>
<%
	}
%>