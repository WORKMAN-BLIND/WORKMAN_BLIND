<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
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
					</a> (占쏙옙占� 회占쏙옙)占쏙옙 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-sign-out"
						style="font-size: 30px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[占싸그아울옙]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:when>

		<c:otherwise>
			<div class="navi" style="font-color: white">
				<p style="text-align: right; color: white;">
					<a href="workman?command=memberupdatereq" class="id"> <i
						class="far fa-user" style="font-size: 25px; color: white;"></i>${sessionScope.id}</a>
					(占싹뱄옙 회占쏙옙)占쏙옙 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i
						class="fas fa-sign-out-alt" style="font-size: 25px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[占싸그아울옙]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
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

			<!-- <h4 style="display: inline-block" style="text-align:right">占싸깍옙占쏙옙</h4> -->

		</div>


	</div>
	<div id="menu">
		<center>
			<ul>
				<li><a href="partTimeListView2.jsp" accesskey="1"
					title="parttimestory">占싯바쏙옙占썰리</a></li>
				<li><a href="#" accesskey="2" title="">占쏙옙占쏙옙占쏙옙訝�</a></li>
				<li><a href="workman?command=ptlistall" class="id"
					accesskey="3" title="">占싯바몌옙占쏙옙</a></li>
				<li><a href="#" accesskey="4" title="">占싱력쇽옙占쏙옙占�/占쏙옙占쏙옙</a></li>
				<li><a href="#" accesskey="5" title="">占쏙옙占쏙옙占쏙옙占쏙옙</a></li>

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
							占싯바듸옙占쏙옙 <span style="color: red">탈占쏙옙</span>占쏙옙占쏙옙 <span
								style="color: #ffe200">占쏙옙占쏙옙</span>占쏙옙占쏙옙 <span style="color: #ffe200">占쏙옙占쏙옙</span>찾占쏙옙
						</h3>
						
					</span> <br>
					<br>
					<br>
					<br>
					<br>
					<br> <img src="images/workmain.PNG" width="1000" height="300" onclick = "settimeoutUtube()">
					<br>
					<br>
					<div id="utubeView"></div>
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
					<h1>占쌍근울옙 占시띰옙占� REVIEW!</h1>
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
						<h2>占쏙옙占쏙옙 pc占쏙옙</h2>
					</div>
					<p>占쏙옙占쏙옙占쏙옙 占싫밀뤄옙占쏙옙. 占쏙옙占쏙옙占쏙옙占� 친占쏙옙占쌔울옙 占쏙옙</p>
					<a href="#" class="button" style="color: white;">占쏙옙占쏙옙占쏙옙</a>
				</div>
				<div id="tbox2" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>占쏙옙占쏙옙占시뤄옙占싱쏙옙</h2>
					</div>
					<p>칼占쏜가댐옙. 占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙萬占� 占쏙옙</p>
					<a href="#" class="button">占쏙옙占쏙옙占쏙옙</a>
				</div>
				<div id="tbox3" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/cu.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>CU 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙</h2>
					</div>
					<p>칼占쏙옙 占쏙옙占쏙옙占쌔울옙. 占식삼옙占쏙옙占쏙옙占쌔울옙 占쏙옙</p>
					<a class="button" onclick="moreview3()">占쏙옙占쏙옙占쏙옙</a>
					<!-- <button onclick="moreview3()">占쏙옙占쏙옙占쏙옙</button> -->
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
					<h1>占쌍근울옙 占시띰옙占� 占쏙옙占쏙옙!</h1>
					<br>
					<br>
					<br>
				</center>
				<div class="column1" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/hansot.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>占싼솥듸옙占시띰옙(占싸삼옙占싹뱄옙占쏙옙)</h3>
						<p>占쏙옙占쏙옙 占쏙옙 1占쏙옙</p>
						<br>
						<p>占쌤깍옙</p>
						<br>
						<p>채占쏙옙占쏙옙</p>
						<br> <a href="#" class="button button-small">占쏙옙 占싯아븝옙占쏙옙</a>
					</div>
				</div>
				<div class="column2" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/gs25.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>GS25 占쎈구占쏙옙占쏙옙占쏙옙占쏙옙</h3>
						<p>占쏙옙占쏙옙 占쏙옙 1占쏙옙</p>
						<br>
						<p>占쏙옙占�</p>
						<br>
						<p>채占쎈마占쏙옙</p>
						<br> <a href="#" class="button button-small">占쏙옙 占싯아븝옙占쏙옙</a>
					</div>
				</div>
				<div class="column3" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/innisfree.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>占싱몌옙트 천占싫쇽옙占쏙옙占쏙옙 占싱니쏙옙占쏙옙占쏙옙</h3>
						<p>占쏙옙占쏙옙 占쏙옙 2占쏙옙</p>
						<br>
						<p>占시곤옙占쏙옙</p>
						<br>
						<p>채占쏙옙占쏙옙</p>
						<br> <a href="#" class="button button-small">占쏙옙 占싯아븝옙占쏙옙</a>
					</div>
				</div>
				<div class="column4" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>占쏙옙占쏙옙占시뤄옙占싱쏙옙</h3>
						<p>占쏙옙占쏙옙 占쏙옙 754占쏙옙</p>
						<br>
						<p>占쌤깍옙</p>
						<br>
						<p>채占쎈마占쏙옙</p>
						<br> <a href="#" class="button button-small">占쏙옙 占싯아븝옙占쏙옙</a>
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
				<br> <span>占쏙옙占쏙옙특占쏙옙占쏙옙 占쏙옙占십깍옙 占쏙옙占십듸옙 占쏙옙占십댐옙占� 1占쏙옙 <br />102호 占쏙옙크占쏙옙 占쏙옙占쏙옙
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
<script type="text/javascript" >
	function moreview3() {
		axios.get('make', {
			params : {
				command : "add"
			}
		}).then(response => {
			document.getElementById("addView").innerHTML = "<div class='txtBox'><a href='partTimeEvalView2.jsp' class='button-small'>占쌘쇽옙占쏙옙占쏙옙占쏙옙</a> "+response.data+"</div>";
		}).catch(error => {
			console.log("폼보기 에러" + error);
		});
	}
	
	function settimeoutUtube() {
		setTimeout(function utubeview() {
			axios.get('make', {
				params : {
					command : "utube"
				}
			}).then(response => {
				document.getElementById("utubeView").innerHTML = response.data;
			}).catch(error => {
				console.log("폼보기 에러" + error);
			});
		}, 3000);
	}
	
	/* function myFunction() {
		  setTimeout(function(){ alert("Hello"); }, 3000);
		} */
	
</script>

</body>
</html>