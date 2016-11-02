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
		String result="false";
		// ���� ���ε� (EUC-KR)
		ServletContext application =request.getServletContext();
		String uploadDirectory = application.getRealPath("subject_plan");
		File dir = new File(uploadDirectory);
		if(!dir.isDirectory()){ // ������ ������ ����
			dir.mkdir();
		}
		MultipartRequest mr = new MultipartRequest(request, uploadDirectory,2*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
						
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
		
		// ���糯¥�� �����ϵ� �ñ� �����ϱ�
		Calendar cal = new GregorianCalendar();
		int year = cal.get(Calendar.YEAR);
		int semester;
		if(cal.get(Calendar.MONTH)<7)	semester=2;	// 1~6���� �ش翬�� 2�б� ������ ����ϰԲ� �ϰ�
		else{										// 7~12���� ���� ���� 1�б� ������ ����ϰ���
			semester=1;
			year++;
		}
		SubjectDTO subject = new SubjectDTO(id, name, division, year, semester, 0, sub, credit, times, room, cnt, "ó����",null);
		int newCode =dao.p_insert(subject);		// �Է� ������ ���� ������ code���� ���� ���� 
		
		// ���� �Ķ���� ó��
		request.setCharacterEncoding("EUC-KR");
		File uploadedFile = mr.getFile("plan");
		if(uploadedFile!=null){
			String fileext = ".doc";	// Ȯ���� ����
			// �� code�� �̿��Ͽ� ���ϸ� ���� (ex. code�� 5�̸� plan5.xxx)
			if(newCode>0) 				
				uploadedFile.renameTo(new File(uploadDirectory+"\\plan"+(newCode)+fileext));

			result="true";
		}
		response.getWriter().write(result);
		return null;
	}

}
