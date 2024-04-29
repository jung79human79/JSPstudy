<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	<%! int a = 5;
		int b = -5;
	%>
	
	<%! public int abs(int num) {
		int result = 0;
		if(num<0) {
			result = num * -1;
		}else {
			result = num;
		}
		// return num > 0 ? num : - num;
		return result;
	}
	%>
	<%= a %> 의 절대값 : <%= abs(a) %><br>
	<%= b %> 의 절대값 : <%= abs(b) %>


		
	
</form>








</body>
</html>