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
		// ��ȸ�� ���� resultDTO �� �ִ´�

		if (resultDTO == null) { // �����Դµ� ������� �ʴ� null
			// ��ȸ�� ���� ������ �츮ȸ���� �ƴϴ� .
			System.out.println("fail");
			 
			resp.sendRedirect("login.jsp"); // �������� �ߴµ� �ȿ� ����ִ� fail
		} else {

			System.out.print("success");

			resp.sendRedirect("loginview.jsp");
		}

		// Loginview���� �����ֱ�
		if (resultDTO == null) {

		}
	}

}
