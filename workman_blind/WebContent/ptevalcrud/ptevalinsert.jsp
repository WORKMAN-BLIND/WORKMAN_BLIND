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
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 장단점</dt></dl>
     <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
     <label for="vehicle1"> 근로계약서 작성</label><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 급여</dt></dl>
     <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
     <label for="vehicle2"> 급여일 준수</label><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 근무환경</dt></dl>
     <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
     <label for="vehicle3"> 쾌적한 화장실</label><br><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 관리자성향</dt></dl>
     <input type="checkbox" id="vehicle4" name="vehicle4" value="Boat">
     <label for="vehicle4"> 신뢰할 수 있는</label><br><br>
     <dl class="reputeDetailList-list-dl"><dt><span>•</span> 추가의견</dt></dl>
     <input type="checkbox" id="vehicle5" name="vehicle5" value="Boat">
     <label for="vehicle5"> 사장님이 점심 챙겨주세요</label><br><br>
     <input type="submit" value="알바 평가글 등록">
   </form> 
   
   
</body>
</html>