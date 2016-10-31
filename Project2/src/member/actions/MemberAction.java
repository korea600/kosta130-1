package member.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.tomcat.util.collections.SynchronizedStack;

import member.model.LoginDAO;
import member.model.LoginDTO;
import member.model.MemberDTO;

public class MemberAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action=request.getParameter("action");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String addr=request.getParameter("addr");
		ActionForward forward=mapping.findForward("ok");
		LoginDAO dao = new LoginDAO();
		String id = null;
		LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		id = login.getId();
		if(action.equals("select")){
		request.setCharacterEncoding("UTF-8");
		MemberDTO member = dao.edit_Select(id);
		request.setAttribute("member", member);
		} else if(action.equals("update")){
			MemberDTO edit = new MemberDTO(id,null,null,email,tel,addr,0,null,null,null,0,0);
			boolean ch = dao.edit_update(edit);
			if(ch){
			request.setAttribute("mem_result", "ok");
			}else{
			request.setAttribute("mem_result", "no");
			}
		
		} else if(action.equals("member")){
			List<MemberDTO> list = dao.subselect();
			request.setAttribute("list", list);
			forward = mapping.findForward("member_ok");
		} else if(action.equals("scr_select")){
			String dept = request.getParameter("dept");
			int sem = Integer.valueOf(request.getParameter("sem"));
			
			MemberDTO dto = new MemberDTO(null,dept,null,null,null,null,sem,null,null,null,0,0);
			List<MemberDTO> list = dao.selectAll(dto);
			request.setAttribute("left_list", list);
			forward = mapping.findForward("left_member_ok");
		}
		
		return forward;
	}
}
