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
public class Joincontroller extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("goGet!!!!!");
		System.out.println("This is doGet");
		System.out.println("name : " + req.getParameter("name"));
		System.out.println("address : " + req.getParameter("address"));
		doPost(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		//req.setCharacterEncoding("EUC-KR");
		//�ѱ�ó��
		
		JoinDTO dto = new JoinDTO();
		JoinDAO dao = new JoinDAO();

	
		
		dto.setId(req.getParameter("id"));
		dto.setPw(req.getParameter("pw"));
		dto.setName(req.getParameter("name"));
		dto.setEmail(req.getParameter("email"));
		
		//���� �ƹ��͵� �ȵ�� �� ���
		JoinDTO resultDTO = dao.SelectJoin(dto);
		if(resultDTO == null){
			int result = dao.insertJoin(dto);
			
			if(result==0){
				System.out.println("Fail");
			}else{
				System.out.println("Sucsses");
			}
			
			resp.sendRedirect("login.jsp");
			
			
			
			
			
			
			
		}
		
		//���� insert �Ϸ��Ҷ� �װ��� db�� �ִ°��
	
		
		
		
	}
	
	
	
	
	
}
