package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ShowDTO;
import service.ShowService;

@WebServlet("/showlist")
public class ShowController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ShowController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		List<ShowDTO> showlist=new ArrayList<ShowDTO>();
		ShowService showsvc=new ShowService();
		showlist=showsvc.showlist();
		
		
		
	}

}
