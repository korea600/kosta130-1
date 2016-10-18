package iBatis;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapConfig {		// sqlMapConfig.xml(SQL���� ������ xml����) ������ ��üȭ �����ִ� Ŭ����
	
	private static final SqlMapClient sqlMap;	// SqlMapClient : XML�� �ۼ��� sql���� ȣ���ϴ� Ŭ���� (interface)
	
	static{
		try {
			String resource = "./iBatis/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		}
		catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("SqlMap �ʱ�ȭ�� ���� : "+e);
		}
	}
	
	public static SqlMapClient getSqlMapInstance(){
		return sqlMap;
	}
}
