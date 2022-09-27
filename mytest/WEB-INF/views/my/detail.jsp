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
	table{
		width : 400px;
		text-align: center;
		margin: auto;
		border: 1px solid;
	}
	
	#del{
		margin: auto;
		text-align: center;
		padding-top: 20px;
	}
	
</style>
</head>
<body>
	<a href="findAll">뒤로</a>
	<table>
		<tr>
			<td rowspan="8"><img alt="사진또는 이미지가 없습니다." src="/resources/upload/${myname.my_filename}" width="100px;"></td>
			<th id="topsub">이름</th>
			<td>${myname.username}</td>
		</tr>
		<tr>
			<th id="topsub">나이</th>
			<td>${myname.userage}</td>
		</tr>
		<tr>
			<th id="topsub">국적</th>
			<td>${myname.nation}</td>
		</tr>
		<tr>	
			<th id="topsub">성별</th>
			<td>${myname.usersex}</td>
		</tr>	
		<tr>
			<th id="topsub">취미</th>
			<td>${myname.hobby}</td>
		</tr>	
		<tr>	
			<th id="topsub">직업</th>
			<td>${myname.job}</td>
		</tr>
		<tr>	
			<th id="topsub">생일</th>
			<td>${myname.userbrt}</td>
		</tr>
		<tr>	
			<th id="topsub">가입일</th>
			<td>${myname.userdate}</td>
		</tr>
	
	</table>
	<br>
	<table>
		<tr>
			<td>잔고</td>
		</tr>
		<tr>
			<td><fmt:formatNumber value="${myname.usermoney}" pattern="###,###,###,###"/>원</td>
		</tr>
	</table>
	<div id="del">
		<a href="delete?my_no=${myname.my_no}"><button>회원 삭제</button></a>
	</div>
</body>
</html>