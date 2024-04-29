<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
		1. HTML에서 보내주는 데이터 꺼내오기 -> 요청값으로 부터 데이터 꺼내오기!
		2. 꺼내진 데이터 화면에 보이도록 출력! 
	 -->
	
	<%
	// 0. 요청값을 인코딩 하는 작업!
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	response.setCharacterEncoding("uft-8");
	
	// request -> 내장매체
	// 1.
	String name = request.getParameter("name");
	// 2. 방법1
	// out.print(name);
	%>
	<!-- 2. 방법2 -->
	입력된 이름은 : <%= name %>
</body>
</html>