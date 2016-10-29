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

public class SubjectInsertAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SubjectDAO dao = new SubjectDAO();
		ServletContext application =request.getServletContext();
		
		// ���� ���ε� (EUC-KR)
		String uploadDirectory = application.getRealPath("subject_plan");
		request.setCharacterEncoding("EUC-KR");
		MultipartRequest mr = new MultipartRequest(request, uploadDirectory,2*1024*1024,"EUC-KR",new DefaultFileRenamePolicy());
		String filename = mr.getFilesystemName("plan");					// ���ε� ���ϸ� ���ϱ�
		String fileext = filename.substring(filename.lastIndexOf("."));	// ���ϸ��� Ȯ���� ���ϱ�
				
		// �� �� �Ķ���� ó�� (UTF-8)
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
		
		// ���糯¥�� �����ϵ� �ñ� �����ϱ�
		Calendar cal = new GregorianCalendar();
		int year = cal.get(Calendar.YEAR);
		int semester;
		if(cal.get(Calendar.MONTH)<7)	semester=2;	// 1~6���� �ش翬�� 2�б� ������ ����ϰԲ� �ϰ�
		else{										// 7~12���� ���� ���� 1�б� ������ ����ϰ���
			semester=1;
			year++;
		}
		SubjectDTO subject = new SubjectDTO(id, name, division, year, semester, 0, sub, credit, times, room, cnt, "ó����");
		int newCode =dao.p_insert(subject);		// �Է� ������ ���� ������ code���� ���� ���� 
		if(newCode>0){ 							// �� code�� �̿��Ͽ� ���ϸ� ����
			File uploadedFile = mr.getFile("plan");
			if(uploadedFile!=null){		// ���ϸ� ���� (ex. code�� 5�̸� plan5.xxx)
				uploadedFile.renameTo(new File(uploadDirectory+"\\plan"+(newCode)+fileext));
			}
			return mapping.findForward("success");
		}
		else return null;
	}

}
