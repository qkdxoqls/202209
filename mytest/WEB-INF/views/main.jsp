<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		  
		  height: 20px;
		  padding: 4%;
		  color: black;
		  background: white;
		  font-weight: bold;
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		}
		h1, p {
			  margin: auto;
			}
			
			main {
			  padding: 1rem;
			  height: 100%;  
			}
			
			body {
			  padding-top: 15%;
			  background: #EEE;
			  margin: auto;
			  
			}
			
			body, html {
			  height: 120%;
			}
			
			* {
			  box-sizing: border-box;
			}
			
			a{
				text-decoration: none;
				color: black;
			}
			
			#login{
				padding: 46%;
				padding-top: 2%;
			}
			
			#btn{
				width: 120px;
				cursor: pointer;
			}
			#btn:hover{
				width: 120px;
				cursor: pointer;
				background-color: yellow;
				color: blue;
				font: bolder;
			}
			
			#tits{
				padding-bottom: 2%;
			}
			
			table{
				padding: 5%;
				height: 90px;
				text-align:center;
				width: 350px;
				border: 1px solid;
			}
			
			#ch1{
				
			}
			#ch1:hover{
				border-color: yellow;
				background-color: blue;
				color: white;
				font-weight: bold;
			}
			#ch2{
				
			}
			#ch2:hover{
				border-color: yellow;
				background-color: maroon;
				color: white;
				font-weight: bold;
			}
</style>
</head>
<body>
	<header>
		<h1><a href="#" id="tits">MemberBoardProject</a></h1>
	</header>
	<main>
		<div id="login">
			<table id="ch1">
				<tr>
					<td>이미 계정이 있으신가요?</td>
				</tr>
				<tr>
					<td><a href="my/login"><button id="btn">Login</button></a></td>
				</tr>
			</table>
			<table id="ch2">
				<tr>
					<td>계정이 없으시면 여기서 가입하세요</td>
				</tr>
				<tr>
					<td><a href="my/insert"><button id="btn">가입하기</button></a></td>
				</tr>
			</table>
			
			
			
		</div>
	</main>
</body>
</html>