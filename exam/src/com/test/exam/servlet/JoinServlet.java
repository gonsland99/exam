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
import com.test.exam.vo.UserBean;
@WebServlet("/joinAction.do")
public class JoinServlet extends HttpServlet {
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
	 	UserBean userBean = new UserBean(); 
	 	userBean.setuName(request.getParameter("uName"));
	 	userBean.setuEmail(request.getParameter("uEmail"));
	 	userBean.setuPw(request.getParameter("uPw"));
	 	userBean.setuGender(request.getParameter("uGender"));
	 	userBean.setuBirth(request.getParameter("uBirth"));
	 	userBean.setuEmailOk(request.getParameter("uEmailOk"));
	 	userBean.setuCpOk(request.getParameter("uCpOk"));
	 	
		String numbers = request.getParameter("uCp1") + "-" + request.getParameter("uCp2") + "-" + request.getParameter("uCp3");
		userBean.setuCp(numbers);
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(userBean);
		userDAO.uClose();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
			
		if(result != -1){	
			response.sendRedirect("index.jsp");
			session.setAttribute("userId", userBean.getuEmail());
		} else {	//data 연결 오류 처리
			out.println("<script>"
			+ "alert('회원가입에 실패하였습니다. 동일한 오류가 지속될 시에는 관리자에게 연락바랍니다.');"
			+ "history.back();"
			+ "</script>");
		}
	}
}
