package common.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import member.model.LoginDTO;

public class PasswordAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SqlMapClient smc = SqlMapConfig.getSqlMapInstance();
		String action=request.getParameter("action");
		String id = ((LoginDTO) request.getSession().getAttribute("LoginDTO")).getId();
		String input_pw = request.getParameter("password");
		if(action.equals("check")){
			LoginDTO dto = new LoginDTO(id,input_pw,null,null);
			int count=(int)smc.queryForObject("pass.pw_check", dto);
			if(count==1)
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		else if(action.equals("change")){
			LoginDTO dto = new LoginDTO(id,input_pw,null,null);
			int count=smc.update("pass.pw_change", dto);
			if(count==1)
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
		}
		return null;
	}
}
