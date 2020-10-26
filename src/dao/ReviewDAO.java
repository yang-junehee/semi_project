package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static db.jdbcUtil.*;
import dto.ReviewDTO;

public class ReviewDAO {
	private static ReviewDAO dao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	public static ReviewDAO getInstance() {
		if(dao==null) {
			dao=new ReviewDAO();
		}
		return dao;
	}

	public void setConnection(Connection con) {
		this.con=con;
	}

	public int Write(ReviewDTO review) {
		String sql = "INSERT INTO REVIEWT VALUES(R_SEQ.NEXTVAL,?,?,?)";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, review.getTitle());
			pstmt.setString(2, review.getId());
			pstmt.setString(3, review.getContent());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int ListCount() {
		String sql = "SELECT COUNT(*) FROM REVIEWT";
		int listCount = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return listCount;
	}

	public List<ReviewDTO> ReviewList(int startRow, int endRow) {
		String sql = "SELECT * FROM RLIST WHERE RN BETWEEN ? AND ?";
		List<ReviewDTO> rList = new ArrayList<ReviewDTO>();
		ReviewDTO review = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				review = new ReviewDTO();
				review.setNum(rs.getInt("RNUM"));
				review.setTitle(rs.getString("RTITLE"));
				review.setId(rs.getString("RID"));
				review.setContent(rs.getString("RCONTENT"));
				
				rList.add(review);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		
		return rList;
	}

	public int ReviewDelete(int num) {
		String sql = "DELETE FROM REVIEWT WHERE RNUM=?";
		int deleteResult = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			deleteResult = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return deleteResult;
	}

	public int ReviewProcess(ReviewDTO review) {
		String sql = "UPDATE REVIEWT SET RTITLE=?, RID=?, RCONTENT=? WHERE RNUM=?";
		int proResult = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, review.getTitle());
			pstmt.setString(2, review.getId());
			pstmt.setString(3, review.getContent());
			pstmt.setInt(4, review.getNum());
			
			proResult = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return proResult;
	}
}
