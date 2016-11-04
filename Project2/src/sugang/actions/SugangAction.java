package sugang.actions;

import java.sql.Date;
import java.text.DecimalFormat;
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
import schedule.model.ScheduleDAO;
import schedule.model.ScheduleDTO;
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
			int semester = 0;
			int level = 0;
			
			if(action==null){
				DecimalFormat decimalFormat = new DecimalFormat("00");
				Calendar c = Calendar.getInstance();
				String smo= String.valueOf(c.get(Calendar.MONTH) +1 );
				String sye= String.valueOf(c.get(Calendar.YEAR)%100);
				String sda= String.valueOf(c.get(Calendar.DATE));
				String sho= String.valueOf(c.get(Calendar.HOUR_OF_DAY));
				String smi= String.valueOf(c.get(Calendar.MINUTE));
				String date = sye+"/"+smo+"/"+0+sda+" "+sho+":"+smi+":"+0+0;
				if(smo.equals("2")||smo.equals("3")||smo.equals("4")||smo.equals("5")||smo.equals("6")||smo.equals("7")){
					season=1;
				}else if(smo.equals("8")||smo.equals("9")||smo.equals("10")||smo.equals("11")||smo.equals("12")||smo.equals("1")){
					season=2;
				}			
						
				//화면 우측 배팅팝업
				SugangDTO pdto = dao.pTagData(id);
				request.setAttribute("pTagData", pdto);
				
				
				
				//수강신청 완료 테이블  	
				SugangDTO cdto = new SugangDTO();////id,code,bet,year,term,grade,dept,semester,status,total,t_credit,starts,ends,major,division,sub,credit,professor,times,room,cnt,checked
				  cdto.setId(id);
				  cdto.setTerm(season);				  
				request.setAttribute("selectList", dao.completeSelect(cdto));
				
				//수강신청 목록 테이블
				List<SugangDTO> sdto = dao.sugangApply(id);
				request.setAttribute("sugangApply", sdto);
				
				
				ScheduleDAO sdao = new ScheduleDAO();
				ScheduleDTO scdto = sdao.sugangstart(date);
				if(scdto==null){
					forward = mapping.findForward("schnull");
				}else if(scdto.getEtc().equals("1학기수강신청(베팅)") || scdto.getEtc().equals("2학기수강신청(베팅)")){
					//수강신청 가능 테이블				
					SugangDTO dto = new SugangDTO();
					semester = dao.mainSelectList(id).getSemester();
					if(semester==1||semester==2){
						level=1;
					}else if(semester==3||semester==4){
						level=2;
					}else if(semester==5||semester==6){
						level=3;
					}else if(semester==7||semester==8){
						level=4;
					}
						dto.setS_grade(level);
						dto.setMajor(dao.mainSelectList(id).getDept());
						dto.setDivision("전공");
						dto.setId(id);
						dto.setSemester(season);
						dto.setChecked("처리완료");//과목등록 완료
						
					List<SugangDTO> mdto = dao.applySelect(dto);
					request.setAttribute("applySelect", mdto); 
					
				}else if(scdto.getEtc().equals("1학기수강신청(일반)") || scdto.getEtc().equals("2학기수강신청(일반)")){
					//수강신청 가능 테이블				
					SugangDTO dto = new SugangDTO();
					System.out.println("dao"+dao.mainSelectList(id).getSemester());
					semester = dao.mainSelectList(id).getSemester();
					if(semester==1||semester==2){
						level=1;
					}else if(semester==3||semester==4){
						level=2;
					}else if(semester==5||semester==6){
						level=3;
					}else if(semester==7||semester==8){
						level=4;
					}
						dto.setS_grade(level);
						dto.setMajor(dao.mainSelectList(id).getDept());
						dto.setDivision("전공");
						dto.setId(id);
						dto.setSemester(season);
						dto.setChecked("처리완료");//과목등록 완료
						System.out.println(dto.getS_grade());
						System.out.println(dto.getMajor());
						System.out.println(dto.getId());
						System.out.println(dto.getSemester());
						System.out.println(dto.getChecked());
					List<SugangDTO> mdto = dao.notBetSelect(dto);
					request.setAttribute("applySelect", mdto); 
					forward = mapping.findForward("notbetsugang");
				}
				
			}else if(action.equals("division")){
				String division = request.getParameter("division");
				List<String> list = dao.selectDivision(division);
				request.setAttribute("divisionList", list);
				forward = mapping.findForward("divisionList");
			}
			
		return forward;
	}
}
