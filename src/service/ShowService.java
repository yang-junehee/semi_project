package service;

import static db.jdbcUtil.*;

import java.sql.Connection;
import java.util.List;

import dao.MemberDAO;
import dto.ShowDTO;

public class ShowService {

	public static List<ShowDTO> showlist() {
		MemberDAO dao = MemberDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		List<ShowDTO> showlist=dao.showlist();
	
		close(con);
		return showlist;
	}

}
