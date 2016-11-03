package grade.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import sugang.model.SugangDTO;

public class GradeDAO {		// 성적조회(s,p), 성적수정(p), select_box 데이터 처리(p)
	SqlMapClient smc;
	
	public GradeDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	public List<String> find_subs(GradeDTO dto){
		dto.setStatus("처리완료");
		List<String> list=null;
		try {
			list = smc.queryForList("grade.find_subs",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<GradeDTO> s_select(String id){	// 학생의 성적 조회
		List<GradeDTO> list=null;
		try {
			list = smc.queryForList("grade.my_grade",id);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}
	
	public List<GradeDTO> p_select(GradeDTO dto){		// 교수의 성적조회
		List<GradeDTO> list=null;
		try {
			list = smc.queryForList("grade.p_grade",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}
	public boolean p_update(List<GradeDTO> list){	// 교수의 성적입력 및 수정 (insert는 수강신청 완료시 실행됨)
		try {
			for(int i=0;i<list.size();i++){
				GradeDTO dto = list.get(i);
				if(smc.update("grade.update_grade", dto)==0){
					return false;
				}
			}
			return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}			
		return false;
	}
	public List<SugangDTO> timetale(SugangDTO input) {
		List<SugangDTO> list = null;
		try {
			list = smc.queryForList("grade.s_timetable",input);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
