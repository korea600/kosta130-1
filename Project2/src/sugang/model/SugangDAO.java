package sugang.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import schedule.model.ScheduleDTO;

public class SugangDAO {
	SqlMapClient sqlMap;
	
	public SugangDAO() {
		sqlMap = SqlMapConfig.getSqlMapInstance();
	}
	public List<String> selectDivision(String division){
		List<String> list = null;
		try {
			list = sqlMap.queryForList("sugang.major",division);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}//selectDivision
	
	public List<SugangDTO> completeSelect(SugangDTO dto){
		List<SugangDTO> list = null;
		try {
			list = sqlMap.queryForList("sugang.completeSelect",dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public SugangDTO pTagData(String id){
		SugangDTO list = null;
		try {
			list = (SugangDTO) sqlMap.queryForObject("sugang.pTagData", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<SugangDTO> possibleList(SugangDTO dto){
		List<SugangDTO> list = null;
		try {
			list = sqlMap.queryForList("sugang.possibleList",dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean enrolmentInsert(SugangDTO dto){
		try {
			sqlMap.insert("sugang.enrolmentInsert",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<SugangDTO> applySelect(SugangDTO dto){
		List<SugangDTO> list = null;
		try {
			list = sqlMap.queryForList("sugang.applyselect",dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<SugangDTO> sugangApply(String id){
		List<SugangDTO> list = null;
		try {
			list = sqlMap.queryForList("sugang.sugangApply",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}