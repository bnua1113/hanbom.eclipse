<%-- 백엔드 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

String sql = "insert into member_tbl_02 values(?,?,?,?,?,?,?)";

PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.setString(1, custno);
pstmt.setString(2, custname);
pstmt.setString(3, phone);
pstmt.setString(4, address);
pstmt.setString(5, joindate);
pstmt.setString(6, grade);
pstmt.setString(7, city);

pstmt.executeUpdate();
%>

<script>
	alert("정상적으로 등록되었습니다.");
	location.href="join.jsp";
</script>

</body>
</html>
