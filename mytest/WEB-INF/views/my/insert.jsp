<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	header {
		  position: fixed;
		  top: 0;
		  left: 0;
		  right: 0;
		  
		  height: 55px;
		  padding: 1%;
		  color: black;
		  background: white;
		  font-weight: bold;
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		}
		
	body {
			  padding-top: 10px;
			  background: #000000;
			  padding: 5%;
			  color: white;
			}

	#insertbox{
		margin-top: 2%;
		text-align: center;
	}
	
	input{
		width: 460px;
		height: 30px;
	}
	
	body{
		padding-bottom: 20%; 
	}
	
	select {
		width: 460px;
	}
	#submit{
		height: 55px;
		background-color: blue;
		color: white;
		cursor: pointer;
		font-size: large;
	}
	#title{
		color: purple;
	}
</style>
</head>
<body>

	<header>
		<a href="page1">뒤로가기</a>
		<h1 id="title"> 회원가입 </h1>
	</header>
	
	<div id="insertbox">
		<form action="insert" method="post" enctype="multipart/form-data">
			이름 <br><br><input type="text" name="username" placeholder="name"><br><br>
			아이디 <br><br><input type="text" name="userid" placeholder="id"><br><br>
			비밀번호 <br><br><input type="password" name="userpassword" placeholder="pw"><br><br>
			나이 <br><br><input type="text" name="userage" placeholder="age"><br><br>
			국적 <br><br><select name="nation">
				<option selected>선택해주세요</option>
				<option value="대한민국">대한민국</option>
				<option value="United States of America">미합중국</option>
				<option value="United Kingdom">영국</option>
				<option value="中华人民共和国">중화인민공화국</option>
				<option value="日本">일본</option>
				<option value="臺灣">대만</option>
			</select><br><br>
			성별 <br><br><input type="text" name="usersex" placeholder="gender"><br><br>
			취미 <br><br><input type="text" name="hobby" placeholder="hobby"><br><br>
			직업 <br><br><input type="text" name="job" placeholder="job"><br><br>
			생일 <br><br><input type="date" name="userbrt"><br><br><br>
			<input type="hidden" name="usermoney" value="999999999">
			프로필 사진 업로드<br><input type="file" name="my_file"><br><br><br><br>
			<input type="submit" value="sign up" id="submit">
		</form>
	</div>
</body>
</html>