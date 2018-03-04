<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="membermodel.MemberBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//한글처리
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			
			//요청처리
			
			String id=request.getParameter("id");
			String title = request.getParameter("title");
            String writeday=request.getParameter("writeday");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "siren";
			String password = "1234";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "insert into board3 values(?, ?, sysdate)";
			
			try{
				// 드라이버 로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				// DB 연동 
				conn = DriverManager.getConnection(url, user, password);
				
				// 쿼리실행
				pstmt = conn.prepareStatement(sql);
				
			   pstmt.setString(1,id);
				pstmt.setString(2, title);

				
				
				pstmt.executeUpdate(); // 무조건 성공 가정..
				
			
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(pstmt !=null) pstmt.close();
					if(conn != null) conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
				
			}
			response.sendRedirect("Board.jsp");
		%>
	</body>
</html>