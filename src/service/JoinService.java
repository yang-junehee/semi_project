package service;

import static db.jdbcUtil.*;


import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;

public class JoinService {

	public int memberJoin(MemberDTO member) {
		MemberDAO dao = MemberDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int joinResult=dao.memberJoin(member);
		
		if(joinResult>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return joinResult;
	}

}
