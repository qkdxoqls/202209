<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function btn() {
		alert("로그아웃합니다.")
	}
</script>
<style type="text/css">
	header {
		  position: fixed;
		  top: 0;
		  left: 0;
		  right: 0;
		  margin :auto;
		  
		  height: 50px;
		  padding: 3%;
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
			  padding-top: 75px;
			  background: #EEE;
			  padding: 10%;
			}
			
			body, html {
			  height: 120%;
			}
			
			* {
			  box-sizing: border-box;
			}
			
			#at{
				text-decoration: none;
				color: black;
			}
			
			#at:hover{
				color: white;
				font-size: 30px;
			}
			#login{
				color: blue;
				
			}
			
			#btn:hover{
				background-color: blue;
			}
			
			#btn{
				background-color: red;
				color: white;
				border: 1px;
				width: 150px;
				cursor: pointer;
				height: 40px;
			}
			button{
				cursor: pointer;
			}
			
			table{
				margin: auto;
			}
			
			#memlist:hover {
				color: green;
			}
			
			#memlist {
				text-decoration: none;
				color: yellow;
			}
			
			#lists:hover {
				color: blue;
			}
			
			#lists{
				text-decoration: none;
			}
			
			#tits{
				margin:auto;
				position: fixed;
				
			}
			
			#tits:hover {
				color: red;
			}
			
			#adpo{
				width: 850px;
				text-align: center;
			}
			
			#bgc{
				color: black;
			}
			
			#bgc:hover {
				background-color: gray;
				color: white;
			}
			#footer{
				padding-top: 100%;
				padding-bottom: 5%;
			}
			#footers{
				background-color: blue;
				color: white;
				font: bold;
				text-align: center;
			}
</style>
</head>
<body>
	<header>
				
		<a href="/main/findAll" id="lists">글 목록</a>
		<div id="title">
			<h1><a href="#" id="tits">MemberBoardProject</a></h1>
		</div>
		<div id="login">
			<a href="/main/post"><button onclick="upload()">글 쓰기</button></a>
			어서오세요. ${sessionScope.loginName}님
			<a href="logout"><button id="btn" onclick="btn()">로그아웃</button></a>
		</div>
	</header>	
		<c:if test="${sessionScope.loginId eq 'admin' }">
			<a href="/admins/adminpost"><button>공지 올리기</button></a>
		</c:if>
	<div id="contents" class="contents">
			<table id="adpo">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>날짜</th>
				</tr>
				<tr>
					<td colspan="3"><hr></td>
				</tr>
				<c:forEach items="${adminList}" var="admin">
				<tr id="bgc">
					<td id="at">${admin.a_no}</td>
					<td><a href="/admins/detail?a_no=${admin.a_no}" id="at">${admin.a_title}</a></td>
					<td id="at">${admin.a_date}</td>
				</tr>
				</c:forEach>
			</table>
	</div>
	<footer id="footer">
		<div id="footers">
		<c:if test="${sessionScope.loginId eq 'admin' }">
			<a href="findAll" id="memlist">회원 목록보기</a>
		</c:if>
			<br>
			2022년 01월 20일 제작<br>
			현재 업데이트 중 <br>
			(개발중)
		</div>
	</footer>
	
</body>
</html>