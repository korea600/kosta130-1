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

	public List<RegDTO> listSelect(String st) { // 리스트 출력
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.adminReg", st);
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

	public boolean update(RegDTO dto) {
		try {
			System.out.println(dto.getChecked());
			int r = smc.update("reg.reg_update", dto);
			int m = smc.update("reg.mem_update", dto);
			if (r == 1 && m == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(RegDTO dto) {
		try {
			System.out.println(dto.getChecked());
			int r = smc.update("reg.reg_update", dto);
			if (r == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
