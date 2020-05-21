<%@page import="com.test.exam.vo.UserBean"%>
<%@page import="com.test.exam.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="userBean" class="com.test.exam.vo.UserBean" scope="page" />
<jsp:setProperty name="userBean" property="uName" param="uName" />
<jsp:setProperty name="userBean" property="uEmail" param="uEmail" />
<jsp:setProperty name="userBean" property="uPw" param="uPw" />
<jsp:setProperty name="userBean" property="uMobile" param="uMobile" />
<jsp:setProperty name="userBean" property="uCp" param="uCp" />
<jsp:setProperty name="userBean" property="uGender" param="uGender" />
<jsp:setProperty name="userBean" property="uBirth" param="uBirth" />
<jsp:setProperty name="userBean" property="uEmailOk" param="uEmailOk" />
<jsp:setProperty name="userBean" property="uCpOk" param="uCpOk" />
<%
// 	UserBean userBean = new UserBean(); 위 jsp:userBean과 동일한 표현
	String numbers = request.getParameter("uCp1") + "-" + request.getParameter("uCp2") + "-" + request.getParameter("uCp3");
	userBean.setuCp(numbers);
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(userBean);
	userDAO.uClose();
	
	if(result != -1){	
		response.sendRedirect("index.jsp");
		session.setAttribute("userId", userBean.getuEmail());
	} else {	//data 연결 오류 처리
		out.println("<script>"
		+ "alert('회원가입에 실패하였습니다. 동일한 오류가 지속될 시에는 관리자에게 연락바랍니다.');"
		+ "history.back();"
		+ "</script>");
	}
%>