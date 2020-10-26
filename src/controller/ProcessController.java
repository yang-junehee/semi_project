package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ReviewDTO;
import service.ProcessService;

/**
 * Servlet implementation class ProcessController
 */
@WebServlet("/ProcessReview")
public class ProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProcessController() {
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
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("num : " + num);
		String title = request.getParameter("title");
		String id = request.getParameter("name");
		String content = request.getParameter("content");
		
		ReviewDTO review = new ReviewDTO();
		
		review.setNum(num);
		review.setTitle(title);
		review.setId(id);
		review.setContent(content);
		
		ProcessService prosvc = new ProcessService();
		int proResult = prosvc.ReviewProcess(review);
		
		if(proResult>0) {
			response.sendRedirect("ReviewList");
		}
	}

}
