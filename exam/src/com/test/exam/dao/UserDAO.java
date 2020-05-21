package com.test.exam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.test.exam.vo.UserBean;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public UserDAO() {	//sql 접속 생성자
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/exam");
			conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void uClose() {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	public int join(UserBean userBean) {
		String sql = "insert into user values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userBean.getuName());
			pstmt.setString(2, userBean.getuEmail());
			pstmt.setString(3, userBean.getuPw());
			pstmt.setString(4, userBean.getuMobile());
			pstmt.setString(5, userBean.getuCp());
			pstmt.setString(6, userBean.getuGender());
			pstmt.setString(7, userBean.getuBirth());
			pstmt.setString(8, userBean.getuEmailOk());
			pstmt.setString(9, userBean.getuCpOk());
			pstmt.executeUpdate();
			return 0; //pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	public boolean login(String uId, String uPw) {
		String sql = "select uPw from user where uEmail=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString(1);
				return uPw.equals(dbPw);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
