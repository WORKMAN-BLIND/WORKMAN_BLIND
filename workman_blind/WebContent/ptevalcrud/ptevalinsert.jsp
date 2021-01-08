<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="${pageContext.request.contextPath}/workman" method="post"> 
   	<input type="hidden" name="command" value="ptevalinsert">
   	 <input type="hidden" name="userid" value = "${sessionScope.id}" readonly>
	 <input type="hidden" name="companyname" value = "${sessionScope.companyname}" readonly>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 장단점</dt></dl>
     <input type="checkbox" id="proscons" name="proscons">
     <label for="proscons"> 근로계약서 작성</label><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 급여</dt></dl>
     <input type="checkbox" id="wagedelay" name="wagedelay">
     <label for="wage_delay"> 급여일 준수</label><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 근무환경</dt></dl>
     <input type="checkbox" id="env" name="env">
     <label for="env"> 쾌적한 화장실</label><br><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 관리자성향</dt></dl>
     <input type="checkbox" id="incline" name="incline">
     <label for="incline"> 신뢰할 수 있는</label><br><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 추가의견</dt></dl>
     <input type="checkbox" id="opinion" name="opinion">
     <label for="opinion"> 사장님이 점심 챙겨주세요</label><br><br>
     <input type="submit" value="알바 평가글 등록">
   </form> 
   
   
</body>
</html>

