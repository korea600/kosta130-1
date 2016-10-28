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
		// 신청내용 확인 action="viewForm"
		// 신청내용 처리 action="execution"

		S_RegDAO dao = new S_RegDAO();

		String action = request.getParameter("action");
		ActionForward forward = null;

		return forward;
	}
}
