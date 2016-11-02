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
		String action = request.getParameter("action");
		// �������� ������ (�л�/���)
		
		if(action==null || action.equals("login")){
			NoticeDAO notice = new NoticeDAO();
			List<NoticeDTO> notice_haksa = notice.select("�л�"); 
			List<NoticeDTO> notice_job = notice.select("���");
			request.setAttribute("haksa_list", notice_haksa);
			request.setAttribute("job_list", notice_job);
			// �л����� ������
			List<ScheduleDTO> schedule = new ScheduleDAO().recentList();
			request.setAttribute("list", schedule);
		

		
		// �α��� �з��� ���� ������ ��� ���� �ϱ� (�л�, ����, ������)
			LoginDTO dto = (LoginDTO) request.getSession().getAttribute("LoginDTO");
			String job = dto.getJob();
			switch (job) {
				case "S" :
					forward = mapping.findForward("student");break;
				case "P" :
					forward = mapping.findForward("professor");break;
				case "A" :
					forward = mapping.findForward("admin");break;
			}//switch
		}
		else if(action.equals("main")){
			NoticeDAO notice = new NoticeDAO();
			List<NoticeDTO> notice_haksa = notice.select("�л�"); 
			List<NoticeDTO> notice_job = notice.select("���");
			request.setAttribute("haksa_list", notice_haksa);
			request.setAttribute("job_list", notice_job);
			List<ScheduleDTO> schedule = new ScheduleDAO().recentList();
			request.setAttribute("list", schedule);
			forward = mapping.findForward("success_list1");
		}
		
		return forward;
	}
}
