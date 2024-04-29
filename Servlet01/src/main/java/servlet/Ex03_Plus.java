package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03_Plus")
public class Ex03_Plus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. html에서 넘겨주는 데이터 꺼내오기! -> 두개 데이터 꺼내오기
		//    - 꺼내온 데이터 변수에 저장하기!
		int data1 = Integer.valueOf(request.getParameter("data1")); 
		int data2 = Integer.valueOf(request.getParameter("data2"));
		// 2. 꺼내온 데이터 연산 진행하기
		int result1 = data1+data2; 
		// 3. 화면에 결과값이 출력되도록 만들기!
		PrintWriter out = response.getWriter();
		out.print(result1);
	}

}
