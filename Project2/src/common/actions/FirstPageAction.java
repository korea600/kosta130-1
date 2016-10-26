package common.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import notice.model.NoticeDAO;
import notice.model.NoticeDTO;
import schedule.model.ScheduleDAO;
import schedule.model.ScheduleDTO;

public class FirstPageAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward=null;
		 
		// 공지사항 얻어오기 (학사/취업)
		NoticeDAO notice = new NoticeDAO();
		List<NoticeDTO> notice_haksa = notice.select("학사"); 
		List<NoticeDTO> notice_job = notice.select("취업");
		request.setAttribute("haksa", notice_haksa);
		request.setAttribute("schedule", notice_job);
		
		// 학사일정 얻어오기
		List<ScheduleDTO> schedule = new ScheduleDAO().recentList();
		request.setAttribute("schedule", schedule);
		
		// 로그인 분류에 따라 페이지 출력 구분 하기 (학생, 교수, 교직원)
		LoginDTO dto = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String job = dto.getJob();
		switch (job) {
			case "S" :
				forward = mapping.findForward("student");break;
			case "P" :
				forward = mapping.findForward("professor");break;
			case "A" :
				forward = mapping.findForward("admin");break;
		}
		
		return forward;
	}
}
