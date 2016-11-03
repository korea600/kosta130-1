package reg.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import reg.model.RegDTO;
import reg.model.S_RegDAO;

public class S_RegUpdateAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		S_RegDAO dao = new S_RegDAO();
		ActionForward forward=null;
		String action=request.getParameter("action");
		String id = ((LoginDTO) request.getSession().getAttribute("LoginDTO")).getId();
		if(action.equals("check")){		// �������� ��û ���ɿ��� ��ȸ (�ش��л����� ó��������� ���� ������ ���� ��� �Ұ�)
			RegDTO dto = new RegDTO();
			dto.setId(id);
			dto.setChecked("ó����");
			if(dao.s_check(dto))
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("view")){		// �������� ��û���� ������ ���� �� ���
			RegDTO dto = new RegDTO(id, null, null, null, "ó����", null, null, null);
			dto = dao.select(dto);
			request.setAttribute("regdto", dto);
			forward=mapping.findForward("view");
		}
		else if(action.equals("update")){		// �������� ��û���� ����
			String req = request.getParameter("request");
			String reason = request.getParameter("reason");
			RegDTO dto = new RegDTO(id,req,reason,null,"ó����",null,null,null);
			if(dao.s_regupdate(dto))
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("delete")){		// �������� ��û���� ����
			RegDTO dto = new RegDTO(id,null,null,null,"ó����",null,null,null);
			if(dao.s_regdelete(dto))
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		return forward;
	}
}
