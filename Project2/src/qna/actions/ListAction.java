package qna.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import qna.model.QnaDAO;

public class ListAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String id = login.getId();
		if(action.equals("list")){
			QnaDAO dao = new QnaDAO();
			request.setAttribute("list", dao.selectAll(id));
		}else if(action.equals("AdminQna")){//status가 "처리중"인 리스트만 출력
			QnaDAO dao = new QnaDAO();
			request.setAttribute("AdminQna", dao.AdminQna("처리중"));
		}
		
		return forward;
	}
}