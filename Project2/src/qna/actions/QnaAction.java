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
		ActionForward forward = null;
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String id = login.getId();
		String job = login.getJob();
		
		if(action.equals("insert")){		// 학생의 건의사항 등록
			QnaDTO dto = new QnaDTO(0,request.getParameter("title"),request.getParameter("content"),
									login.getName(),null,"처리중",id);
			if(dao.insert(dto))	//DB입력 성공
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("upform")){		// 건의사항 등록 내용 수정하기 위한 수정폼 출력
			int no = Integer.parseInt(request.getParameter("no"));
			QnaDTO dto =new QnaDTO();
			if(job.equals("A"))		// 교직원
				dto = dao.select(no);
			else					// 그외 (학생)
				dto = dao.sFormselect(no);
			request.setAttribute("upform", dto);
			forward = mapping.findForward("success");
		}
		else if(action.equals("edit")){	// 학생 개인이 등록했던 건의사항 수정
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),request.getParameter("title"),
												request.getParameter("content"),null,null,"처리완료",null);
			if(dao.edit(dto))	// DB수정 성공
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("update")){		// 교직원의 건의사항 처리
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),null,
									request.getParameter("content"),null,
									null,"처리완료",null);
			if(dao.update(dto))	// DB입력 성공
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("delete")){
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),null,null,null,
											null,request.getParameter("status"),null);
			if(dao.delete(dto))	// DB삭제 성공
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		
		return forward;
	}
}
