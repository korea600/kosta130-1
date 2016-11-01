package member.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;

public class LogCheckAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoginDTO dto = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		ActionForward forward = null;
		if(dto==null){		// �α��� ������ ������� �α��� �������� �̵�
			forward=mapping.findForward("login");
		}
		else{				// �̹� �α����� ���¸� ����ں� ������������ �̵�
			forward=mapping.findForward("main");
		}
		return forward;
	}

}
