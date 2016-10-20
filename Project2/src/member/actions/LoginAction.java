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
		String job=request.getParameter("job");
		
		// 입력된 job 파라미터를 DB용 코드 데이터로 변경
		switch (job) {
			case "student"	:	job="S";break;
			case "professor":	job="P";break;
			case "admin"	:	job="A";break;
		}
		
		// id,비번,구분 일치 여부 확인 (일치시 dto얻어오기, 불일치시 null)
		LoginDTO dto = new LoginDTO(id,pass,null,job);
		LoginDTO checked_dto = dao.login(dto);
		
		// 정보가 일치하여 dto를 얻어오면 dto 정보를 세션에 저장
		if(checked_dto!=null){		// id,비번 확인 통과		
			checked_dto.setPass("");	// 세션에 저장될 DTO값중 password 지우기
			request.getSession().setAttribute("LoginDTO", checked_dto);
			request.setAttribute("login_result", "true");	// 로그인 성공 메시지 ajax용으로 출력
		}
		else{
			request.setAttribute("login_result", "false");	// 로그인 실패 메시지 ajax용으로 출력
		}
		return mapping.findForward("result");
	}
}
