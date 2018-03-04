<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="membermodel.MemberBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
<link
	href="http://cdn.syncfusion.com/15.1.0.41/js/web/bootstrap-theme/ej.web.all.min.css"
	rel="stylesheet" />
<script
	src="http://cdn.syncfusion.com/js/assets/external/jquery-1.10.2.min.js"></script>
<script
	src="http://cdn.syncfusion.com/js/assets/external/jquery.easing.1.3.min.js"></script>
<script
	src="http://cdn.syncfusion.com/js/assets/external/jsrender.min.js"></script>
<script
	src="http://cdn.syncfusion.com/15.1.0.41/js/web/ej.web.all.min.js"></script>

<script>
	$(function() {

		$("#content").ejRTE({
			width : "98%"
		});

		$("#Btn").ejButton({
			width : "100px",
			height : "40px"
		});

	});
	
	
</script>


<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
.btn.btn-default {
width: 100px;
	color: #980000;
	background-color: #000000;
	background-image: linear-gradient(to bottom, #c8c8c8, #c8c8c8);
	border-color: #980000;
	border: 0.5px solid #960000;
	font-family:굴림;
}

.button {
	text-align: right;
	font-family: 'Nanum Pen Script';
	font-size: 20px;
}

.b {
	margin: 10px;
	width: 1140px;
	height: 30px;
	margin-left: 60px;
	
}
.music{
  	height: 100%;
	background: #fff;
	background: no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	align=center;
}

.accent {
	font-size: 20px;
	color: red;
	font-weight: bold;
}

.form-control{
font-size: 30px;
size:40px;
}

.form-group {
	text-align: right;
	padding-right: 150px;
	background-image: linear-gradient(to bottom, #980000, #c8c8c8);
	font-family: 'Nanum Pen Script';
	font-size: 20px;
		
}

.blank {
	width: 1140px;
	height: 30px;

}
.form-control{
border: 1.5px solid #960000;

}

body{

background: url(images/music.jpg) no-repeat center center fixed;
}



.title {
	font-size: 50px;
	font-weight: bold;
	color: #980000;
	font-family: 'Nanum Pen Script';
}

.id input[type=text] {

	font-size: 30px;
	font-weight: 400;
	outline: none;
	border: 1.5px solid #960000;
	cursor: pointer;

	text-align:center;
	color:blue;
		font-family: 'Nanum Pen Script';
		
		border-radius: 200px;
	
		
		
}

.id input[type=text]:hover {
	opacity: 0.8;
	color:pink;
}

</style>
<script type="text/javascript">
	function goUrl(url) {
		location.href = url;
	}
</script>
</head>

<body>
	<%
		MemberBean user = (MemberBean) session.getAttribute("user");
	%>


	<div class="blank2"></div>


	

	<form action="BoardwritePro.jsp" method="post">
         
         
      
		<div class="title" align="center"
					style="font: bold italic 3.0em/1.0em Georgia;">MusicLounge</div>


<div class="id">
    
<input type="text" class="form-control" id="title" name="id"
								placeholder="id" value="<%=user.getId() %>"  readonly   > 
					
</div>
		<div class="blank"></div>

        
		<div id="container">
		<div class="col-lg-12" id="Comments">
		
		<div class="form-group">
		<label for="name" class="col-sm-2 control-label"></label>
		<div class="col-sm-10">
		
		
			
		
								
		<input type="text" class="form-control" id="title" name="title"
								placeholder="후기를 작성해주세요"> 
						
						
<input type="submit" class="btn btn-default" value="확          인" onclick="goUrl('Board.jsp')">


						<div class="form-group">
		
		
		<label for="name" class="col-sm-2 control-label"></label>
		<div class="col-sm-10">
		
	
	
		
		<div class="form-group">
		
		<div class="col-sm-offset-2 col-sm-10">
		
		
	
		
				
					</form>
		</div>
		
		
		</div>
		
		
		
		</div>
		
		</div>
		</div>
		</div>
		</div>
		</div>
		
		
		<div class="music">
	
		
		</div>
	</body>
</html>