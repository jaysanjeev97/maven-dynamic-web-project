package com.lms.connection;
import com.lms.connection.*;
import com.lms.daoimpl.*;

import com.lms.model.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class lms_connection {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {

		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		
		return con;
		}
}
