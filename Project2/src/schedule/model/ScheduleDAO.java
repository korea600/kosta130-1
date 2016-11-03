package schedule.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;


public class ScheduleDAO {
	SqlMapClient sqlMap;
	
	public ScheduleDAO() {
		sqlMap = SqlMapConfig.getSqlMapInstance();
	}
	
	public ScheduleDTO select(int no){//������ ���
		ScheduleDTO dto = null;
		try {
			dto = (ScheduleDTO) sqlMap.queryForObject("schedule.selectSchedulr",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public List<ScheduleDTO> selectAll(){//��ü ����Ʈ ���
		List<ScheduleDTO> list = null;
		try {
			list=sqlMap.queryForList("schedule.selectAllSchedulr");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<ScheduleDTO> recentList(){//�ֱ� ����Ʈ ���
		List<ScheduleDTO> list = null;
		try {
			list=sqlMap.queryForList("schedule.recentListSchedulr");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean insert(ScheduleDTO dto){
		try {
			sqlMap.insert("schedule.insertSchedulr",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean update(ScheduleDTO dto){
		try {
			sqlMap.update("schedule.updateSchedulr",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean delete(int no){
		try {
			sqlMap.delete("schedule.deleteSchedulr",no);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<ScheduleDTO> search(String starts){//�˻� ���
		List<ScheduleDTO> list = null;
		try {
			list=sqlMap.queryForList("schedule.searchSchedulr",starts);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ScheduleDTO sugangstart(String date){
		System.out.println("d"+date);
		ScheduleDTO list =null;
		try {
			list = (ScheduleDTO) sqlMap.queryForObject("schedule.Sugangschedulr",date);
			if(list==null){
				return null;
			}else{
				return list;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
				
				
	}
}
