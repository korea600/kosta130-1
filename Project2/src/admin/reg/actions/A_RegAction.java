package admin.reg.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import admin.reg.model.RegDAO;
import admin.reg.model.RegDTO;

public class A_RegAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 신청내용 확인 action="viewForm"
		// 신청내용 처리 action="execution"
		
		RegDAO dao = new RegDAO();
		
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("list");
		if(action.equals("viewForm")) {
			int id = Integer.parseInt(request.getParameter("id"));
			RegDTO reg = dao.select(id);
			reg.setId(id);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("a_list_form");
		} else if(action.equals("execution")) {
			
		}
		return super.execute(mapping, form, request, response);
	}
}
