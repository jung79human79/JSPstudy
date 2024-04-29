<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>쿠키 삭제 페이지</h1>
	
	<%
		// 쿠키는 삭제에 대한 메소드가 존재하지 않는다 -> 유효기간을 짧게 수정하여 
		// 기간만료로 삭제를 진행한다!
		
		// 쿠키 삭제의 조건
		// 1. 생성되어있는 쿠키와 동일한 이름("first")으로 새로운 쿠키를 생성.
		Cookie cookie1 = new Cookie("first", "");
		Cookie cookie2 = new Cookie("username-localhost-8888", "");
		Cookie cookie3 = new Cookie("username-localhost-8889", "");
		
		// 다른 쿠키의 삭제 물어보기!!!!! 왜 cookie2 , cookie3은 삭제가 안되는지!
		cookie1.setMaxAge(0);
		cookie2.setMaxAge(0);
		cookie3.setMaxAge(0);
		
		response.addCookie(cookie1);
	
	%>

	<a href="Ex01_GetCookie.jsp">쿠키 확인 페이지</a>








</body>
</html>