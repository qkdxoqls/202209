<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${post.p_title}</title>

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
			  padding-top: 60px;
			  background: #EEE;
			  padding: 10%;
			  padding-top: 200px;
			}
			
			body, html {
			  height: 120%;
			}
			
			* {
			  box-sizing: border-box;
			}
			
			#subinc{
				padding-top: 30px;
				width: 1080px;
			}
</style>
</head>
<body>
	
	<header>
		<div id="header" class="header">
			<a href="findAll"><button>목록으로</button></a>
			${post.p_title} - ${post.p_writer}
		</div>
	</header>	
	<div id="contents" class="contents">
	<table>
		
		<tr>
			<td colspan="3"><video controls="controls"  class="video-stream html5-main-video" autoplay src="/resources/upload2/${post.p_filename}" width="950px;"></video></td>
		</tr>
	</table>
	<table id=subinc>
		<tr>
			<th>작성자 : ${post.p_writer}</th>
			<td>조회수 <fmt:formatNumber value="${post.p_hits}" pattern="###,###,###,###"/>회</td>
			<td>${post.p_date}</td>
		</tr>
		<tr>
			<td>설명 <br>${post.p_contents}</td>
		</tr>
				
		<c:if test="${sessionScope.loginId eq 'admin' }">
		<tr>
			<td><a href="delete?p_no=${post.p_no}"><button>삭제</button></a></td>
		</tr>
		</c:if>
	</table>
	</div>
	
	<div>
		<c:if test="${empty seeionScope.loginId}">
			
		</c:if>
	</div>
	
	<div id="footer" class="footer">
		
	</div>
</body>
</html>