<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>알바 구인 글 작성 페이지</title>
</head>
<center>
<body>
<br><br><br>

<h3></h3>
<hr><p>

<form action="${pageContext.request.contextPath}/workman" method="post">                                 
	<input type="hidden" name="command" value="ptlistinsert">
	<table border="1">
		<tr>
			<td>기업명</td><td><input type="text" name="companyname" value = "${sessionScope.id}" readonly></td>
		</tr>
		<tr>
	 		<td>근무시간</td><td><input type="text" name="worktime"></td>
		</tr>
		<tr>	
			<td>시급</td><td><input type="text" name="hourlywage"></td>
	 	</tr>
	 	<tr>
	 		<td>근무기간</td><td><input type="text" name="workperiod"></td>
	 	</tr>
	 	<tr>
	 		<td>목적</td><td><input type="text" name="objective"></td>
	 	</tr>

	 	<tr>

	 		<td colspan="5"><input type="submit" value="알바 구인글 등록">&nbsp;&nbsp;&nbsp;
	 		<input type="reset" value="입력값 초기화"></td>
	 	</tr>
	</table>
</form>
<br><br><br>
<a href="workman?command=main">메인으로 가기</a>

</center>
</body>
</html>