package grade.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class GradeDAO {		// ������ȸ(s,p), ��������(p), select_box ������ ó��(p)
	SqlMapClient smc;
	
	public GradeDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	public List<String> find_subs(GradeDTO dto){
		List<String> list=null;
		try {
			list = smc.queryForList("grade.find_subs",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<GradeDTO> s_select(String id){	// �л��� ���� ��ȸ
		List<GradeDTO> list=null;
		try {
			list = smc.queryForList("grade.my_grade",id);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}
	
	public List<GradeDTO> p_select(GradeDTO dto){		// ������ ������ȸ
		List<GradeDTO> list=null;
		try {
			list = smc.queryForList("grade.p_grade",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}
	public boolean p_update(List<GradeDTO> list){	// ������ �����Է� �� ���� (insert�� ������û �Ϸ�� �����)
		try {
			smc.update("grade.update_grade", list);
			return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		return false;
	}
	
}
