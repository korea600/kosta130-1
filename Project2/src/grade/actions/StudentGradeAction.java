package grade.actions;

import java.util.ArrayList;
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

public class StudentGradeAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoginDTO loged_DTO = (LoginDTO)request.getSession().getAttribute("LoginDTO");
		GradeDAO dao = new GradeDAO();
		List<GradeDTO> mygrades = dao.s_select(loged_DTO.getId());
		List<Double> averages = getAverage(mygrades);
		request.setAttribute("mygrade", mygrades);
		request.setAttribute("averages", averages);
		return mapping.findForward("show");
	}
	
	public List<Double> getAverage(List<GradeDTO> list){	// 개인의 학점들을 학기별 평균으로 변환
		List<Double> averages = new ArrayList<>();
		for(int i=0;i<list.size();i++){
			double total_point=grade_convert(list.get(i).getGrade());
			int cnt=1;
			String season=""+list.get(i).getYear()+"-"+list.get(i).getSemester();
			for(int j=i+1;j<list.size();j++){
				if(season.equals(list.get(j).getYear()+"-"+list.get(j).getSemester())){
					i++;cnt++;
					total_point+=grade_convert(list.get(j).getGrade());
				}
			}
			averages.add(total_point/cnt);
		}
		return averages;
	}
	
	public double grade_convert(String grade){	// A학점 -> 4.0 으로 변환
		String grades[]={"F","","D","D+","C","C+","B","B+","A","A+"};
		int point=0;
		for(int i=0;i<grades.length;i++){
			if(grade.equals(grades[i])){
				point=i;
				break;
			}
		}
		return 0.5*point;
	}
}
