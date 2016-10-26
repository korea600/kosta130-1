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

public class NoticeAction extends Action {

	NoticeDAO dao;
	NoticeDTO dto;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		ActionForward forward = null;
		String action = request.getParameter("action");
		LoginDTO logdto = (LoginDTO) request.getSession().getAttribute("LoginDTO");
		String name = logdto.getName();
		String id = logdto.getId();

		if (action == null || action == "list") {
			System.out.println(action);
			dao = new NoticeDAO();
			String checked = request.getParameter("checked");
			request.setAttribute("checked", checked);
			if (checked == null)
			checked = "학사";
			List<NoticeDTO> list = dao.select(checked);
			request.setAttribute("list", list);
			forward = mapping.findForward("notice_first");
		} else if (action.equals("insert")) {
			System.out.println(action);
			dao = new NoticeDAO();
			

				NoticeDTO dto = new NoticeDTO(0, 
											id, 
											name, 
											request.getParameter("title"),
											request.getParameter("content"), 
											null, 
											request.getParameter("checked"));

				if (dao.insert(dto)) {
					forward = mapping.findForward("notice_successinsert");
				}
			
		} else if (action.equals("update")) {
			System.out.println(action);
			
				dao = new NoticeDAO();
				int no = Integer.parseInt(request.getParameter("no"));
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				System.out.println("no :" + no);
				System.out.println("title :" + title);
				System.out.println("content :" + content);
				dto = new NoticeDTO(no, id, name, title, content, null, null);
				List<NoticeDTO> list = dao.select("학사");
				request.setAttribute("list", list);
				if (dao.update(dto)) {

					forward = mapping.findForward("update_success");
				}
			

		} else if (action.equals("delete")) {
			System.out.println(action);
			
				dao = new NoticeDAO();
				int no = Integer.parseInt(request.getParameter("no"));
				if(dao.delete(no)){

					forward = mapping.findForward("delete_success");
				}
		

		} else if (action.equals("viewupdate")) {
			System.out.println(action);
			dao = new NoticeDAO();
			int no = Integer.parseInt(request.getParameter("no"));
			NoticeDTO dto = new NoticeDTO(no, id, name, null, null, null, null);
			System.out.println("viewupdate_no" + no);
			NoticeDTO dtot = dao.upform(dto);
			// System.out.println(id);
			// System.out.println(dtot.getContent());
			request.setAttribute("dto", dtot);
			forward = mapping.findForward("upform_check");
		}

		return forward;
	}
}
