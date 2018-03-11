<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>Insert title here</title>
<style>
/* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);

@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300)
	;


body {
	margin: 0;
	padding: 0;
	font-family: Arial;
	font-size: 12px;
}

.body {
	position: absolute;
	background-size: cover;
	position: absolute;
}

.grad {
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0
		, 0, 0)), color-stop(100%, rgba(0, 0, 0, 0.65)));
	/* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header {
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div {
	float: left;
	color: #980000;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span {
	color: #980000fa !important;
}

.login {
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(0, 0, 0, 0);
	border-radius: 2px;
	color: #980000;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(0, 0, 0, 0);
	border-radius: 2px;
	color: #980000;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit] {
	width: 260px;
	height: 35px;
	background:  #BDBDBD;
	border: 1.5px solid  #980000;
	cursor: pointer;
	border-radius: 15px;
	color:  #BDBDBD;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover {
	opacity: 0.8;
}

.login input[type=submit]:active {
	opacity: 0.6;
}

.login input[type=text]:focus {
	outline: none;
	border: 1px solid rgba(0, 0, 0, 0);
}

.login input[type=password]:focus {
	outline: none;
	border: 1px solid rgba(0, 0, 0, 0);
}

.login input[type=submit]:focus {
	outline: none;
}

::-webkit-input-placeholder {
	color:  #980000;
}

::-moz-input-placeholder {
	color:  #980000;
}

.a {
    color:#980000;;
	margin: 0;
	padding: 0;
	font-family: Arial;
	font-size: 14px;

}
</style>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>


	
	<form action="/Kibums/login.do" method="post">
		<div class="body">
			
		</div>
   	
		<div class="header">
			<div>
				Music<span>Lounge</span>
			</div>
		</div>
		<br>
		<div class="login">
	 <div class="a">  ${msg } </div> <br>
			<input type="text" name="id" placeholder="ID"><br> 
			<input type="password" name="password" placeholder="Password"><br>
			<input type="submit" value="Login"/>
            
		</div>


	</form>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</body>
</body>
</html>