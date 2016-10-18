package iBatis;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapConfig {		// sqlMapConfig.xml(SQL문을 포함한 xml파일) 문서를 객체화 시켜주는 클래스
	
	private static final SqlMapClient sqlMap;	// SqlMapClient : XML에 작성한 sql문을 호출하는 클래스 (interface)
	
	static{
		try {
			String resource = "./iBatis/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		}
		catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("SqlMap 초기화중 에러 : "+e);
		}
	}
	
	public static SqlMapClient getSqlMapInstance(){
		return sqlMap;
	}
}
