package sugang.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class SugangDAO {
	SqlMapClient sqlMap;
	
	public SugangDAO() {
		sqlMap = SqlMapConfig.getSqlMapInstance();
	}
	public List<String> selectDivision(String division){
		List<String> list = null;
		try {
			list = sqlMap.queryForList("sugang.major",division);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}//selectDivision
}