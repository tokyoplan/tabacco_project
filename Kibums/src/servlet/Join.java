package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import membermodel.MemberBean;
import membermodel.MemberDAO;

@WebServlet("/join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		MemberBean member;
		
		String id = request.getParameter("id");
		String password= request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		member =new MemberBean();
		
		member.setId(id);
		member.setEmail(email);
		member.setPassword(password);
		member.setPhone(phone);
		
		MemberDAO mdao=MemberDAO.getInstance();
		mdao.insertMember(member);
		
		HttpSession session=request.getSession();
		session.setAttribute("user", member);
		
		RequestDispatcher rdp=request.getRequestDispatcher("main.jsp");
		rdp.forward(request, response);
		
		
		
	}

}
