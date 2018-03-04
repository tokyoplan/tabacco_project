<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ page import="util.JdbcUtils.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name=viewport content="width=device-width, initial-scale=1">
<link rel=stylesheet
	href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
<script
	src=https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script
	src=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js></script>
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);

@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300)
	;

.pagination {
	
}

.pagination>li>a {
	float: none;
	color: #980000;
	background-color: #EAEAEA;
}

.search {
	width: 1140px;
	height: 75px;
	background-color: #980000;
	padding: 25px;
}

.search a {
	display: block;
}

.btn.btn-default {
	color: #980000;
	background-color: #000000;
	background-image: linear-gradient(to bottom, #c8c8c8, #c8c8c8);
	border-color: #980000;
}

th {
	text-align: center;
}

td {
	text-align: center;
}

.button {
	text-align: right;
}

.blank {
	width: 1140px;
	height: 30px;
}

.blank2 {
	width: 1140px;
	height: 20px;
}

.accent {
	font-size: 20px;
	color: #980000;
	font-weight: bold;
}

p {
	text-align: center;
}

.title {
	font-size: 50px;
	font-weight: bold;
	color: #980000;
	font-family: 'Nanum Pen Script';

}

@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

</style>
<script type="text/javascript">
	function goUrl(url) {
		location.href = url;
	}
</script>
</head>


<body>




<div class="title" align="center"
					style="font: bold italic 3.0em/1.0em Georgia;">MusicLounge</div>
					
					<marquee behavior="alternate" scrolldelay="200" direction="right">
			<span class="accent">회원님의 소중한 후기 감사합니다 </span>
				
				
		</marquee>


	<form action="/Kibums/login.do" method="post">


		<span class="notranslate" onmouseover="_tipon(this)"
			onmouseout="_tipoff()">
			<div class="container">
				<div align="center">



					<table class="table table-hover">

						<tr>




							<th>작성자</th>

							<th>후기</th>
							<th>날짜</th>



						</tr>


	<%
		//1. 한글처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");

		//3. 비즈니스 로직
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "siren";
		String password = "1234";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean check = false;

		String sql = "select * from board3";

		Class.forName("oracle.jdbc.driver.OracleDriver");

		conn = DriverManager.getConnection(url, user, password);

		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			check = true;
	%>
						<tr>
							<td><%=rs.getString("id")%></td>

							<td width="400"><%=rs.getString("title")%></td>

							<td width="400"><%=rs.getString("writeday")%></td>

						</tr>

						<%
							}

							if (!check) {
						%>

						<tr>
							<td colspan="3">등록된 글이 없습니다.</td>
						</tr>
						<%
							}

							rs.close();
							pstmt.close();
							conn.close();
						%>
					</table>


					<ul class="pagination">

						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>


					<div class="button">
						<input type="button" class="btn btn-default" value="목록"
							onclick="goUrl('main.jsp')"> &nbsp;&nbsp; <input
							type="button" class="btn btn-default" value="글쓰기"
							onclick="goUrl('BoardWriteForm.jsp')" />



					</div>

				</div>

			</div>
		</span>



	</form>

</body>

</html>

