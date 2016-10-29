package schedule.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import schedule.model.ScheduleDAO;
import schedule.model.ScheduleDTO;

public class ScheduleAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ScheduleDAO dao = new ScheduleDAO();
		
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		
		if (action.equals("insert")) {
			
			String starts = request.getParameter("syear")+"/"+
							request.getParameter("smonth")+"/"+
							request.getParameter("sday")+"/"+
							request.getParameter("shour")+"/"+
							request.getParameter("sminute");
			
			String ends = request.getParameter("eyear")+"/"+
					request.getParameter("emonth")+"/"+
					request.getParameter("eday")+"/"+
					request.getParameter("ehour")+"/"+
					request.getParameter("eminute");
			
			ScheduleDTO dto = new ScheduleDTO( 
									0,
									starts,
									ends,
									request.getParameter("content"),
									request.getParameter("etc"),
									login.getName());
			if(dao.insert(dto)){//DB입력 성공			    
			    request.setAttribute("list",dao.selectAll());
			}
		}else if(action.equals("upform")){
			int no = Integer.parseInt(request.getParameter("no"));
			ScheduleDTO dto = dao.select(no);
				request.setAttribute("upform", dto);
				forward = mapping.findForward("upform");
		}else if(action.equals("update")){
			
			String starts = request.getParameter("syear")+"/"+
					request.getParameter("smonth")+"/"+
					request.getParameter("sday")+"/"+
					request.getParameter("shour")+"/"+
					request.getParameter("sminute");
	
			String ends = request.getParameter("eyear")+"/"+
					request.getParameter("emonth")+"/"+
					request.getParameter("eday")+"/"+
					request.getParameter("ehour")+"/"+
					request.getParameter("eminute");
			
			ScheduleDTO dto = new ScheduleDTO(
							Integer.parseInt(request.getParameter("no")),
							starts,
							ends,
							request.getParameter("content"),
							request.getParameter("etc"),
							login.getName());
			if(dao.update(dto)==true){
				request.setAttribute("list", dao.selectAll());
			}
		}else if(action.equals("delete")){
			int no = Integer.parseInt(request.getParameter("no"));
			if(dao.delete(no)==true){
				request.setAttribute("list", dao.selectAll());
			}
		}else if(action.equals("search")){
			String month = request.getParameter("month");
			List<ScheduleDTO> list = dao.search(month);
				request.setAttribute("list", list);
		}
		return forward;
	}
}
