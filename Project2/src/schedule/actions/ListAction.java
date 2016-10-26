package schedule.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import schedule.model.ScheduleDAO;

public class ListAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		
		if(action.equals("list")){
			ScheduleDAO dao = new ScheduleDAO();
			request.setAttribute("list", dao.selectAll());
		}else if(action.equals("main")){
			ScheduleDAO dao = new ScheduleDAO();
			request.setAttribute("list", dao.selectAll());
			forward = mapping.findForward("main");
		}else if(action.equals("recent")){
			ScheduleDAO dao = new ScheduleDAO();
			request.setAttribute("list", dao.recentList());
			forward = mapping.findForward("main");
		}
		return forward;
	}
}
