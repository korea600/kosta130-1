package student.reg.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import member.model.MemberDTO;

public class RegDAO {
	SqlMapClient smc;

	public RegDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public List<RegDTO> listSelect(String st) { // ����Ʈ ���
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.stdReg", st);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
// �Ʒ� ���� ����
	public RegDTO select(RegDTO dto) {// ������ ���� ���
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.stdRegForm", dto);
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
