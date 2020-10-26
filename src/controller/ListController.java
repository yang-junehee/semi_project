package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PageDTO;
import dto.ReviewDTO;
import service.PageService;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/ReviewList")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ListController() {
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
		
		int page = 1;
		int limit = 5;
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		PageService pagesvc = new PageService();
		
		int listCount = pagesvc.ListCount();
		System.out.println("listCount : " + listCount);
		
		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;
		
		
		List<ReviewDTO> rList = pagesvc.ReviewList(startRow, endRow);
		
		
		int maxPage = (int)((double)listCount / limit + 0.9);
		
		int startPage = (((int)((double)page / 10 + 0.9))-1) * 10 + 1;
		
		int endPage = startPage + 10 - 1;
			System.out.println("endPage : " + endPage);
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		System.out.println("startpage : " + startPage);
		System.out.println("page : " + page);
	
		PageDTO paging = new PageDTO();
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		paging.setListCount(listCount);
		
		request.setAttribute("paging", paging);
		request.setAttribute("rList", rList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Review.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
