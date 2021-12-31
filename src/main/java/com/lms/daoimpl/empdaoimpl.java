package com.lms.daoimpl;

import com.lms.*;
import com.lms.connection.*;
import com.lms.dao.empdao;
import com.lms.model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class empdaoimpl implements empdao {

	public emp_login resister(emp_login log) {

		emp_login login = new emp_login();
		String insertQuery = "insert into LMS_EMPLOYEE(emp_name,emp_department,emp_email,emp_password) values(?,?,?,?)";

		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);

			pstmt.setString(1, log.getEmp_name());
			pstmt.setString(2, log.getEmp_department());
			pstmt.setString(3, log.getEmp_email());
			pstmt.setString(4, log.getEmp_password());
			int i = pstmt.executeUpdate();
			System.out.println(i + "inserted");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return login;
	}

	public boolean login(emp_login user) {

		String insertQuery2 = "select * from LMS_EMPLOYEE where emp_name=? and emp_password=?";

		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery2);

			pstmt.setString(1, user.getEmp_name());
			pstmt.setString(2, user.getEmp_password());

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

}
