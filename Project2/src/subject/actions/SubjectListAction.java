package subject.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import subject.model.SubjectDAO;
import subject.model.SubjectDTO;

public class SubjectListAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SubjectDAO dao = new SubjectDAO();
		HttpSession session = request.getSession();
		LoginDTO login = (LoginDTO) session.getAttribute("LoginDTO");
		List<SubjectDTO> list=null;
		if(login.getJob().equals("P")){
			SubjectDTO subjectDTO = new SubjectDTO(login.getId(), login.getName(), null, 0, 0, 0, null, 0, null, null,0, null);
			list = dao.p_selectAll(subjectDTO);
		}
		request.setAttribute("subject_list", list);
		return mapping.findForward("list");
	}

}
