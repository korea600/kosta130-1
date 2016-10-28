package reg.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import reg.model.S_RegDAO;
import reg.model.RegDTO;

public class S_RegAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// ��û���� Ȯ�� action="viewForm"
		// ��û���� ó�� action="execution"

		S_RegDAO dao = new S_RegDAO();

		String action = request.getParameter("action");
		ActionForward forward = null;
		
		if (action.equals("viewForm")) {
			String id = request.getParameter("id");
			RegDTO reg = new RegDTO(id, null, null, null, "ó����", null, null, null);
			reg = dao.select(reg);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("viewForm");
		} else if (action.equals("newForm")) {
			String id = request.getParameter("id");
			RegDTO reg = new RegDTO(id, null, null, null, null, null, null, null);
			reg = dao.insert(reg);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("viewForm");
		}
		
		return forward;
	}
}
