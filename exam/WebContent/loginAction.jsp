<%@page import="com.test.exam.vo.UserBean"%>
<%@page import="com.test.exam.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uId =  request.getParameter("uId");
	String uPw =  request.getParameter("uPw");
	UserDAO userDAO = new UserDAO();
	boolean result = userDAO.login(uId, uPw);
	userDAO.uClose();
	
	if(result){	
		session.setAttribute("userId", uId);
		response.sendRedirect("index.jsp");
	} else {	
		out.println("<script>"
		+ "alert('아이디나 비밀번호가 다릅니다. 다시 확인해주세요.');"
		+ "history.back();"
		+ "</script>");
	}
%>