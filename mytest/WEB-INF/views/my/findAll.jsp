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
	table{
		width: 780px;
		text-align: center;
		margin: auto;
	}
</style>
</head>
<body>

	<header>
		<a href="page3">뒤로</a>
		<h1>list</h1>
	</header>
	<table>
		<tr>
			<td>프로필</td>
			<td>번호</td>
			<td>이름</td>
			<td>나이</td>
		</tr>
		<tr>
			<td colspan="4"><hr></td>
		</tr>
		<c:forEach items="${myList}" var="myname">
		<tr>
			<td><img alt="사진 또는 이미지가 없습니다." src="/resources/upload/${myname.my_filename}" width="100px;"></td>
			<td>${myname.my_no}</td>
			<td>${myname.username}</td>
			<td>${myname.userage}</td>
			<td><a href="detail?my_no=${myname.my_no}"><button>더보기</button></a></td>
			
		</tr>
		</c:forEach>
	</table>
</body>
</html>