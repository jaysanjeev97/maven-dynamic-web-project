package com.lms.daoimpl;

import com.lms.*;
import com.lms.dao.EmpDao;
import com.lms.model.*;
import com.lms.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmpDaoImpl implements EmpDao {

	public EmpLogin resister(EmpLogin log) {

		EmpLogin login = new EmpLogin();
		String insertQuery = "insert into LMS_EMPLOYEE(emp_name,emp_department,emp_email,emp_password) values(?,?,?,?)";

		Connection con;
		try {
			con = ConnectionUtil.getConnection();
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

	public boolean login(EmpLogin user) {

		String insertQuery2 = "select * from LMS_EMPLOYEE where emp_name=? and emp_password=?";

		Connection con;
		try {
			con = ConnectionUtil.getConnection();
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
	//show
		public List<EmpLogin> showEmployee(){
			List< EmpLogin> emplogin=new ArrayList<EmpLogin>();
			EmpLogin emplog=null;
			String empshow="select*from LMS_EMPLOYEE";
			Connection con;
			try {
				con = ConnectionUtil.getConnection();
				Statement stmt= con.createStatement();
				ResultSet rs = stmt.executeQuery(empshow);
				while(rs.next()) {
					emplog=new EmpLogin(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
					emplogin.add(emplog);
				}
				return emplogin;
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
			
			return emplogin;
			
		}

}
