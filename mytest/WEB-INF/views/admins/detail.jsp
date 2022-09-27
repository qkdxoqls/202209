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
	#tbl {
		margin: auto;
		text-align: center;
		width: 560px;
	}
	
	#cont{
		text-align : center;
		margin:auto;
		border-top-color: blue;
		border: 2px solid;
		width: 560px;
		height: 300px;
	}
</style>
</head>
<body>
	<a href="/my/page3"><button>돌아가기</button></a>
	<table id="tbl">
		<tr>
			<th colspan="3">${admin.a_title}</th>
		</tr>
		<tr>
			<th colspan="3"><hr></th>
		</tr>
		<tr>
			<td>작성자 : ${admin.a_writer}</td>
			<td>날짜 : ${admin.a_date}</td>
			<td>조회수 : ${admin.a_hits}</td>
		</tr>
		</table>
		<table id="cont">
			<tr>
				<td colspan="2"><img alt="" src="/resources/upload/${admin.a_filename}" width="1080px;"></td>
			</tr>
			<tr>
				<td colspan="2">${admin.a_contents}</td>
			</tr>
			<c:if test="${sessionScope.loginId eq 'admin' }">
			<tr>
				<td><a href="delete?a_no=${admin.a_no}"><button>삭제</button></a></td>
			</tr>
			</c:if>
		</table>
	
</body>
</html>