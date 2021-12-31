package com.lms.daoimpl;

import com.lms.*;
import com.lms.connection.*;
import com.lms.dao.leave_res_dao;
import com.lms.model.*;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class leave_res_daoimpl implements leave_res_dao {

	public leave_res applyLeave(leave_res lev) {
		leave_res leave = new leave_res();

		String insertQuery = "insert into LEAVE_RES(emp_id,reason,from_date,to_date,no_ofdays) values(?,?,?,?,?)";
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);

			pstmt.setInt(1, lev.getEmp_id());
			pstmt.setString(2, lev.getReason());
			pstmt.setDate(3, new java.sql.Date(lev.getFrom_date().getTime()));
			pstmt.setDate(4, new java.sql.Date(lev.getTo_date().getTime()));
			pstmt.setInt(5, lev.getNo_ofdays());
			int i = pstmt.executeUpdate();
			System.out.println(i + "inserted");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return leave;
	}

	// UPDATE:
	public leave_res updatelev(leave_res resq) {
		leave_res leave = new leave_res();
		String insertQuery = "update leave_res set  from_date=?,  to_date =? ,no_ofdays=? where emp_id=?";
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			pstmt.setDate(1, new java.sql.Date(resq.getFrom_date().getTime()));
			pstmt.setDate(2, new java.sql.Date(resq.getTo_date().getTime()));
			pstmt.setInt(3, resq.getNo_ofdays());
			pstmt.setInt(4, resq.getEmp_id());

			int i = pstmt.executeUpdate();
			System.out.println(i + "updated");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return leave;

	}

	// leave update1

	public boolean updatestatus(String status, int request_id) {
		String insertQuery = "update leave_res set  status=? where request_id=?";
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			pstmt.setString(1, status);
			pstmt.setInt(2, request_id);

			int i = pstmt.executeUpdate();
			System.out.println(i + " leave updated");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;

	}

	// delete
	public leave_res deleteuser(leave_res res) {
		leave_res leave = new leave_res();
		String insertQuery = "delete from leave_res where request_id=?";
		Connection con;
		try {
			con = lms_connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			pstmt.setInt(1, res.getRequest_id());
			int i = pstmt.executeUpdate();
			System.out.println(i + "deleted");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return leave;
	}

	public boolean showLevres() {

		String show = "select*from LEAVE_RES";
		Connection con;
		try {
			con = lms_connection.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(show);
			while (rs.next()) {
				System.out.format("%-10s%-10s%-10s%-13s%-15s%-5s%-4s\n", rs.getInt(1), rs.getInt(2), rs.getString(3),
						rs.getDate(4), rs.getDate(5), rs.getInt(6), rs.getString(7));
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

}
