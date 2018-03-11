<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script type="text/javascript">
	
// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수

function checkValue()
{
    if(!document.addjoin.id.value){
        alert("아이디를 입력하세요.");
        return false;
    }
    
    if(!document.addjoin.pw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    
    if(!document.addjoin.name.value){
        alert("이름을 입력하세요.");
        return false;
    }
    
    
    
    if(!document.addjoin.email.value){
        alert("이메일을 입력하세요.");
        return false;
    
    }
    
    if(document.addjoin.id.value != document.addjoin.idcheck.value ){
        alert("중복된 아이디입니다 다른 아이디를 입력하세요.");
        return false;



 
}
  
	
}


	
</script>

<style>
</style>

</head>

<body>
	<h1>회원가입</h1>


	<form action="addjoinaction" name="addjoin" method="post" onsubmit="return checkValue()">



		<p>
			ID<input type="text" name="id" id="id">
		<p>
		
		 
		
		
		<p>
			PWD<input type="password" name="pw" id="pw">
		<p>
		
		<p>
		   비밀번호확인 <input type="password" name="pw2" id="pw2">
		<p>
		
		
		<p>
			NAME<input type="text" name="name" id="name">
		<p>
		<p>
			E-MAIL<input type="text" name="email" placeholder="ex)dnwjd0821@naver.com">
		<p>



			<input type="submit" value="가입">

	</form>

	