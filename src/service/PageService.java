package service;

import java.sql.Connection;
import java.util.List;

import static db.jdbcUtil.*;

import dao.ReviewDAO;
import dto.ReviewDTO;

public class PageService {

	public int ListCount() {
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int listCount = dao.ListCount();
		
		if(listCount>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		return listCount;
	}

	public List<ReviewDTO> ReviewList(int startRow, int endRow) {
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		List<ReviewDTO> rList = dao.ReviewList(startRow, endRow);
		
		close(con);
		return rList;
	}

}
