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
		// 입력된 파라미터 얻어오기 (id,비번)
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String job="";
		switch (request.getParameter("job")) {
			case "학생"		:	job="S";break;
			case "교수"		:	job="P";break;
			case "교직원"		:	job="A";break;
		}
		LoginDTO dto = new LoginDTO(id,pass,null,job);
		LoginDTO checked_dto = dao.login(dto);
		System.out.println(checked_dto.getId()+checked_dto.getName()+checked_dto.getJob());
		// id에 해당하는 비번이 맞는지 확인
		if(checked_dto!=null){		// id,비번 확인 통과		
			checked_dto.setPass("");	// 세션에 저장될 DTO값중 password 지우기
			request.getSession().setAttribute("LoginDTO", checked_dto);// 여기까지는 오류 없음 확인 완료
			request.setAttribute("login_result", 1);
		}
		else{		// id,비번 확인 실패
			request.setAttribute("login_result", 0);
		}
		return mapping.findForward("result");
	}
}
