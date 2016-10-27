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
import schedule.model.ScheduleDTO;



public class QnaAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		QnaDAO dao = new QnaDAO();
		String action = request.getParameter("action");
		ActionForward forward = mapping.findForward("success");
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String id = login.getId();
		String job = login.getJob();
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
		}else if(action.equals("upform")){
				int no = Integer.parseInt(request.getParameter("no"));
				QnaDTO dto =new QnaDTO();
				if(job.equals("A")){
					dto = dao.select(no);
				}else{
					dto = dao.sFormselect(no);
				}
				request.setAttribute("upform", dto);
		}else if(action.equals("update")){
			QnaDTO dto = new QnaDTO(
					Integer.parseInt(request.getParameter("no")),
					null,
					request.getParameter("content"),
					null,null,"처리완료",null);
				if(dao.update(dto)){//DB입력 성공
					request.setAttribute("AdminQna",dao.AdminQna("처리중"));
				}
		}else if(action.equals("delete")){
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),
									request.getParameter("title"),
									request.getParameter("content"),
									login.getName(),
									null,
									request.getParameter("status"),
									id);
			if(dao.delete(dto)==true){
				request.setAttribute("list", dao.selectAll(id));
			}
		}
		
		return forward;
	}
}
