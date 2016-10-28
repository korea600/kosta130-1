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
	public List<SubjectDTO> p_selectAll(SubjectDTO dto){		// ������ ���� ��ȸ
		   List<SubjectDTO> list = null;
		   try {
			   list=smc.queryForList("subject.selectAll",dto);
		   } catch (SQLException e) {
			   e.printStackTrace();
		   }  
		   return list;
	}
	public boolean p_insert(SubjectDTO dto){		// ������ ������ (��û)
		try {
			smc.insert("subject.insert", dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
