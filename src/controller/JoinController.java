package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MemberDTO;
import service.JoinService;

@WebServlet("/memberJoin")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public JoinController() {
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
		
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String name = request.getParameter("NAMES");
		String fArtist = request.getParameter("fArtist");
		
		MemberDTO member=new MemberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		member.setfArtist(fArtist);
		
		
		
		JoinService joinsvc=new JoinService();
		int joinResult=joinsvc.memberJoin(member);
		
		if(joinResult>0) {
			response.sendRedirect("Main.jsp");
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입 실패')");
			out.println("</script>");
		}
	}

}
