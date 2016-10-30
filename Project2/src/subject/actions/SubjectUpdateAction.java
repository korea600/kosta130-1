package subject.actions;

import java.io.File;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.model.LoginDTO;
import subject.model.SubjectDAO;
import subject.model.SubjectDTO;

public class SubjectUpdateAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SubjectDAO dao = new SubjectDAO();
		
		// ���� ���ε� (EUC-KR)
		ServletContext application =request.getServletContext();
		String uploadDirectory = application.getRealPath("subject_plan");
		MultipartRequest mr = new MultipartRequest(request, uploadDirectory,2*1024*1024,"EUC-KR",new DefaultFileRenamePolicy());
						
		// �Ϲ� �Ķ���� ó�� (UTF-8)
		request.setCharacterEncoding("UTF-8");
		String sub = mr.getParameter("sub");
		String division = mr.getParameter("division");
		int credit = Integer.parseInt(mr.getParameter("credit"));
		LoginDTO login =(LoginDTO) request.getSession().getAttribute("LoginDTO");
		String id=login.getId();
		String name = login.getName();
		String times = mr.getParameter("day")+"/"+mr.getParameter("start")+"-"+mr.getParameter("end");
		String room = mr.getParameter("room");
		int cnt = Integer.parseInt(mr.getParameter("cnt"));
		int code=Integer.parseInt(mr.getParameter("code"));
		
		// ���糯¥�� �����ϵ� �ñ� �����ϱ�
		Calendar cal = new GregorianCalendar();
		int year = cal.get(Calendar.YEAR);
		int semester;
		if(cal.get(Calendar.MONTH)<7)	semester=2;	// 1~6���� �ش翬�� 2�б� ������ ����ϰԲ� �ϰ�
		else{										// 7~12���� ���� ���� 1�б� ������ ����ϰ���
			semester=1;
			year++;
		}
		SubjectDTO subject = new SubjectDTO(id, name, division, year, semester, code, sub, credit, times, room, cnt, "ó����");
		dao.p_update(subject);
		
		// ���� �Ķ���� ó��
		request.setCharacterEncoding("EUC-KR");
		File uploadedFile = mr.getFile("plan");
		if(uploadedFile!=null){
			String fileext = ".doc";	// Ȯ���� ����
			// ���� ������ ������ ����
			File oldFile = new File(uploadDirectory+"\\plan"+code+fileext);	
			if(oldFile!=null) oldFile.delete();
			// ���� code�� �̿��Ͽ� ���ϸ� ���� (ex. �����ڵ尡 5�̸� plan5.doc)
			uploadedFile.renameTo(new File(uploadDirectory+"\\plan"+code+fileext));

		}
		return mapping.findForward("success");
	}

}
