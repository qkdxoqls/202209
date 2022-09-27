<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#contents{
		padding-top: 4%;
		width: 450px;
		height: 650px;
		font-size: large;
		text-align: center;
		white-space: pre;
		word-wrap: break-word;
	}
	
	#title{
		width: 450px;
		font-size: large;
		text-align: center;
	}
	
	#sub{
		width: 450px;
		height: 30px;
		font-size: large;
		background-color: blue;
		color: white;
	}
	#sub:hover {
		color: blue;
		background-color: yellow;
	}
	
	#form{
		padding-top : 10%;
		padding-bottom : 20%;
		text-align: center;
		margin: auto;
	}
	
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
		
		h1{
			text-align: center;
			margin: auto;
		}
	
	body {
		background-color: black;
		color: white;
	}
	
	#file{
		color: white;
	}
</style>
</head>
<body>
	<header>
		<a href="/my/page3"><button>뒤로가기</button></a>
		<h1>공지 등록</h1>
	</header>
	<div id="form">
		<form action="adminpost" method="post" enctype="multipart/form-data">
			<input type="hidden" name="a_writer" value="${sessionScope.loginName}">
			<input type="text" name="a_title" id="title" placeholder="제목 입력"><br><br>
			<input type="text" name="a_contents" id="contents" placeholder="내용 입력"><br>
			<input type="hidden" name="usermoney" value="152600">
			추가 자료 <br><input type="file" name="a_file" id="file"><br><br>
			<input type="submit" id="sub" value="입력 완료">
		</form>
	</div>
</body>
</html>