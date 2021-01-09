<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>해당 기업 모든 알바 평가글 조회 페이지</title>
<link href="${pageContext.request.contextPath}/css/test2.css"
	rel="stylesheet">
</head>
<body id="ReputeList" class="story albaRepute scroll">
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
	<div id="Container">
		<div id="Location">
			<a href="main.jsp">홈으로</a>
		</div>

		<div class="head">

			<div class="heading albaRepute"></div>


		</div>

		<div class="reputeList">
			<div id="ReputeCareerList"></div>
			<script type="text/javascript">
				ReputeCLS.viewReputeCareerList();
			</script>

			<div class="repute-select">

				<center>
					<img src="${pageContext.request.contextPath}/images/알바리뷰.jpg"
						border="0" width="700" height="170">
				</center>
				<!--	<h2 class="repute-select__h2">주요 태그별 리뷰 보기</h2>
				<ul class="repute-select__list">
					<li class="repute-select__list_all on"><a
						href="/story/repute/ReputeList.asp#ReputeCareerList"><em>전체<br>
								리뷰 보기
						</em></a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT1#ReputeCareerList"><em>취업스펙</em><br>
							도움 되는 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT2#ReputeCareerList"><em>사회경험</em><br>
							쌓기 좋은 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT3#ReputeCareerList"><em>동료</em>들이<br>
							좋은 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT4#ReputeCareerList"><em>칼퇴근</em><br>
							가능한 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT5#ReputeCareerList"><em>충분한
								교육</em><br> 제공하는 곳</a></li>

					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT6#ReputeCareerList"><em>친구랑
								함께</em><br> 가능한 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT7#ReputeCareerList"><em>편안한
								식사</em><br> 보장되는 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT8#ReputeCareerList"><em>급여지급</em><br>
							확실한 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT9#ReputeCareerList"><em>근무환경</em><br>
							좋은 곳</a></li>
					<li><a
						href="/story/repute/ReputeList.asp?orderby=TAGGROUPCNT10#ReputeCareerList"><em>관리자가</em><br>
							좋은 곳</a></li>
					<li class="repute-select__list_all2"><a
						href="/story/repute/ReputeList.asp?#ReputeCareerList"><em>전체<br>
								리뷰 보기
						</em></a></li>
				</ul> -->
			</div>
			<script type="text/javascript">
				if ($(".repute-select__list li.on").length == 0) {
					$(".repute-select__list_all").addClass("on");
				}

				$(".repute-select-next")
						.click(
								function(e) {
									$(".repute-select__list")
											.stop()
											.animate(
													{
														marginLeft : "-=1002px"
													},
													500,
													function() {
														$(
																".repute-select__list")
																.css(
																		"margin-left",
																		"0")
																.append(
																		$(".repute-select__list>li:lt(6)"));
													});
									e.preventDefault();
								});
				$(".repute-select-prev").click(
						function(e) {
							$(".repute-select__list").prepend(
									$(".repute-select__list>li:gt(5)")).css(
									"margin-left", "-1070px");
							$(".repute-select__list").stop().animate({
								marginLeft : "+=1070px"
							}, 500);
							e.preventDefault();
						});

				var objLeft = $(".repute-select__list li.on").position().left;
				var objWidth = $(".repute-select__list").width() / 2;

				if (objLeft > objWidth) {
					$(".repute-select__list").stop().animate(
							{
								marginLeft : "-=1002px"
							},
							50,
							function() {
								$(".repute-select__list").css("margin-left",
										"0").append(
										$(".repute-select__list>li:lt(6)"));
							});
				}
			</script>

			<form method="post" name="formSrchPublic" id="formSrchPublic"
				action="workman">

				<br>
		</div>
		<div class="formList">
			<div class="listTop">
				<!--p class="total">총 <span></span>건</p-->
				<p class="total">
					<!-- <span class="cntRepute"><span></span> 리뷰수 <em>341,481</em>건</span>
						<span class="cntCompany"><span></span> 기업수 <em>208,662</em>개</span> 나중에-->
				</p>
			</div>
			<hr>

			<h3>
				<center>${sessionScope.company.companyname}</center>
			</h3>
			<div align="right">
				<c:choose>
					<c:when
						test="${sessionScope.type == 2 && sessionScope.comname == sessionScope.company.companyname}">
						<!--  	<a href="plinsert.jsp">알바 구인글 작성 (기업)</a> -->
						<button type="button"
							onclick="location.href='pecrud/peinsert.jsp'">해당 기업 알바리뷰
							글 작성</button>
						<br>
					</c:when>
					<c:otherwise>
					</c:otherwise>

				</c:choose>
			</div>
			<br>
			<hr>

			<table>
				<tr>
					<td class="cnt"></td>
					<td class="repcnt">글번호</td>
					<td class="repcnt">작성자 ID</td>
					<td class="repcnt">장단점</td>
					<td class="repcnt">급여 지불</td>
					<td class="repcnt">근무환경</td>
					<td class="repcnt">관리자 성향</td>
					<td class="repcnt">추가의견</td>
				</tr>

				<c:forEach var="list" items="${sessionScope.ptevalallcom}"
					varStatus="status">
					<tr>
						<td class="cnt">${status.count}</td>
						<td class="repcnt"><a
							href="workman?command=ptevalcom&evalnum=${list.evalnum}">${list.evalnum}</a></td>
						<td class="repcnt">${list.userid.userid}</td>
						<td class="repcnt">${list.proscons}</td>
						<td class="repcnt">${list.wagedelay}</td>
						<td class="repcnt">${list.environment}</td>
						<td class="repcnt">${list.incline}</td>
						<td class="repcnt">${list.opinion}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</form>

		<!--  	<c:choose>
						<c:when
							test="${sessionScope.type == 2 && sessionScope.comname == sessionScope.company.companyname}">


							<table>
								<c:forEach var="list" items="${sessionScope.ptevalallcom}"
									varStatus="status">

									<tr>
										<td class="cnt"></td>
										<td class="repcnt">글번호</td>
										<td class="repcnt">작성자 ID</td>
										<td class="repcnt">장단점</td>
										<td class="repcnt">급여 지불</td>
										<td class="repcnt">근무환경</td>
										<td class="repcnt">관리자 성향</td>
										<td class="repcnt">추가의견</td>
										<td class="repcnt"></td>
										<td class="repcnt"></td>
										

									</tr>

									<tr>
										<td class="cnt">${status.count}</td>
										<td class="repcnt">${list.evalnum}</td>
										<td class="repcnt">${list.userid.userid}</td>
										<td class="repcnt">${list.proscons}</td>
										<td class="repcnt">${list.wagedelay}</td>
										<td class="repcnt">${list.environment}</td>
										<td class="repcnt">${list.incline}</td>
										<td class="repcnt">${list.opinion}</td>
										<td>
											<button type="button"
												onclick="location.href='${pageContext.request.contextPath}/workman?evalnum=${list.evalnum}&command=ptevalupdatereq'">
												수정하기</button>
										</td>

										<td>
											<button type="button"
												onclick="location.href='${pageContext.request.contextPath}/workman?evalnum=${list.evalnum}&command=ptevaldelete'">
												삭제하기</button>
										</td>
									</tr>
								</c:forEach>
							</table>
						</c:when>
						
						<c:otherwise>
							
							<table>
								<c:forEach var="list" items="${sessionScope.ptevalallcom}"
									varStatus="status">

									<tr>
										<td class="cnt"></td>
										<td class="repcnt">글번호</td>
										<td class="repcnt">작성자 ID</td>
										<td class="repcnt">장단점</td>
										<td class="repcnt">급여 지불</td>
										<td class="repcnt">근무환경</td>
										<td class="repcnt">관리자 성향</td>
										<td class="repcnt">추가의견</td>

										

									</tr>

									<tr>
										<td class="cnt">${status.count}</td>
										<td class="repcnt">${list.evalnum}</td>
										<td class="repcnt">${list.userid.userid}</td>
										<td class="repcnt">${list.proscons}</td>
										<td class="repcnt">${list.wagedelay}</td>
										<td class="repcnt">${list.environment}</td>
										<td class="repcnt">${list.incline}</td>
										<td class="repcnt">${list.opinion}</td>
										
									</tr>
								</c:forEach>
							</table>
							
						</c:otherwise>

					</c:choose>
				</div>

			</form> -->

		<!-- 페이징 -->
		<script type="text/javascript">
			getPagingJob(1, 208662, 20, 10, "");
		</script>
		<div class="pagenation img img4">
			<span class="page"><a href="?page=1&amp;pagesize=20"
				class="on">1</a><a href="?page=2&amp;pagesize=20">2</a><a
				href="?page=3&amp;pagesize=20">3</a><a
				href="?page=4&amp;pagesize=20">4</a><a
				href="?page=5&amp;pagesize=20">5</a><a
				href="?page=6&amp;pagesize=20">6</a><a
				href="?page=7&amp;pagesize=20">7</a><a
				href="?page=8&amp;pagesize=20">8</a><a
				href="?page=9&amp;pagesize=20">9</a><a
				href="?page=10&amp;pagesize=20">10</a></span><span class="total"
				onclick="$(this).toggleClass('oneBtn');"><span
				class="totalBtn"><span class="state">1 / 10434</span><a
					href="?page=1&amp;pagesize=20" class="first">맨 처음으로</a></span></span><span
				class="pageBtn"><a href="?page=11&amp;pagesize=20"
				class="next">&gt;</a> </span>
		</div>
		<!-- //페이징 -->
</body>
</html>


