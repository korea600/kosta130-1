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
		
		if(action.equals("insert")){		// �л��� ���ǻ��� ���
			QnaDTO dto = new QnaDTO(0,request.getParameter("title"),request.getParameter("content"),
									login.getName(),null,"ó����",id);
			if(dao.insert(dto))	//DB�Է� ����
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("upform")){		// ���ǻ��� ��� ���� �����ϱ� ���� ������ ���
			int no = Integer.parseInt(request.getParameter("no"));
			QnaDTO dto =new QnaDTO();
			if(job.equals("A"))		// ������
				dto = dao.select(no);
			else					// �׿� (�л�)
				dto = dao.sFormselect(no);
			request.setAttribute("upform", dto);
			forward = mapping.findForward("success");
		}
		else if(action.equals("edit")){	// �л� ������ ����ߴ� ���ǻ��� ����
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),request.getParameter("title"),
												request.getParameter("content"),null,null,"ó���Ϸ�",null);
			if(dao.edit(dto))	// DB���� ����
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("update")){		// �������� ���ǻ��� ó��
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),null,
									request.getParameter("content"),null,
									null,"ó���Ϸ�",null);
			if(dao.update(dto))	// DB�Է� ����
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("delete")){
			QnaDTO dto = new QnaDTO(Integer.parseInt(request.getParameter("no")),null,null,null,
											null,request.getParameter("status"),null);
			if(dao.delete(dto))	// DB���� ����
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		
		return forward;
	}
}
