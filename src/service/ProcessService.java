package service;

import static db.jdbcUtil.*;

import java.sql.Connection;

import dao.ReviewDAO;
import dto.ReviewDTO;

public class ProcessService {

	public int ReviewProcess(ReviewDTO review) {
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int proResult = dao.ReviewProcess(review);
		
		if(proResult > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return proResult;
	}

}
