package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import join.JoinDAO;
import join.JoinDTO;

/**
 * 
 */
@WebServlet("/Logincontroller")
public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet() protected void doGet(HttpServletRequest
	 *      request, HttpServletResponse response) throws ServletException,
	 *      IOException { // TODO Auto-generated method stub
	 *      response.getWriter().append("Served at: ").append(request.getContextPath());
	 *      }
	 * 
	 *      /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		JoinDTO dto = new JoinDTO();
		JoinDAO dao = new JoinDAO();
		String id=req.getParameter("id");
		String pwd=req.getParameter("pw");
		
		dto.setId(id);
		dto.setPw(pwd);
		
		System.out.println(dto);
		JoinDTO resultDTO = dao.SelectJoin(dto);
		System.out.println(resultDTO);
		// 조회한 값을 resultDTO 에 넣는다

		if (resultDTO == null) { // 가져왔는데 비어있지 않다 null
			// 조회한 값이 없으면 우리회원이 아니다 .
			System.out.println("fail");
			 
			resp.sendRedirect("login.jsp"); // 꺼내려고 했는데 안에 들어있다 fail
		} else {

			System.out.print("success");

			resp.sendRedirect("loginview.jsp");
		}

		// Loginview으로 보내주기
		if (resultDTO == null) {

		}
	}

}
