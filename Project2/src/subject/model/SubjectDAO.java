package subject.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class SubjectDAO {

	SqlMapClient smc;
	
	public SubjectDAO() {
		smc = SqlMapConfig.getSqlMapInstance();	
	}
	public int getCurrentCode(){
		int code=0;
		try {
			code = (int) smc.queryForObject("subject.code_sequence");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return code;
	}
	public List<SubjectDTO> p_selectAll(SubjectDTO dto){		// ������ ���� ��ȸ (��ü)
		   List<SubjectDTO> list = null;
		   try {
			   list=smc.queryForList("subject.selectAll",dto);
		   }
		   catch (SQLException e) {
			   e.printStackTrace();
		   }  
		   return list;
	}
	public SubjectDTO p_select(int code){		// ������ ���� ��ȸ (���� �������� Ư������ ����)
		SubjectDTO subject = null;
		try {
			subject=(SubjectDTO) smc.queryForObject("subject.select",code);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}  
		return subject;
	}
	public String getMajor(String id){
		String major=null;
		try {
			major = (String) smc.queryForObject("subject.getMajor",id);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return major;
	}
	public int p_insert(SubjectDTO dto){		// ������ ������ (��û), ���ǰ�ȹ�� ���ϸ� ������ ���� �ԷµǾ����� ������ code�� ����
		int code=0;
		try {
			smc.insert("subject.insert", dto);
			code=getCurrentCode();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return code;
	}
}
