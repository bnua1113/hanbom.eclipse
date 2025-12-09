<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<% request.CharacterEncoding("UTF-8") %>;

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="check.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<h2 align="center">홈쇼핑 회원 등록</h2>
<form name="frm" action="" method="post">
<table border="1" align="center">
	<tr>
		<td align="center"> 회원번호(자동발생)
		<td> <input type="text" name="custno">
	</tr>
	<tr>
		<td align="center"> 회원성명
		<td> <input type="text" name="custname">
	</tr>
	<tr>
		<td align="ce	nter"> 회원전화
		<td> <input type="text" name="phone">
	</tr>
	<tr>
		<td align="center"> 회원주소
		<td> <input type="text" name="address" size="50">
	</tr>
	<tr>
		<td align="center"> 가입일자
		<td> <input type="text" name="joindate">
	</tr>
	<tr>
		<td align="center"> 고객등급[A:VIP, B:일반, C:직원]
		<td> <input type="text" name="grade">
	</tr>
	<tr>
		<td align="center"> 도시코드
		<td> <input type="text" name="city">
	</tr>
	<tr>
		<td colspan="2" align="center"> 
		<input type="submit" value="등 록" onclick="return joinCheck()">
		<input type="submit" value="조 회">
	</tr>
</table>
</form>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
