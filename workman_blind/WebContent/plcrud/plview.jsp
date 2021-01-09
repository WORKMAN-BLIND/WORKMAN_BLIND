<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>알바 구인 글 목록 조회 페이지</title>
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

	<!-- Container -->
	<div id="Container">
		<!-- location -->
		<div id="Location">
			<a href="${pageContext.request.contextPath}/main.jsp">홈으로</a>
			<!-- &gt; -->
			<!--  <a href="/story/">알바스토리</a> &gt; <strong>알바리뷰</strong> -->
		</div>







		<div class="head"></div>

		<div class="reputeList">
			<!-- 작성가능한 리뷰기업목록 -->
			<div id="ReputeCareerList"></div>
			<script type="text/javascript">
				ReputeCLS.viewReputeCareerList();
			</script>
			<!-- //작성가능한 리뷰기업목록 -->

			<div id="GlobalBannerWrap">
				<div id="GlobalBanner">

					<center>
						<p class="sideCenter">
							<a href="http://vroong.alba.co.kr/job/brand/" target="_blank"><img
								src="//image.alba.kr/adbanner/pc-sub-480_80/201215_vroong_480-80.jpg"
								alt="프리미엄 배송 서비스 부릉라이더 모집중"></a>
						</p>
					</center>

				</div>
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

			<form method="get" name="formSrchPublic" id="formSrchPublic"
				action="/story/repute/ReputeList.asp">
				<div class="searchBox">

					<span>기업명</span>&nbsp;<input type="text" title="기업명 입력"
						id="schtext" name="schtext" value="" maxlength="50">&nbsp;&nbsp;
					<input type="submit" class="searchBtn" title="검색" value="검색">

					<c:choose>
						<c:when test="${sessionScope.type == 1}">
							<!--  	<a href="plinsert.jsp">알바 구인글 작성 (기업)</a> -->
							<button type="button"
								onclick="location.href='plcrud/plinsert.jsp'">알바 구인글 작성
							</button>
						</c:when>
						<c:otherwise>
						</c:otherwise>

					</c:choose>

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
					<table summary="알바리뷰 기업목록으로 기업의 리뷰정보를 확인할 수 있습니다">
						<caption>구인글 목록</caption>
						<thead>
							<tr>
								<th scope="col" class="cnt">글번호</th>
								<th scope="col" class="repcnt"><a>기업명</a></th>
								<th scope="col" class="workcomnm">공고명</th>
								<th scope="col" class="repcnt"><a>근무 시간<img
										src="//image.alba.kr/story/btn_range_down.gif" alt="내림차순"></a></th>
								<th scope="col" class="jobing"><a>근무기간<img
										src="//image.alba.kr/story/btn_range_down.gif" alt="내림차순"></a></th>
								<th scope="col" class="lastregymd"><a>시급<img
										src="//image.alba.kr/story/btn_range_down.gif" alt="내림차순"></a></th>
							</tr>


						</thead>
						<tbody>

							<c:forEach items="${sessionScope.ptlistall}" var="list">
								<tr>
									<td class="cnt">${list.listnum}</td>
									<td class="repcnt">${list.companyname.companyname}</td>
									<td class="workcomnm"><a
										href="workman?command=ptlist&listnum=${list.listnum}&companyname=${list.companyname.companyname}"><center>${list.objective}</center></a></td>

									<td class="repcnt">${list.worktime}</td>
									<td class="repscore">${list.workperiod}</td>
									<td class="jobing">${list.hourlywage}</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</form>

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


