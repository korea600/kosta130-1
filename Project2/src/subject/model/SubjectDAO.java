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
	

	public List<String> selectMajor(String division){
		   List<String> list = null;
		   try {
			   list=smc.queryForList("subject.view_select",division);
		   } catch (SQLException e) {
			   e.printStackTrace();
		   }  
		   return list;
	   }//selectGugun
}
