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

	public List<SubjectDTO> p_selectAll(SubjectDTO dto){		// 교수의 과목 조회
		   List<SubjectDTO> list = null;
		   try {
			   list=smc.queryForList("subject.selectAll",dto);
		   } catch (SQLException e) {
			   e.printStackTrace();
		   }  
		   return list;
	}
}
