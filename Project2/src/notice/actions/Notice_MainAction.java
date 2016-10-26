package notice.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import member.model.LoginDTO;
import notice.model.NoticeDAO;
import notice.model.NoticeDTO;

public class Notice_MainAction extends Action{

	String checked="�л�";
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");

		NoticeDAO dao = new NoticeDAO();

		if(checked.equals("�л�")){
		List<NoticeDTO> list_h =dao.select("�л�");
		request.setAttribute("list_h", list_h);
		}else if(checked.equals("���")){
		List<NoticeDTO> list_j = dao.select("���");
		request.setAttribute("list_j", list_j);
		}
		
		
		return mapping.findForward("notice_main");
	}
}
