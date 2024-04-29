package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;
@WebServlet("/SelectAllService")
public class SelectAllService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. DAO 객체 생성
		DAO dao = new DAO();
		// 2. DAO안에 있는 전체 조회 기능 사용하기.
		List<MemberVO> list = dao.selectAll();

		// 3. 조회한 데이터 request에 회원 정보를 저장
		request.setAttribute("list", list);
		// 4. select.jsp로 포워드
		RequestDispatcher rd = request.getRequestDispatcher("select.jsp");
		rd.forward(request, response);
	
	
	}
	
	
	
	
	
}
