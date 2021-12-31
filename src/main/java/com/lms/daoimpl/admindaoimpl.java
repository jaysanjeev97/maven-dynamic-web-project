package com.lms.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.lms.*;
import com.lms.connection.*;
import com.lms.dao.admindao;
import com.lms.model.*;

public class admindaoimpl implements admindao {

	public admin insert(admin o1) {

		admin admin = new admin();
		int n = 0;
		String insertQuery = "insert into LMS_ADMIN values(?,?,?,?,?)";

		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);

			pstmt.setInt(1, o1.getManager_id());
			pstmt.setString(2, o1.getManager_name());
			pstmt.setString(3, o1.getManager_email());
			pstmt.setString(4, o1.getManager_password());
			pstmt.setString(5, o1.getManager_department());
			n = pstmt.executeUpdate();
			// System.out.println(i+ "inserted");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;
	}

	public boolean adminlogin(admin user) {

		String insertQuery1 = "select * from LMS_ADMIN where manager_id=? and manager_password=?";

		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery1);

			pstmt.setInt(1, user.getManager_id());
			pstmt.setString(2, user.getManager_password());

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

		{
			return false;
		}
	}

	// insert:
	public emp_login insertUser(emp_login e1) {
		emp_login login = new emp_login();
		String insertQuery = "insert into LMS_EMPLOYEE (emp_name,emp_department,emp_email,emp_password) values(?,?,?,?)";

		int n = 0;
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);

			pstmt.setString(1, e1.getEmp_name());
			pstmt.setString(2, e1.getEmp_department());
			pstmt.setString(3, e1.getEmp_email());
			pstmt.setString(4, e1.getEmp_password());
			n = pstmt.executeUpdate();
			// System.out.println(i+ "inserted");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return login;
	}

	// UPDATE:
	public emp_login updateuser(emp_login e2) {
		emp_login login = new emp_login();
		String insertQuery = "update LMS_EMPLOYEE set  emp_department=? where emp_id=?";
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			pstmt.setString(1, e2.getEmp_department());
			pstmt.setInt(2, e2.getEmp_id());
			int i = pstmt.executeUpdate();
			System.out.println(i + "updated");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return login;

	}

	// delete
	public emp_login deleteuser(emp_login e3) {
		String insertQuery = "delete from LMS_EMPLOYEE where emp_id=?";
		emp_login login = new emp_login();
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			pstmt.setInt(1, e3.getEmp_id());
			int i = pstmt.executeUpdate();
			System.out.println(i + "deleted");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return login;

	}

}
