package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Ex01_Login")
public class Ex01_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String result="실패!";
		if(data1.equals("smart") && data2.equals("123")) {
			result = "환영합니다!";
		}
	
		PrintWriter out = response.getWriter();
		out.print(result);
	
	
	
	}

}
