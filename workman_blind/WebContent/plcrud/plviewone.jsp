<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>해당 알바 구인글 출력</title>
</head>
<body>
<c:choose>
		<c:when test="${sessionScope.type == 1}">
			<div class="navi" style="font-color: gray">
				<p style="text-align: right;">
					<a href="workman?command=companyupdatereq" class="id"><i
						class="fa fa-gamepad" style="font-size: 30px; color: grey;"></i>${sessionScope.id}</a>
					(기업 회원)님 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-sign-out"
						style="font-size: 30px; color: grey;"></i><a
						href="workman?command=logout" class="logout">[로그아웃]</a>&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:when>

		<c:otherwise>
			<div class="navi" style="font-color: gray">
				<p style="text-align: right;">
					<a href="workman?command=memberupdatereq" class="id"><i
						class="fa fa-gamepad" style="font-size: 30px; color: grey;"></i>${sessionScope.id}</a>
					(일반 회원)님 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-sign-out"
						style="font-size: 30px; color: grey;"></i><a
						href="workman?command=logout" class="logout">[로그아웃]</a>&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:otherwise>
	</c:choose>
	
		<span id="Location"><a href="main.jsp">홈으로</a></span> 
	<hr>
	<br>
	<br>

	
	<center>


		<h3>${sessionScope.ptlist.objective}</h3>

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
		<hr>
		<br>

		<h3>해당 기업 정보</h3>

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
		<br>
		<c:choose>
			<c:when
				test="${sessionScope.id == sessionScope.company.companyname}">
				<a href="plcrud/plupdate.jsp">해당 글 수정</a> &nbsp;
				<a href="workman?command=ptlistdelete&listnum=${sessionScope.ptlist.listnum}">해당 건 마감</a>
			</c:when>
			<c:otherwise>

			</c:otherwise>

		</c:choose>
		<br><hr>
		<a href="workman?command=ptevalallcom&companyname=${sessionScope.company.companyname}">이 기업의  생생한 알바 리뷰 </a>


		&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/main.jsp">메인 화면 이동</a>

	</center>
</body>
</html>