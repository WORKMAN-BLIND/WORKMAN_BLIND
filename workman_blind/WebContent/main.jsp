<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ũ�� ������</title>
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
					</a> (��� ȸ��)�� &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-sign-out"
						style="font-size: 30px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[�α׾ƿ�]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
				</p>
			</div>
		</c:when>

		<c:otherwise>
			<div class="navi" style="font-color: white">
				<p style="text-align: right; color: white;">
					<a href="workman?command=memberupdatereq" class="id"> <i
						class="far fa-user" style="font-size: 25px; color: white;"></i>${sessionScope.id}</a>
					(�Ϲ� ȸ��)�� &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <i
						class="fas fa-sign-out-alt" style="font-size: 25px; color: white;"></i><a
						href="workman?command=logout" class="logout" style="color: white;">
						[�α׾ƿ�]</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
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

			<!-- <h4 style="display: inline-block" style="text-align:right">�α���</h4> -->

		</div>


	</div>
	<div id="menu">
		<center>
			<ul>
				<li><a href="partTimeListView2.jsp" accesskey="1"
					title="parttimestory">�˹ٽ��丮</a></li>
				<li><a href="#" accesskey="2" title="">������丮</a></li>
				<li><a href="workman?command=ptlistall" class="id"
					accesskey="3" title="">�˹ٸ���</a></li>
				<li><a href="#" accesskey="4" title="">�̷¼����/����</a></li>
				<li><a href="#" accesskey="5" title="">��������</a></li>

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
							�˹ٵ��� <span style="color: red">Ż��</span>���� <span
								style="color: #ffe200">����</span>���� <span style="color: #ffe200">����</span>ã��
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
					<h1>�ֱٿ� �ö�� REVIEW!</h1>
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
						<h2>���� pc��</h2>
					</div>
					<p>������ �ȹз���. ������� ģ���ؿ� ��</p>
					<a href="#" class="button" style="color: white;">������</a>
				</div>
				<div id="tbox2" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>�����÷��̽�</h2>
					</div>
					<p>Į�𰡴�. ������� ����ؿ� ��</p>
					<a href="#" class="button">������</a>
				</div>
				<div id="tbox3" style="display: inline-block">
					<div class="title">
						<a href="#"><img src="images/cu.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h2>CU ��������������</h2>
					</div>
					<p>Į�� �����ؿ�. �Ļ������ؿ� ��</p>
					<a class="button" onclick="moreview3()">������</a>
					<!-- <button onclick="moreview3()">������</button> -->
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
					<h1>�ֱٿ� �ö�� ����!</h1>
					<br>
					<br>
					<br>
				</center>
				<div class="column1" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/hansot.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>�Ѽܵ��ö�(�λ��Ϲ���)</h3>
						<p>���� �� 1��</p>
						<br>
						<p>�ܱ�</p>
						<br>
						<p>ä����</p>
						<br> <a href="#" class="button button-small">�� �˾ƺ���</a>
					</div>
				</div>
				<div class="column2" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/gs25.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>GS25 �뱸��������</h3>
						<p>���� �� 1��</p>
						<br>
						<p>���</p>
						<br>
						<p>ä�븶��</p>
						<br> <a href="#" class="button button-small">�� �˾ƺ���</a>
					</div>
				</div>
				<div class="column3" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/innisfree.jpg" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>�̸�Ʈ õ�ȼ����� �̴Ͻ�����</h3>
						<p>���� �� 2��</p>
						<br>
						<p>�ð���</p>
						<br>
						<p>ä����</p>
						<br> <a href="#" class="button button-small">�� �˾ƺ���</a>
					</div>
				</div>
				<div class="column4" style="display: inline-block">
					<div class="box">
						<a href="#"><img src="images/twosome.png" alt=""
							class="image image-full" width="300" height="300" /></a>
						<h3>�����÷��̽�</h3>
						<p>���� �� 754��</p>
						<br>
						<p>�ܱ�</p>
						<br>
						<p>ä�븶��</p>
						<br> <a href="#" class="button button-small">�� �˾ƺ���</a>
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
				<br> <span>����Ư���� ���ʱ� ���ʵ� ���ʴ�� 1�� <br />102ȣ ��ũ�� ����
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
			document.getElementById("addView").innerHTML = "<div class='txtBox'><a href='partTimeEvalView2.jsp' class='button-small'>�ڼ�������</a> "+response.data+"</div>";
		}).catch(error => {
			console.log("���ܹ߻�" + error);
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
				console.log("���ܹ߻�" + error);
			});
		}, 3000);
	}
	
	/* function myFunction() {
		  setTimeout(function(){ alert("Hello"); }, 3000);
		} */
	
</script>

</body>
</html>