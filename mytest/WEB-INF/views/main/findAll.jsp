<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			}
			
			main {
			  padding: 1rem;
			  height: 100%;  
			}
			
			body {
			  padding-top: 75px;
			  background: #EEE;
			  padding: 3%;
			}
			
			body, html {
			  height: 120%;
			}
			
			* {
			  box-sizing: border-box;
			}
</style>
<style type="text/css">
	table {
		margin: auto;
		width: 950px;
		text-align: center;
		
	}
	
	body{
		padding-top: 300px;
		padding: 290`px;
	}
	
	#title {
		width: 560px;
		text-decoration: none;
	}
	#writer {
		color: black;
		text-decoration: none;
	}
	
	a{
		text-decoration: none;
		font: medium;
	}
	#tit:hover{
		color: blue;
		
	}
	
	#tit{
		color: black;
		font: bold;
	
</style>
</head>
<body>
	<header>
	<a href="/my/page3">뒤로</a>
		<h1>List</h1>
	</header>
	<table>
		<tr>
			<th>번호</th>
			<th id="title">제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일자</th>
		</tr>
		<tr>
			<th colspan="5"><hr></th>
		</tr>
		<c:forEach items="${postList}" var="post">
		<tr>
			<td>${post.p_no}</td>
			<td><a href="detail?p_no=${post.p_no}" id="tit">${post.p_title}</a></td>
			<td>${post.p_writer}</td>
			<td><fmt:formatNumber value="${post.p_hits}" pattern="###,###,###,###"/>회</td>
			<td>${post.p_date}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>