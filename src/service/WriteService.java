package service;

import static db.jdbcUtil.*;

import java.sql.Connection;

import dao.ReviewDAO;
import dto.ReviewDTO;

public class WriteService {

	public int Write(ReviewDTO review) {
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int result = dao.Write(review);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return result;
	}

}
