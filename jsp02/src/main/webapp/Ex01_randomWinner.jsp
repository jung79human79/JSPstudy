<%@page import="java.util.Random"%>
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
		1. CreateInput.jsp 에서 넘겨주는
		   title, item 데이터 꺼내오기!
		   
		2. 가지고 온 item의 개수에 따라 랜덤으로 한가지 주체 출력!
		
		
	 -->
	
	
	랜덤당첨결과<br>
	<% 
		// 요청값으로부터 데이터 꺼내오기!
		String title = request.getParameter("title");
	%>
	<%= title %>
	<br>
	
	<%
		// 다수의 데이터가 하나의 그룹으로 지정되어 있을때 꺼내오는 방법!
		String[] menu = request.getParameterValues("random1");
	%>
	<% 
		// 랜덤수 생성하기
		Random ran = new Random();
	    int ran1 = ran.nextInt(menu.length);
	%>

	<%= menu[ran1] %>
	
	<%= ran1 %>
	
</body>
</html>