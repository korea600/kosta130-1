package sugang.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sugang.model.SugangDAO;

public class SugangAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String division = request.getParameter("division");
		SugangDAO dao = new SugangDAO();
		List<String> list = dao.selectDivision(division);
		request.setAttribute("list", list);	
		
		return mapping.findForward("success");
	}
}
