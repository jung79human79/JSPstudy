<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align = "center">
	<%  
		String id = request.getParameter("id"); // smart
	  	String pw = request.getParameter("pw");
	  	
	  	if(id.equals("smart") && pw.equals("123")) {
	  		// 로그인의 성공의 상태!
	  		// Login.jsp에서 새롭게 요청을 전달하는 위치!
	  		// 보내고싶은/공유하고 싶은 데이터를 포함하여 요청한다!
	  		// -> get방식에서 사용할 수 있는 Query String 문법!
			// response.sendRedirect("Ex03_LoginSuccess.jsp");
	  		// response.sendRedirect("Ex03_LoginSuccess.jsp?data=" + id);
	  		
	  		// forward 방식 : 요청에 대한 내용을 공유하며 새로운 요청을 할 수 있는 기법!
	  		RequestDispatcher rd = request.getRequestDispatcher("Ex03_LoginSuccess.jsp");
	  		// 공유하고자 하는 데이터 연결하기
	  		request.setAttribute("id", id);
	  		rd.forward(request, response);
	  		
	  	}else {
	  		// response.sendRedirect("Ex03_LoginFail.jsp");
	  		response.sendRedirect("Ex03_LoginFail.jsp?data="+ pw);
	  	}
	%>
</body>
</html>