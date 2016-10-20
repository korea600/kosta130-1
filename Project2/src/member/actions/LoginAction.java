package member.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDAO;
import member.model.LoginDTO;

public class LoginAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoginDAO dao = new LoginDAO();
		request.setCharacterEncoding("UTF-8");
		// �Էµ� �Ķ���� ������ (id,���)
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String job=request.getParameter("job");
		
		// �Էµ� job �Ķ���͸� DB�� �ڵ� �����ͷ� ����
		switch (job) {
			case "student"	:	job="S";break;
			case "professor":	job="P";break;
			case "admin"	:	job="A";break;
		}
		
		// id,���,���� ��ġ ���� Ȯ�� (��ġ�� dto������, ����ġ�� null)
		LoginDTO dto = new LoginDTO(id,pass,null,job);
		LoginDTO checked_dto = dao.login(dto);
		
		// ������ ��ġ�Ͽ� dto�� ������ dto ������ ���ǿ� ����
		if(checked_dto!=null){		// id,��� Ȯ�� ���		
			checked_dto.setPass("");	// ���ǿ� ����� DTO���� password �����
			request.getSession().setAttribute("LoginDTO", checked_dto);
			request.setAttribute("login_result", "true");	// �α��� ���� �޽��� ajax������ ���
		}
		else{
			request.setAttribute("login_result", "false");	// �α��� ���� �޽��� ajax������ ���
		}
		return mapping.findForward("result");
	}
}
