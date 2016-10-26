package qna.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import qna.model.QnaDAO;
import qna.model.QnaDTO;



public class QnaAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		QnaDAO dao = new QnaDAO();
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String id = login.getId();
		if(action.equals("insert")){
			
			QnaDTO dto = new QnaDTO( 
					0,
					request.getParameter("title"),
					request.getParameter("content"),
					login.getName(),
					null,
					"처리중",
					id);
			if(dao.insert(dto)){//DB입력 성공
				request.setAttribute("list",dao.selectAll(login.getId()));
			}
		}
		
		return forward;
	}
}
