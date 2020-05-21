package com.test.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.exam.dao.UserDAO;

@WebServlet("/loginAction.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uId =  request.getParameter("uId");
		String uPw =  request.getParameter("uPw");
		UserDAO userDAO = new UserDAO();
		boolean result = userDAO.login(uId, uPw);
		userDAO.uClose();
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		if(result){	
			
			session.setAttribute("userId", uId);
			response.sendRedirect("index.jsp");
		} else {	
			out.println("<script>"
			+ "alert('아이디나 비밀번호가 다릅니다. 다시 확인해주세요.');"
			+ "history.back();"
			+ "</script>");
		}
	}

}
