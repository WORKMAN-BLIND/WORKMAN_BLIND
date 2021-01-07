<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메세지입니다</title>
</head>
<body bgcolor="lightgray" text="black">
&nbsp;
<p>
<p>
<p>
<p>
<p>
<p>
<p>
<p>
<center>
<img src="https://media.giphy.com/media/9Vo3RrXKk9Z6mGzfyK/giphy.gif" width=300>
<p>
<%
out.println(request.getAttribute("msg"));
%>
<br>
<p>
<p>
<p>
<p>
<button onclick="location.href='index.html'">초기 화면으로 이동</button>
<br>
<a href="workman?command=main">메인으로 가기</a></center>
</body>
</html>