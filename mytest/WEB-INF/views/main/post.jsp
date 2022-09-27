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
		h1, p {
			  margin: auto;
			  margin-bottom: 10px;
			}
			
			main {
			  padding: 1rem;
			  height: 100%;  
			}
			
			body {
			  padding-top: 75px;
			  background: #EEE;
			  padding: 18%;
			}
			
			body, html {
			  height: 120%;
			}
			
			* {
			  box-sizing: border-box;
			}
</style>
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

	#postbox{
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
	
	#contents{
		height: 600px;
		width: 460px;
	}
	
	input {
		text-align: center;
		font-size: large;
	}
	
	#writer{
		font-weight: bolder;	
	}
	
</style>
</head>
<body>
	<header>
		<a href="/my/page3">뒤로가기</a>
		업로드
	</header>
	<div id="postbox">
		<form action="post" method="post" enctype="multipart/form-data">
		작성자 <br><input type="text" name="p_writer" id="writer" placeholder="" value="${sessionScope.loginName}" readonly><br><br>
		제목 <br><input type="text" name="p_title" placeholder="제목"><br>
		내용	<br><input type="text" name="p_contents" id="contents" placeholder="내용"><br>
			<br>영상 업로드<br> <input type="file" name="p_file"><br><br>
			<input type="submit" value="작성완료">
		</form>
	</div>
</body>
</html>