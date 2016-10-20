package member.model;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import iBatis.SqlMapConfig;

public class LoginDAO {
	SqlMapClient smc;
	public LoginDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	public LoginDTO login(LoginDTO dto){	// ���̵�, ��� Ȯ��
		LoginDTO checked = null;
		try {
			checked = (LoginDTO) smc.queryForObject("login.pw_check",dto);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return checked;
	}

}
