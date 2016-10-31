package subject.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import subject.model.SubjectDAO;

public class SubjectDeleteAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String result="false";
		SubjectDAO dao = new SubjectDAO();
		int code=Integer.parseInt(request.getParameter("code"));
		if(dao.delete(code))
			result="true";
		response.getWriter().write(result);
		return null;
			
	}
}
