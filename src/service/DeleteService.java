package service;

import static db.jdbcUtil.*;

import java.sql.Connection;

import dao.ReviewDAO;

public class DeleteService {

	public int ReviewDelete(int num) {
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int deleteResult = dao.ReviewDelete(num);
		
		if(deleteResult>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return deleteResult;
	}

}
