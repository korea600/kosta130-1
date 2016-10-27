package grade.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import grade.model.GradeDAO;
import grade.model.GradeDTO;
import member.model.LoginDTO;

public class ProfessorGradeAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		GradeDAO dao = new GradeDAO();
		ActionForward forward=null;
		if(action==null || action.equals("select")){		// 과목 조회
			LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
			String professor=login.getName();
			String checked=request.getParameter("checked");
			int year=Integer.parseInt(request.getParameter("year"));
			int semester=Integer.parseInt(request.getParameter("semester"));
			String sub=request.getParameter("sub");
			List<GradeDTO> list = dao.p_select(new GradeDTO(null, null, null, checked, semester, year, 0, sub, professor, null,0));
			request.getSession().setAttribute("list",list);
			forward=mapping.findForward("list");
		}
		else if(action.equals("find_sub")){			// 과목명 조회 (ajax를 이용한 중간 조회용)
			LoginDTO login=(LoginDTO)request.getSession().getAttribute("LoginDTO");
			String professor=login.getName();
			GradeDTO dto = new GradeDTO(request.getParameter("id"), professor, null, request.getParameter("checked"), 0,
					Integer.parseInt(request.getParameter("year")), 0, null, null, null,0);
			List<String> sub_list= dao.find_subs(dto);
			request.setAttribute("sub_list", sub_list);
			forward=mapping.findForward("find_sub");
		}
		else if (action.equals("update")){			// 성적 입력
			List<GradeDTO> grades = (List<GradeDTO>) request.getSession().getAttribute("list");
			for(int i=0;i<grades.size();i++){
				GradeDTO dto = grades.get(i);
				dto.setGrade(request.getParameter("grade"+i));
			}
			if(dao.p_update(grades))
				request.setAttribute("update_result", "success");
			else
				request.setAttribute("update_result", "fail");
			forward=mapping.findForward("update_result");
			request.getSession().removeAttribute("list");
		}
		return forward;
	}
}
