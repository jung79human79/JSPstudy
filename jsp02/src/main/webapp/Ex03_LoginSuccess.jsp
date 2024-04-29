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
	// get방식의 쿼리스트링 문법 사용시 데이터 꺼내오기!
	// String id = request.getParameter("data");
	
	// forward 방식으로 넘온 데이터 꺼내오기!
	// getAttribute()의 반환타입은 Object이므로 변수에 저장할때에는 형변환이 필요하다!
	String id = (String)request.getAttribute("id");
	%>
	<h1><%=id %>님 환영합니다!</h1>
	<a href="Ex03_Login.html">로그아웃</a>
	</fieldset>
</body>
</html>