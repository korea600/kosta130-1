package reg.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import member.model.MemberDTO;

public class S_RegDAO {
	SqlMapClient smc;

	public S_RegDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public List<RegDTO> s_select(String id) { // 학생 학적 조회
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.stdReg", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
