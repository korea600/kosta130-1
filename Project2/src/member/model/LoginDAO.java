package member.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;


import iBatis.SqlMapConfig;

public class LoginDAO {
	SqlMapClient smc;
	public LoginDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	public LoginDTO login(LoginDTO dto){	// 아이디, 비번 확인
		LoginDTO checked = null;
		try {
			checked = (LoginDTO) smc.queryForObject("login.pw_check",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return checked;
	}
	
	public MemberDTO edit_Select(String id){
		MemberDTO member = null;
		
		try {
			member = (MemberDTO)smc.queryForObject("login.mem_select",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
		
	}
	
	public boolean edit_update(MemberDTO dto){
		
		try {
			int cu = smc.update("login.mem_update",dto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public List<MemberDTO> selectAll(MemberDTO dto){
		List<MemberDTO> list = null;
		try {
			list = smc.queryForList("login.mem_allselect",dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<MemberDTO> subselect(){
		List<MemberDTO> list = null;
		
		try {
			list = smc.queryForList("login.sub_select");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public List<MemberDTO> mem_allselect(MemberDTO dto) {
		List<MemberDTO> list = null;
		
		try {
			list = smc.queryForList("login.mem_allselect", dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public List<MemberDTO> ch_select(MemberDTO dto) {
		List<MemberDTO> list = null;
		
		try {
			list = smc.queryForList("login.ch_select", dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
