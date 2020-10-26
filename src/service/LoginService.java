package service;

import static db.jdbcUtil.*;


import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;

public class LoginService {

	public MemberDTO memberLogin(String id, String pw) {
		MemberDAO dao = MemberDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);

		MemberDTO member=new MemberDTO();
		
		member= dao.memberLogin(id, pw);
		
		close(con);
		
		return member;
	}

}
