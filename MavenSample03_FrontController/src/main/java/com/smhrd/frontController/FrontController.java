package com.smhrd.frontController;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Command;
import com.smhrd.controller.Join;
import com.smhrd.controller.Login;
import com.smhrd.controller.Logout;
import com.smhrd.controller.SelectAll;
import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	// 모든 요청은 반드시 FC를 거쳐서만 넘어갈 수 있게 설계
	// 이유는?
	// > 중복되는 코드 방지
	// > HttpServlet 엄청 무겁고, 자원을 많이 차지한다. Servlet 역할을 하는 파일을 한개만 놔둠
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. uri 가져오기
		String uri = request.getRequestURI();
//		System.out.println("요청 uri >> " + uri);
		// 2. cp 가져오기
		String cp = request.getContextPath();
//		System.out.println("요청 cp >> "+ cp);
		// 3. uri에서 cp 자르기
		// ex) /web/Login.do ---> Login.do
		String path = uri.substring(cp.length() + 1);
//		System.out.println("자른 path >> " + path);

		// 중복코드1. 한글 인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");
		
		// 최종경로 
		String finalPath = null;
		Command com = null;
		// 4. 최종경로가 무엇으로 끝나는지에 따라 서로 다른 기능을 실행
		
		// 4-1. Join.do와 최종경로가 같다면 회원가입 기능을 실행
		if (path.equals("Join.do")) {
			com = new Join();
		}else if (path.equals("Login.do")) {
			com = new Login();
		}else if(path.equals("Logout.do")) {
			com = new Logout();
		}else if(path.equals("SelectAll.do")) {
			com = new SelectAll();
		}
		finalPath = com.execute(request, response);
		// 중복코드2. 최종적으로 이동하는 경로
		if(finalPath.contains("redirect:/")) {
			// ex) redirect:/main
			// substring or replace or replaceAll or split 등등
			// 다양한 String method를 사용하여 문제 해결 가능
			response.sendRedirect(finalPath.split("/")[1]+".jsp");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher(finalPath + ".jsp");
			rd.forward(request, response);
		}
	
	
	
	
	
	
	
	
	
	
	}

}
