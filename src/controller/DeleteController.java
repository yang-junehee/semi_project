package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DeleteService;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/ReviewDelete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteController() {
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
		DeleteService deletesvc = new DeleteService();
		int deleteResult = deletesvc.ReviewDelete(num);
		
		if(deleteResult>0) {
			response.sendRedirect("ReviewList");
		}else {
			
		}
		
	}

}
