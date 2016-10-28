package subject.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import subject.model.SubjectDAO;

public class SubjectComboAction extends Action {

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String division = request.getParameter("major/culture");
		System.out.println("action");
		System.out.println(division);
		SubjectDAO dao = new SubjectDAO();
		List<String> list = dao.selectMajor(division);
		request.setAttribute("list", list);
		
		
		return mapping.findForward("success");
	}
}
