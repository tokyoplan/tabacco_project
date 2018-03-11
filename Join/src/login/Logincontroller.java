package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import com.mysql.jdbc.StringUtils;

import join.JoinDAO;
import join.JoinDTO;
import util.CommonUtils;

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
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		JoinDTO dto = new JoinDTO();
		JoinDAO dao = new JoinDAO();

		dto.setId(req.getParameter("id"));
		dto.setPw(req.getParameter("pw"));
		System.out.println(dto);
		String logCheck = req.getParameter("id");
		String logCheck2 = req.getParameter("pw");
		if(CommonUtils.isEmpty(logCheck) || CommonUtils.isEmpty(logCheck2)){

			req.setAttribute("errorMsg", "Id 혹은 pw를 다시 입력해주세요");
			req.getRequestDispatcher("error.jsp").forward(req, resp);

		} else {

			JoinDTO result=dao.SelectJoinInfo(dto);
			
			System.out.println(result);
			
			String name=result.getName();
			int money =result.getMoney();

			if (CommonUtils.isEmpty(name)) {
				
				System.out.println("fail");
				req.setAttribute("errorMsg", "Id 혹은 PW가 맞지 않습니다");
				req.getRequestDispatcher("error.jsp").forward(req, resp);
			} else {

				System.out.print("success");
				req.setAttribute("userName", name);
				req.setAttribute("money", money);
				
				req.getRequestDispatcher("main.jsp").forward(req, resp);
			}

			//

		}
	}

}
