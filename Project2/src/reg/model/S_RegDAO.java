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
	public boolean s_check(RegDTO dto){	// �л��� �������� ��û ���ɿ��� ��ȸ (ó��������� �������� ���� ��� ����)
		try {
			int cnt = (int) smc.queryForObject("reg.check",dto);
			if(cnt==0) return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public List<RegDTO> s_select(String id) { // �л� ���� ��ȸ
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.stdReg", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public RegDTO select(RegDTO dto) {// ������ ���� ���
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.adminRegForm", dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select

	public MemberDTO insert_Select(String id) {
		MemberDTO member = null;
		try {
			member = (MemberDTO) smc.queryForObject("login.mem_select", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

	public RegDTO insert(RegDTO dto) {// �Է��� ���� ���
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.stdInForm", dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select
	
	public boolean s_reginsert(RegDTO dto){		// �������� ��û ���
		try {
			smc.insert("reg.s_reginsert",dto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean s_regupdate(RegDTO dto){		// �������� ��û���� ����
		try {
			smc.update("reg.s_regupdate",dto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean s_regdelete(RegDTO dto){		// �������� ��û���� ����
		try {
			int rows=smc.delete("reg.s_regdelete",dto);
			if(rows==1)return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
