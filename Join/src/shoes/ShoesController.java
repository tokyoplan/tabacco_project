package shoes;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.CommonUtils;

//main에 뿌려준다
@WebServlet("/Shoescontroller")
public class ShoesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 
		ShoesDAO dao=new ShoesDAO();
	  
		List<String> result=dao.selectShoes();
		
		if(result.isEmpty()){
		   System.out.println("fail");
		   req.setAttribute("errorMsg", "상품이 없습니다");
		   req.getRequestDispatcher("error.jsp").forward(req, resp);
		   
		}else{
			
			System.out.println("success");
			req.setAttribute("shoesPathList", result);
			
			req.getRequestDispatcher("main.jsp").forward(req, resp);
			
			}
		
	//for문 ㅌㄴ
		

		
		
	
		
		
		
	}

}
