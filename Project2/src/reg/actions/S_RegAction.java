package reg.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import member.model.MemberDTO;
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
		String req = request.getParameter("request");
		String rsn = request.getParameter("reason");
		ActionForward forward = null;

		if (action.equals("viewForm")) {
			String id = request.getParameter("id");
			RegDTO reg = new RegDTO(id, null, null, null, "처리중", null, null, null);
			reg = dao.select(reg);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("viewForm");
		} else if (action.equals("newForm")) {
			LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
			String memId = login.getId();
			request.setCharacterEncoding("UTF-8");
			MemberDTO member = dao.insert_Select(memId);
			request.setAttribute("member", member);
		} else if (action.equals("regUpdate")) {
			String id = request.getParameter("id");
			RegDTO reg = new RegDTO(id, req, rsn, null, "처리중", null, null, null);
			reg = dao.insert(reg);
			request.setAttribute("reg", reg);
			forward = mapping.findForward("s_to_list");
		}

		return forward;
	}
}
