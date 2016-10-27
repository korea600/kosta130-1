package student.reg.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import admin.reg.model.RegDAO;
import admin.reg.model.RegDTO;

public class S_ListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		RegDAO dao = new RegDAO();
		List<RegDTO> list = dao.listSelect(id);
		request.setAttribute("list", list);
		return mapping.findForward("s_list");
	} // ����Ʈ
}
