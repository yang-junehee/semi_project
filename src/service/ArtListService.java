package service;

import static db.jdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import dao.MemberDAO;
import dto.ArtDTO;

public class ArtListService {

	public List<ArtDTO> ArtList(String name) {
		MemberDAO dao = MemberDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		
		System.out.println("name : " + name);
		List<ArtDTO> art = new ArrayList<ArtDTO>();
				
			art  =	dao.ArtList(name);
	
		
		System.out.println("ser art" + art);
		
		close(con);
		
		return art;
	}



}
