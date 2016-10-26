package notice.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;


public class NoticeDAO {

	SqlMapClient smc;
	
	public NoticeDAO() {
		smc = SqlMapConfig.getSqlMapInstance();	
	}

	
	public boolean insert(NoticeDTO dto) {
		try {
			smc.insert("notice.insert",dto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}// insert

	public boolean update(NoticeDTO dto) {
		try {
			int t = smc.update("notice.update", dto);
			if(t==1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// update

	public boolean delete(int no) {
		try {
			int t = smc.delete("notice.delete", no);
			if(t==1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// delete

	public NoticeDTO upform(NoticeDTO dto) {
		
		NoticeDTO dtots = null;
		try {
			dtots = (NoticeDTO)smc.queryForObject("notice.upselect", dto);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtots;
	}// 공지사항 조회 (수정폼)

	public List<NoticeDTO> select(String check) {
		//System.out.println("check="+check);
		List<NoticeDTO> list = null;
		try {
			list = smc.queryForList("notice.select", check);
			System.out.println("list.size():"+list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// 공지사항 조회 (내용별 (학사/취업))
	
	


}
