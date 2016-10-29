package reg.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import reg.model.A_RegDAO;
import reg.model.RegDTO;

public class A_ListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		A_RegDAO dao = new A_RegDAO();
		List<RegDTO> list = dao.listSelect("처리중");
		request.setAttribute("list", list);
		return mapping.findForward("a_list");
	} // 리스트
}
