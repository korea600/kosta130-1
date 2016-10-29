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
		ActionForward forward = null;
		SubjectDAO dao = new SubjectDAO();
		HttpSession session = request.getSession();
		LoginDTO login = (LoginDTO) session.getAttribute("LoginDTO");
		String code = request.getParameter("code");
		if(code==null){		// ��ü ���񸮽�Ʈ ��ȸ	 (ù������, �Է�/����/���� �� ������)
			List<SubjectDTO> list=null;
			SubjectDTO subjectDTO = new SubjectDTO(login.getId(), login.getName(), null, 0, 0, 0, null, 0, null, null,0, null);
			list = dao.p_selectAll(subjectDTO);
			request.setAttribute("subject_list", list);
			forward = mapping.findForward("list");
		}
		else{				// Ư������ ��ȸ (����/������)
			SubjectDTO subjectDTO = dao.p_select(Integer.parseInt(code));
			String times = subjectDTO.getTimes();
			request.setAttribute("day", times.split("/")[0]);
			request.setAttribute("start", times.split("/")[1].split("-")[0]);
			request.setAttribute("end", times.split("/")[1].split("-")[1]);
			request.setAttribute("dto", subjectDTO);
			forward = mapping.findForward("edit");
		}
		return forward;
	}

}
