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
	
	public RegDTO select(RegDTO dto) {// 수정폼 내용 출력
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.adminRegForm", dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select
	
	public RegDTO insert(RegDTO dto) {// 입력폼 내용 출력
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.stdInForm", dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select
}
