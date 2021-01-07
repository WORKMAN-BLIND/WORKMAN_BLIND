<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
<% 	
	String url = application.getContextPath() + "/";
	System.out.println(url);
%>
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>해당 알바 구인글 출력</title>
</head>
<body>
	<br>
	<br>
	<br>
	<center>


		<h3>${sessionScope.ptlist.objective}</h3>
		<hr>
		<p>
		<table border="1">
			<tr>
				<th>근무시간</th>
				<th>시급</th>
				<th>근무기간</th>
			</tr>
			<tr>
				<td>${sessionScope.ptlist.worktime}</td>
				<td>${sessionScope.ptlist.hourlywage}</td>
				<td>${sessionScope.ptlist.workperiod}</td>
			</tr>
		</table>

		<br>
		<br>
		<br>

		<h3>해당 기업 정보</h3>
		<hr>
		<p>
		<table border="1">
			<tr>
				<th>기업명</th>
				<th>업종</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
			<tr>
				<td>${sessionScope.company.companyname}</td>
				<td>${sessionScope.company.category}</td>
				<td>${sessionScope.company.companyloc}</td>
				<td>${sessionScope.company.companynum}</td>
			</tr>
		</table>
		<hr><br>
		<c:choose>
			<c:when
				test="${sessionScope.id == sessionScope.company.companyname}">
				<a href="plcrud/plupdate.jsp">해당 글 수정하기</a>
				<br>
				<a href="workman?command=ptlistdelete&listnum=${sessionScope.ptlist.listnum}">해당 건 마감하기</a>
			</c:when>
			<c:otherwise>

			</c:otherwise>

		</c:choose>
		<br><hr>
		<a href="workman?command=pteval">해당 기업에서 일해본 사람들의 알바 리뷰 보기</a>


		&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/main.jsp">메인 화면 이동</a>

	</center>
</body>
</html>