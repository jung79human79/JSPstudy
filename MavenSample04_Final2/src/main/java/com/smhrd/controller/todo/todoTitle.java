package com.smhrd.controller.todo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

public class todoTitle implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		DAO dao = new DAO();
		List<MemberVO> list = dao.selectAll();
		request.setAttribute("list", list);
		return "SelectTodoAll";
	}
}
