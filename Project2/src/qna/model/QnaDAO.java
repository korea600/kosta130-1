package qna.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;
import schedule.model.ScheduleDTO;

public class QnaDAO {
	SqlMapClient sqlMap;
	
	public QnaDAO() {
		sqlMap = SqlMapConfig.getSqlMapInstance();
	}
	
	public List<QnaDTO> selectAll(String id){//전체 리스트 출력
		List<QnaDTO> list = null;
	
		try {
			list = sqlMap.queryForList("qna.selectAllQna",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<QnaDTO> AdminQna(String check){
		List<QnaDTO> list = null;
		try {
			list = sqlMap.queryForList("qna.AdminQna",check);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public QnaDTO select(int no){//수정폼 출력
		return null;
	}
	
	public boolean insert(QnaDTO dto){
		System.out.println(dto.getId());
		try {
			sqlMap.insert("qna.insertQna",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean update(QnaDTO dto){
		return false;
	}
	
	public boolean delete(int no){
		return false;
	}
}
