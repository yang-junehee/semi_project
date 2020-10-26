package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ReviewDTO;
import service.WriteService;


@WebServlet("/ReviewWrite")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public WriteController() {
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
		
		String title = request.getParameter("title");
		String id = request.getParameter("name");
		String content = request.getParameter("content");
		
		ReviewDTO review = new ReviewDTO();
		
		review.setTitle(title);
		review.setId(id);
		review.setContent(content);
		
		WriteService wsvc = new WriteService();
		
		int result = wsvc.Write(review);
		
		if(result>0) {
			response.sendRedirect("ReviewList");
		}else {
			
		}
		
	}

}
