package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("UTF-8");	
		
	String email = request.getParameter("Lemail");
	String pw = request.getParameter("Lpw");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	
	MemberVO vo = new MemberVO(email,pw);
	
	DAO dao = new DAO();
	
	MemberVO resultVo = dao.login(vo);
	
	if(resultVo != null) {
		//  로그인 성공한다면, join_success.jsp로 forward 방식으로 이동
		HttpSession session = request.getSession();
		session.setAttribute("member", resultVo);
	}
		response.sendRedirect("main.jsp");

	
	
	
	
	
	}

}
