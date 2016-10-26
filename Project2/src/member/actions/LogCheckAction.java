package member.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;

public class LogCheckAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoginDTO dto = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		ActionForward forward = null;
		if(dto==null){
			forward=mapping.findForward("need_login");
		}
		else{
			String job=dto.getJob();
			System.out.println(job);
			if(job.equals("S")){
				forward = mapping.findForward("student");
			}
			else if(job.equals("P")){
				forward = mapping.findForward("professor");
			}
			else{
				forward = mapping.findForward("admin");
			}
		}
		return super.execute(mapping, form, request, response);
	}

}
