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

@WebServlet("/login.do")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		MemberBean member;

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		member =new MemberBean();

		String resUrl =null;
		HttpSession session =null;
		MemberDAO mdao = MemberDAO.getInstance();
		
		
		member.setId(id);
		member.setPassword(password);
		
		int chk = mdao.logincheck(id, password);
		if (chk == 1) {
			member = mdao.getOneMember(id);
			session = request.getSession();
			session.setAttribute("user", member);
			resUrl = "main.jsp";
		} else if (chk == 0) {
			request.setAttribute("msg", " 비밀번호를 확인해주세요 ^-^;");
			resUrl = "loginForm.jsp";
		} else if (chk == -1) {
			request.setAttribute("msg", "아이디가 없습니다 ^-^;");
			resUrl = "loginForm.jsp";
		}

		RequestDispatcher rdp = request.getRequestDispatcher(resUrl);
		rdp.forward(request, response);

	}

}
