<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메인 워크맨 페이지</title>
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.type == 1}">
			<div class="navi" style="font-color: white">
				<p style="text-align: right;">
					<a href="workman?command=companyupdatereq" class="id"> <i
						class="far fa-building" style="font-size: 30px; color: white;"></i>
						${sessionScope.id}
					</a> (기업 회원)님 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-sign-out"
						style="font-size: 30px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[로그아웃]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:when>

		<c:otherwise>
			<div class="navi" style="font-color: white">
				<p style="text-align: right; color: white;">
					<a href="workman?command=memberupdatereq" class="id"> <i
						class="far fa-user" style="font-size: 25px; color: white;"></i>${sessionScope.id}</a>
					(일반 회원)님 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i
						class="fas fa-sign-out-alt" style="font-size: 25px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[로그아웃]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:otherwise>

	</c:choose>
	<div class="memberbox" id="header-wrapper">
		<img src="images/worklogo.PNG" width="200" height="100"
			style="display: inline-block" align="left">
	</div>

	<div id="header" class="container">
		<div id="logo">
			<center>
				<h1>
					<a href="#">WORKMAN BLIND</a>
				</h1>
			</center>

			<!-- <h4 style="display: inline-block" style="text-align:right">로그인</h4> -->

		</div>


	</div>
	<div id="menu">
		<center>
			<ul>
				<li><a href="partTimeListView2.jsp" accesskey="1"
					title="parttimestory">알바스토리</a></li>
				<li><a href="#" accesskey="2" title="">기업스토리</a></li>
				<li><a href="workman?command=ptlistall" class="id"
					accesskey="3" title="">알바리뷰</a></li>
				<li><a href="#" accesskey="4" title="">이력서등록/관리</a></li>
				<li><a href="#" accesskey="5" title="">지원관리</a></li>

				<!-- onclick="location.href='${pageContext.request.contextPath}/probono?command=activistUpdateReq'" -->
				<!-- http://localhost:8081/workman_blind/'$%7BpageContext.request.contextPath%7D/workman?command=PTListAll%27 -->
				<!-- <a href="probono?command=activistAll"> -->
				<!-- http://localhost:8081/workman_blind/workman?command=PTListAll -->
				<!-- <input type="hidden" name="command" value="activist">-->
			</ul>
	</div>
	</center>
	</div>
	</div>
	<div class="wrapper">
		<div id="welcome" class="container">
			<div class="title">
				<center>
					<span
						style="font-style: italic; font-weight: bold; font-size: 3em; line-height: 1.0em; color: #0000FF; font-family: arial;">
						<h3>
							알바도중 <span style="color: red">탈주</span>말고 <span
								style="color: #ffe200">리뷰</span>보고 <span style="color: #ffe200">광명</span>찾자
						</h3>
					</span> <br>
					<br>
					<br>
					<br>
					<br>
					<br> <img src="images/workmain.PNG" width="1000" height="300">
				</center>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="three-column" class="container">
			<center>
				<center>
					<h1>최근에 올라온 REVIEW!</h1>
					<br>
					<br>
					<br>
				</center>
				<div>
					<span class="arrow-down"></span>
				</div>
				<div id="tbox1" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/pc.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>샹떼 pc방</h2>
					</div>
					<p>월급이 안밀려요. 사장님이 친절해요 …</p>
					<a href="#" class="button" style="color: white;">더보기</a>
				</div>
				<div id="tbox2" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>투썸플레이스</h2>
					</div>
					<p>칼퇴가능. 사장님이 깐깐해요 …</p>
					<a href="#" class="button">더보기</a>
				</div>
				<div id="tbox3" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/cu.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>CU 충정로프랑스점</h2>
					</div>
					<p>칼퇴 가능해요. 식사제공해요 …</p>
					<a class="button" onclick="moreview3()">더보기</a>
					<!-- <button onclick="moreview3()">더보기</button> -->
					<div id="addView"></div>
				</div>
			</center>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="portfolio" class="container">
			<center>
				<center>
					<h1>최근에 올라온 공고!</h1>
					<br>
					<br>
					<br>
				</center>
				<div class="column1" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/hansot.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>한솥도시락(부산대북문점)</h3>
						<p>리뷰 총 1개</p>
						<br>
						<p>단기</p>
						<br>
						<p>채용중</p>
						<br> <a href="#" class="button button-small">더 알아보기</a>
					</div>
				</div>
				<div class="column2" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/gs25.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>GS25 대구역자이점</h3>
						<p>리뷰 총 1개</p>
						<br>
						<p>장기</p>
						<br>
						<p>채용마감</p>
						<br> <a href="#" class="button button-small">더 알아보기</a>
					</div>
				</div>
				<div class="column3" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/innisfree.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>이마트 천안서북점 이니스프리</h3>
						<p>리뷰 총 2개</p>
						<br>
						<p>시간제</p>
						<br>
						<p>채용중</p>
						<br> <a href="#" class="button button-small">더 알아보기</a>
					</div>
				</div>
				<div class="column4" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>투썸플레이스</h3>
						<p>리뷰 총 754개</p>
						<br>
						<p>단기</p>
						<br>
						<p>채용마감</p>
						<br> <a href="#" class="button button-small">더 알아보기</a>
					</div>
				</div>
		</div>
	</div>
	</center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="footer">
		<div class="container">
			<div class="fbox1">
				<i class="fas fa-map-marker-alt" style="font-size: 50px"></i><br>
				<br>
				<br>
				<br> <span>서울특별시 서초구 서초동 서초대로 1길 <br />102호 워크맨 본사
				</span>
			</div>
			<div class="fbox1">
				<i class="fas fa-phone" style="font-size: 50px"></i><br>
				<br>
				<br>
				<br> <span> +82 02-1234-5678 </span>
			</div>
			<div class="fbox1">
				<i class="far fa-envelope" style="font-size: 50px"></i> <span
					class="icon icon-envelope"></span> <span>workman@business.com</span>
			</div>
		</div>
	</div>

<script src ="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript">
	function moreview3() {
		axios.get('make', {
			params : {
				command : "add"
			}
		}).then(response => {
			document.getElementById("addView").innerHTML = response.data;
		}).catch(error => {
			console.log("예외발생" + error);
		});
	}
</script>
</body>
</html>