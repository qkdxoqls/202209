<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@font-face {
	    font-family: 'Chosunilbo_myungjo';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	#submit{
		width: 450px;
		height: 55px;
		background-color: blue;
		font-size: large;
		color: white;
		cursor: pointer;
		font-family: 'Chosunilbo_myungjo';
	}
	
	#login{
		
		margin: auto;
		text-align: center;
	}
	
	body{
		text-align : center;
		margin-top : 10%;
	}
	
	#id{
		text-align :center;
		width: 450px;
		height: 50px;
		font-size: large;
		
	}
	
	#pw{
		text-align:center;
		font-size:large;
		width: 450px;
		height: 50px;
		
	}
</style>
</head>
<body>
<h2>로그인</h2>
	<div id="login">
		<form action="login" method="post">
			<input type="text" id="id" name="userid" placeholder="Id"><br>
			<input type="password" id="pw" name="userpassword" placeholder="Pw"><br>
			<input type="hidden" name="usermoney" value="5200">
			
			<input type="submit" value="login" id="submit">
		</form>
	</div>
</body>
</html>