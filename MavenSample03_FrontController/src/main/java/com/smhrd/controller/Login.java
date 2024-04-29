package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

public class Login implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("Lemail");
		String pw = request.getParameter("Lpw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		MemberVO vo = new MemberVO(email, pw);

		DAO dao = new DAO();

		MemberVO resultVo = dao.login(vo);

		if (resultVo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", resultVo);
		}
		return "redirect:/main";
		
	}
}
