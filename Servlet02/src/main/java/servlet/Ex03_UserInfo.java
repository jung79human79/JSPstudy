package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03_UserInfo")
public class Ex03_UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 요청에 대한 인코딩 작업
		request.setCharacterEncoding("utf-8");
		// 2. 요청에 대한 데이터 꺼내오기
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		// 3. 콘솔창에 데이터 띄워보기!
		System.out.println("job : " + job);
		System.out.println("gender :" + gender);
//		System.out.println("hobby :" + hobby);
		
		for(String data : hobby) {
			System.out.println("hobby :" + data);
		}
	
	
	
	
	
	
	
	}

}
