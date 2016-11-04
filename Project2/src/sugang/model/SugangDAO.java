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
	
	public int allCntSelect(int code){
		int cnt=0;
		try {
			cnt = (int) sqlMap.queryForObject("sugang.allCntSelect",code);
			return cnt;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int sugangApplyCnt(int code){
		int count=0;
		try {
			count = (int) sqlMap.queryForObject("sugang.sugangApplyCnt",code);
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public SugangDTO rightPop(String id){
		SugangDTO list = null;
		try {
			list = (SugangDTO) sqlMap.queryForObject("sugang.rightPop",id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean updatePop(SugangDTO dto){
		System.out.println(dto.getId());
		try {
			int t = sqlMap.update("sugang.updatePop",dto);
			System.out.println("t"+t);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public SugangDTO mainSelectList(String id){
		 SugangDTO list = null;
		try {
			list = (SugangDTO) sqlMap.queryForObject("sugang.mainSugangList",id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean notBetInsert(SugangDTO dto){
		try {
			sqlMap.insert("sugang.notBetInsert",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<SugangDTO> notBetSelect(SugangDTO dto){
		List<SugangDTO> list = null;
		try {
			list = sqlMap.queryForList("sugang.notBetSelect",dto);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int notBetGrade_info(int code){
		int t = 0;
		try {
			t = (int) sqlMap.queryForObject("sugang.notBetGrade_info",code);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
	
	public boolean pTagData2(SugangDTO dto){
		int t = 0;
		try {
			t = sqlMap.update("sugang.pTagData2",dto);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int creditSelect(int code){
		int t = 0;
		try {
			t = (int) sqlMap.queryForObject("sugang.creditSelect",code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
	
	public boolean cancelDelete(SugangDTO dto){
		int t = 0;
		try {
			t = sqlMap.delete("sugang.cancelDelete",dto);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
}