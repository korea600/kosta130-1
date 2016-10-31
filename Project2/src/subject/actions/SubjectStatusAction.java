package subject.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import subject.model.SubjectDAO;
import subject.model.SubjectDTO;

public class SubjectStatusAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		
		if(action.equals("statusList")){
			List<SubjectDTO> list=null;
			SubjectDAO dao = new SubjectDAO();
			list = dao.a_select("Ã³¸®Áß");
			request.setAttribute("statusList", list);
		}
		
		return forward;
	}
}