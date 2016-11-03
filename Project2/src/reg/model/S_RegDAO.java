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
	public boolean s_check(RegDTO dto){	// 학생의 학적변경 신청 가능여부 조회 (처리대기중이 없을때만 새로 등록 가능)
		try {
			int cnt = (int) smc.queryForObject("reg.check",dto);
			if(cnt==0) return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public List<RegDTO> s_select(String id) { // 학생 학적 조회
		List<RegDTO> list = null;
		try {
			list = smc.queryForList("reg.stdReg", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public RegDTO select(RegDTO dto) {// 수정폼 내용 출력
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

	public RegDTO insert(RegDTO dto) {// 입력폼 내용 출력
		RegDTO reg = null;
		try {
			reg = (RegDTO) smc.queryForObject("reg.stdInForm", dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;
	}// select
	
	public boolean s_reginsert(RegDTO dto){		// 학적변경 신청 등록
		try {
			smc.insert("reg.s_reginsert",dto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean s_regupdate(RegDTO dto){		// 학적변경 신청내용 수정
		try {
			smc.update("reg.s_regupdate",dto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean s_regdelete(RegDTO dto){		// 학적변경 신청내용 삭제
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
