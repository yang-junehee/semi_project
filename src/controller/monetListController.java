package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ArtDTO;
import service.ArtListService;


@WebServlet("/monetList")
public class monetListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public monetListController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		System.out.println("name확인 : "+name);
		
		ArtListService artsvc = new ArtListService();
		List<ArtDTO> art = new ArrayList<ArtDTO>();
		art = artsvc.ArtList(name);
		
		System.out.println("con art" + art);


		if(art != null) {
			session.setAttribute("art", art);
			RequestDispatcher dispatcher = request.getRequestDispatcher("monet.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
