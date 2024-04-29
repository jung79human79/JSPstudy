<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align = "center">
	<fieldset>
	<%
	String pw = request.getParameter("data");
	%>

	<h1>로그인 정보를 다시 확인하세요. 입력한 비밀번호 : <%= pw %></h1>
	<a href="Ex03_Login.html">로그인페이지</a>
	</fieldset>
</body>
</html>