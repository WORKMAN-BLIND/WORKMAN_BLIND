<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>기업 평가 글 작성 페이지</title>
</head>
<center>
<body>
<br><br><br>

<h3></h3>
<hr><p>

<form action="${pageContext.request.contextPath}/workman" method="post"> 

   	<input type="hidden" name="command" value="ptevalinsert">
   	
   	 <input type="hidden" name="userid" value = "${sessionScope.id}" readonly>
	 <input type="hidden" name="companyname" value = "${sessionScope.comname}" readonly>
	 
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 장단점</dt></dl>
     
     <input type="checkbox" id="proscons" name="proscons" value = "휴식시간 많음">
     <label for="proscons"> 휴식시간 많음</label><br>
     <input type="checkbox" id="proscons" name="proscons" value = "휴식시간 적음">
     <label for="proscons"> 휴식시간 적음</label><br>
     <input type="checkbox" id="proscons" name="proscons" value = "칼퇴근 가능">
     <label for="proscons"> 칼퇴근 가능</label><br>
     <input type="checkbox" id="proscons" name="proscons" value = "칼퇴근 어려움">
     <label for="proscons"> 칼퇴근 어려움</label><br>
     
     
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 급여</dt></dl>
     
     <input type="checkbox" id="wagedelay" name="wagedelay" value = "급여일 준수">
     <label for="wage_delay"> 급여일 준수</label><br>
     <input type="checkbox" id="wagedelay" name="wagedelay" value = "급여일 미준수">
     <label for="wage_delay"> 급여일 미준수</label><br>
     <input type="checkbox" id="wagedelay" name="wagedelay" value = "높은 급여">
     <label for="wage_delay"> 높은 급여</label><br>
     <input type="checkbox" id="wagedelay" name="wagedelay" value = "낮은 급여">
     <label for="wage_delay"> 낮은 급여</label><br>
     
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 근무환경</dt></dl>
     
     <input type="checkbox" id="environment" name="environment" value = "깨끗한 근무환경">
     <label for="environment"> 깨끗한 근무환경</label><br><br>
     <input type="checkbox" id="environment" name="environment" value = "지저분한 근무환경">
     <label for="environment"> 지저분한 근무환경</label><br><br>
     <input type="checkbox" id="environment" name="environment" value = "텃세 없음">
     <label for="environment"> 텃세 없음</label><br><br>
     <input type="checkbox" id="environment" name="environment" value = "텃세 심함">
     <label for="environment"> 텃세 심함</label><br><br>
     
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 관리자성향</dt></dl>
     
     <input type="checkbox" id="incline" name="incline" value = "친절함">
     <label for="incline"> 친절함</label><br><br>
     <input type="checkbox" id="incline" name="incline" value = "불친절함">
     <label for="incline"> 불친절함</label><br><br>
     <input type="checkbox" id="incline" name="incline" value = "신세대 스타일">
     <label for="incline"> 신세대 스타일</label><br><br>
     <input type="checkbox" id="incline" name="incline" value = "꼰대 스타일">
     <label for="incline"> 꼰대 스타일</label><br><br>
     
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 추가의견</dt></dl>
     
     <input type="text" id="opinion" name="opinion">
     
     <br><hr>
     <input type="submit" value="알바 평가글 등록">
   </form> 
   
   

<br><br><br>
<a href="workman?command=main">메인으로 가기</a>

</center>
</body>
</html>