package join;

import java.io.IOException;




import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addjoinaction")
public class Joincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("goGet!!!!!");
		System.out.println("This is doGet");
		System.out.println("name : " + req.getParameter("name"));
		System.out.println("address : " + req.getParameter("address"));
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		
		JoinDTO dto = new JoinDTO();
		JoinDAO dao = new JoinDAO();

		String resUrl = "error.jsp";

		dto.setId(req.getParameter("id"));
		dto.setPw(req.getParameter("pw"));
		dto.setName(req.getParameter("name"));
		dto.setEmail(req.getParameter("email"));
		System.out.println(req.getParameter("name"));
		
		String pwCheck = req.getParameter("pw2");
	
		if (!pwCheck.equals(dto.getPw())) {

			req.setAttribute("errorMsg", "패스워드를 확인해주세요");
			
			req.getRequestDispatcher("error.jsp").forward(req, resp);

		} else {

		
			JoinDTO resultDTO = dao.SelectJoin(dto); 

			if (resultDTO == null) {

				int result = dao.insertJoin(dto); 
				System.out.println(result);

				if (result == 0) {
					System.out.println("fail");

				} else {
					
					req.getSession().setAttribute("loginUser", dto);
					System.out.println("Success");
				}

			
				resp.sendRedirect("login.jsp");

			} else {

				req.setAttribute("errorMsg", "존재하는 아이디입니다.");
                
				req.getRequestDispatcher("error.jsp").forward(req, resp);
			

			}
		}

		

	}
}