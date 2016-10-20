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
		String job="";
		switch (request.getParameter("job")) {
			case "�л�"		:	job="S";break;
			case "����"		:	job="P";break;
			case "������"		:	job="A";break;
		}
		LoginDTO dto = new LoginDTO(id,pass,null,job);
		LoginDTO checked_dto = dao.login(dto);
		System.out.println(checked_dto.getId()+checked_dto.getName()+checked_dto.getJob());
		// id�� �ش��ϴ� ����� �´��� Ȯ��
		if(checked_dto!=null){		// id,��� Ȯ�� ���		
			checked_dto.setPass("");	// ���ǿ� ����� DTO���� password �����
			request.getSession().setAttribute("LoginDTO", checked_dto);// ��������� ���� ���� Ȯ�� �Ϸ�
			request.setAttribute("login_result", 1);
		}
		else{		// id,��� Ȯ�� ����
			request.setAttribute("login_result", 0);
		}
		return mapping.findForward("result");
	}
}
