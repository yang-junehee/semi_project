package controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.MemberDTO;
import service.LoginService;


@WebServlet("/memberLogin")
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
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
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		
		MemberDTO member=new MemberDTO();
		LoginService loginsvc = new LoginService();
		
		
		member = loginsvc.memberLogin(id, pw);
		
		System.out.println("이름 확인 : "+member.getName());
		
		if(member != null) {
			session.setAttribute("name", member.getName());
			session.setAttribute("pw", member.getPw());
			RequestDispatcher dispatcher = request.getRequestDispatcher("Main.jsp");
			dispatcher.forward(request, response);
		} else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 실패')");
			out.println("</script>");
		}
	}
}