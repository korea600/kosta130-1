package reg.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import reg.model.S_RegDAO;
import reg.model.RegDTO;

public class S_ListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		HttpSession session = request.getSession();
		LoginDTO DTO = (LoginDTO) session.getAttribute("LoginDTO");
		S_RegDAO dao = new S_RegDAO();
		List<RegDTO> list = dao.s_select(DTO.getId());
		request.setAttribute("list", list);
		return mapping.findForward("s_list");
	} // ¸®½ºÆ®
}
