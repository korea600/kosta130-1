package sugang.actions;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import qna.model.QnaDAO;
import sugang.model.SugangDAO;
import sugang.model.SugangDTO;

public class SugangAction extends Action{
		@Override
		public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			SugangDAO dao = new SugangDAO();
			String action = request.getParameter("action");
			ActionForward forward = mapping.findForward("success");
			LoginDTO login = (LoginDTO) request.getSession().getAttribute("LoginDTO");
			String id = login.getId();
			int season = 0;
			
			if(action==null){
				Calendar c = Calendar.getInstance();
				String smo = new String();
				smo= String.valueOf(c.get(Calendar.MONTH) );
				
				if(smo.equals("2")||smo.equals("3")){
					season=1;
				}else if(smo.equals("8")||smo.equals("9")){
					season=2;
				}
				
				SugangDTO dto = new SugangDTO(
					//id,code,bet,year,term,grade,dept,semester,status,total,t_credit,starts,ends,major,division,sub,credit,professor,times,room,cnt,checked
											id,0,0,
											0,
											season,
											null,
											null,0,null,0,0,null,null,null,null,null,0,null,null,null,0,null);
				request.setAttribute("selectList", dao.completeSelect(dto));
				
				

			}else if(action.equals("division")){
				String division = request.getParameter("division");
				List<String> list = dao.selectDivision(division);
				request.setAttribute("divisionList", list);
				forward = mapping.findForward("divisionList");
			}
			
		return forward;
	}
}
