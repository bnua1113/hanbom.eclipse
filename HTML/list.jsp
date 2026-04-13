<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<h3 align="center">회원목록조회</h3>

<table border="1" align="center">
	<tr align="center">
		<td width=100>회원번호</td>
		<td width=100>회원성명</td>
		<td width=100>전화번호</td>
		<td width=100>주소</td>
		<td width=100>가입일자</td>
		<td width=100>고객등급</td>
		<td width=100>거주지역</td>
	</tr>
<%
	String sql = "select * from member_tbl_02 order by custno";

PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();

while (rs.next()){
%>
	<tr align="center">
		<td> <%=rs.getString("custno")%></td>
		<td> <%=rs.getString("custname")%></td>
		<td> <%=rs.getString("phone")%></td>
		<td> <%=rs.getString("address")%></td>
		<td> <%=rs.getString("joindate")%></td>
		<td> <%
			String grade = rs.getString("grade");
			switch(grade){
				case "A": out.print("VIP"); break;
				case "B": out.print("일반"); break;
				case "C": out.print("직원"); break;
			}
		%></td>
	<td> <%=rs.getString("city")%></td>
</tr>
<%
		}
%>
</table>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
