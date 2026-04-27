<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="joinok.js"></script>
<jsp:include page="header.jsp"></jsp:include>

<h3 align="center">검사결과입력</h3>

<form name="frm" method="post" action="">
<table border="1" align="center">
	<tr>
		<td align="center">환자번호</td>
		<td><input type="text" name="P_NO"> 예)1001</td>
	</tr>
	<tr>
		<td align="center">검사코드</td>
		<td><select name="T_CODE">
				<option value="">검사명</option>
				<option value="T001">결핵</option>
				<option value="T002">장티푸스</option>
				<option value="T003">수두</option>
				<option value="T004">홍역</option>
				<option value="T005">콜레라</option>
			</select>
		</td>
	</tr>
	<tr>
		<td align="center">검사시작일자</td>
		<td><input type="text" name="T_SDATE"> 예)20200101</td>
	</tr>
	<tr>
		<td align="center">검사상태</td>
		<td>
			<input type="radio" name="T_STATUS" value="1">검사중
			<input type="radio" name="T_STATUS" value="2">검사완료
		</td>
	</tr>
	<tr>
		<td align="center">검사완료일자</td>
		<td><input type="text" name="T_LDATE"> 예)20200101</td>
	</tr>
	<tr>
		<td align="center">검사결과</td>
		<td>
			<input type="radio" name="T_RESULT" value="X">미입력
			<input type="radio" name="T_RESULT" value="P">양성
			<input type="radio" name="T_RESULT" value="N">음성
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="검사결과등록" onclick="return ch();">
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
