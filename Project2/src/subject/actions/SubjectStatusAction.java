package subject.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import subject.model.SubjectDAO;

public class SubjectStatusAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		
		if(action.equals("statusList")){
			SubjectDAO dao = new SubjectDAO();
			request.setAttribute("statusList", dao.a_select("Ã³¸®Áß"));
		}
		
		return forward;
	}
}