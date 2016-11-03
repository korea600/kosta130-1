package grade.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import sugang.model.SugangDTO;

public class GradeDAO {		// ������ȸ(s,p), ��������(p), select_box ������ ó��(p)
	SqlMapClient smc;
	
	public GradeDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	public List<String> find_subs(GradeDTO dto){
		dto.setStatus("ó���Ϸ�");
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
			for(int i=0;i<list.size();i++){
				GradeDTO dto = list.get(i);
				if(smc.update("grade.update_grade", dto)==0){
					return false;
				}
			}
			return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}			
		return false;
	}
	public List<SugangDTO> timetale(SugangDTO input) {
		List<SugangDTO> list = null;
		try {
			list = smc.queryForList("grade.s_timetable",input);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
