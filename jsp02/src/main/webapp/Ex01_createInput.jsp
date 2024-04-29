<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action = Ex01_randomWinner.jsp>
	랜덤당첨작성<br>
	주제:<input type="text" name = "title"> <br>
	<% 
	int num1 = Integer.valueOf(request.getParameter("num1"));
	%>
	<% for(int i =1; i <= num1; i++) { %>
		아이템<% out.print(i); %>: <input type = "text" name = "random1"><br> <%
		// 아이템의 내용을 입력할 수 있는 input태그 생성!
		// 1. for문의 영역을 완벽하게 구분하여 작성한다.
		// 2. 내장객체인 out을 사용하여 태그를 입력한다.
		
		
	}%>
	<input type = "submit" value="시작">
	</form>
	











</body>
</html>