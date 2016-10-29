package reg.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import reg.model.A_RegDAO;
import reg.model.RegDTO;

public class A_RegAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 신청내용 확인 action="viewForm"
		// 신청내용 처리 action="execution"

		A_RegDAO dao = new A_RegDAO();

		String action = request.getParameter("action");
		ActionForward forward = null;

		if (action.equals("viewForm")) {
			String id = request.getParameter("id");
			RegDTO reg = new RegDTO(id, null, null, null, "처리중", null, null, null);
			reg = dao.select(reg);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("viewForm");
		} else if (action.equals("update")) {
			System.out.println(request.getParameter("request"));
			RegDTO reg = new RegDTO(request.getParameter("id"), null, null, null, "승인", request.getParameter("request"),
					null, null);
			dao.update(reg);
			forward = mapping.findForward("a_to_list");
		} else if (action.equals("delete")) {
			RegDTO reg = new RegDTO(request.getParameter("id"), null, null, null, "거절", null, null, null);
			dao.delete(reg);
			forward = mapping.findForward("a_to_list");
		}
		return forward;
	}
}
