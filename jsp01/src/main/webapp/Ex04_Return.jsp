<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int data1 = Integer.valueOf(request.getParameter("data1"));
		int data2 = Integer.valueOf(request.getParameter("data2"));
		String sel = request.getParameter("sel");
		
		int result = 0;
		
		if(sel.equals("+")) {
			result = data1+data2;
		}else if(sel.equals("-")) {
			result = data1-data2;
		}else if(sel.equals("*")) {
			result = data1*data2;
		}else {
			result = data1/data2;
		}
	%>
	<!-- 결과에 대한 출력만 만들기 -->
	<%=data1 %> <%=sel%> <%=data2%> = <%= result %>









</body>
</html>