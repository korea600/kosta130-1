<%@page import="java.util.Calendar"%>
<%@page import="member.model.LoginDTO"%>
<%@page import="sugang.model.SugangDTO"%>
<%@page import="java.util.List"%>
<%@page import="sugang.model.SugangDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	String action = request.getParameter("action");
	String division = request.getParameter("division");
	String major = request.getParameter("major");
	String level = request.getParameter("level");
	int season = 0;
	
	LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
	String id = login.getId();
	List<SugangDTO> list2 = null;
	SugangDAO dao = new SugangDAO();
	List<SugangDTO> list = null;
	
	if(action.equals("possibleList")){//수강신청 가능한 목록
		Calendar c = Calendar.getInstance();
		String smo = new String();
		smo= String.valueOf(c.get(Calendar.MONTH) +1 );
		
		if(smo.equals("2")||smo.equals("3")||smo.equals("4")||smo.equals("5")||smo.equals("6")||smo.equals("7")){
			season=1;
		}else if(smo.equals("8")||smo.equals("9")||smo.equals("10")||smo.equals("11")||smo.equals("12")||smo.equals("1")){
			season=2;
		}
		
		SugangDTO dto = new SugangDTO(id,0,0,0,0,null,null,season,null,0,0,null,null,major,division,null,0,null,null,null,0,null,Integer.parseInt(level));
		list = dao.applySelect(dto);
		
	}else if(action.equals("enrolment")){//수강신청한 목록
		int code = Integer.parseInt(request.getParameter("code"));
		int bet = 0;
		//id,code,bet,year,term,grade,dept,semester,status,total.t_credit,starts,ends,major,division,sub,credit,professor,times,room,cnt,checked,s_grade
		SugangDTO dto = new SugangDTO(id,code,bet,0,0,null,null,0,null,0,0,null,null,major,division,null,0,null,null,null,0,null,Integer.parseInt(level));
		if(dao.enrolmentInsert(dto)){		    
			list = dao.applySelect(dto);
			list2 = dao.sugangApply(id);
		}
	}
	
		if(action.equals("possibleList")){
			for(int i = 0; i < list.size(); i++){
				if(dao.allCntSelect(list.get(i).getCode()) > dao.sugangApplyCnt(list.get(i).getCode())){
 %>
		<ul class="member_text">
			<li name="code" class="code"><%= list.get(i).getCode()%></li>
			<li><%= list.get(i).getSub()%></li>
			<li><%= list.get(i).getProfessor()%></li>
			<li><%= list.get(i).getTimes()%></li>
			<li><%= list.get(i).getCnt()%></li>
			<li><input type='button' class='sum' value='신청'></li>
		</ul>
<%				
				}else if(dao.allCntSelect(list.get(i).getCode()) < dao.sugangApplyCnt(list.get(i).getCode())){
%>				
		<ul class="member_text">
			<li name="code" class="code"><%= list.get(i).getCode()%></li>
			<li><%= list.get(i).getSub()%></li>
			<li><%= list.get(i).getProfessor()%></li>
			<li><%= list.get(i).getTimes()%></li>
			<li><%= list.get(i).getCnt()%></li>
			<li><input type='button' class='sum' value='정원초과' disabled="disabled"></li>
		</ul>
<%				}
			}
		}else if(action.equals("enrolment")){
		for(int i = 0; i < list.size(); i++){
	%>
		<ul class="member_text">
			<li><%= list.get(i).getCode()%></li>
			<li><%= list.get(i).getSub()%></li>
			<li><%= list.get(i).getProfessor()%></li>
			<li><%= list.get(i).getTimes()%></li>
			<li><%= list.get(i).getCnt()%></li>
			<li><input type='button' class='sum' value='신청'></li>
		</ul>
		
<%}%>
<h3 style="margin-top: 30px;">수강신청 목록</h3>
		<div class="sugang_table2">
			<ul>
				<li>과목코드</li>
				<li>과목명</li>
				<li>교수명</li>
				<li>강의시간</li>
				<li>강의실</li>
				<li>강의인원</li>
			</ul>
		</div>
		<% for(int i = 0; i < list2.size(); i++){%>
	<ul class="member_text">
			<li><%= list2.get(i).getCode()%></li>
			<li><%= list2.get(i).getSub()%></li>
			<li><%= list2.get(i).getProfessor()%></li>
			<li><%= list2.get(i).getTimes()%></li>
			<li><%= list2.get(i).getRoom() %></li>
			<li><%= list2.get(i).getCnt()%></li>
			
		</ul>
<%} }%>