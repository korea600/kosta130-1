package subject.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class SubjectDAO {

	SqlMapClient smc;
	
	public SubjectDAO() {
		smc = SqlMapConfig.getSqlMapInstance();	
	}
	public int getCurrentCode(){
		int code=0;
		try {
			code = (int) smc.queryForObject("subject.code_sequence");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return code;
	}
	public List<SubjectDTO> p_selectAll(SubjectDTO dto){		// 교수의 과목 조회 (전체)
		   List<SubjectDTO> list = null;
		   try {
			   list=smc.queryForList("subject.selectAll",dto);
		   }
		   catch (SQLException e) {
			   e.printStackTrace();
		   }  
		   return list;
	}
	public SubjectDTO p_select(int code){		// 교수의 과목 조회 (수정 목적으로 특정과목 선택)
		SubjectDTO subject = null;
		try {
			subject=(SubjectDTO) smc.queryForObject("subject.select",code);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}  
		return subject;
	}
	public String getMajor(String id){
		String major=null;
		try {
			major = (String) smc.queryForObject("subject.getMajor",id);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return major;
	}
	public int p_insert(SubjectDTO dto){		// 교수의 과목등록 (요청), 강의계획서 파일명 변경을 위해 입력되었을때 생성된 code값 리턴
		int code=0;
		try {
			smc.insert("subject.insert", dto);
			code=getCurrentCode();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return code;
	}
}
