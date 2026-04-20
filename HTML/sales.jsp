<%@ page import="java.text.DecimalFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<h3 align="center">회원매출조회</h3>
<table border="1" align="center">
	<tr align="center">
		<td>회원번호</td>
		<td>회원성명</td>
		<td>고객등급</td>
		<td>매출</td>
	</tr>
	
	<%
	String sql = "select me.custno, me.custname, me.grade, sum(mo.price) as price"
					+ "from member_tbl_02 me"
					+ "join money_tbl_02 mo on me.custno = mo.custno"
					+ "group by me.custno, me.custname, me.grade"
					+ "order by price desc";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet re = pstmt.executeQuery();
	DecimalFormat df = new DecimalFormat("￦###,###,###");
	while(rs.next()){
		String grade = rs.getString("grade");
		switch(grade){
			case"A":grade="VIP"; break;
			case"B":grade="일반"; break;
			case"C":grade="직원"; break;
		}
		int price=rs.getInt("price");
	%>
	<tr align="center">
		<td><%=rs.getString("custno") %> </td>
		<td><%=rs.getString("custname") %> </td>
		<td><%=grade %> </td>
		<td><%=df.format(price) %> </td>
	</tr>
	<%
	}
	%>

</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
