package admin.reg.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class RegDAO {
	SqlMapClient smc;

	public RegDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public List<RegDTO> list() { // 리스트 출력
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.adminReg");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public RegDTO select(int id) {// 수정폼 내용 출력
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.adminRegForm", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select

	public boolean select(RegDTO dto) {

		return false;
	}

	public boolean update(RegDTO dto) {
		return false;
	}

	public RegDTO upform(int no) {
		return null;
	}

	public boolean delete(int no) {
		return false;
	}
}
