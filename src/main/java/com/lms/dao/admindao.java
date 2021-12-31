package com.lms.dao;

import com.lms.model.admin;
import com.lms.model.emp_login;

public interface admindao {
	public admin insert(admin o1);

	public boolean adminlogin(admin user);

	public emp_login insertUser(emp_login e1);

	public emp_login updateuser(emp_login e2);

	public emp_login deleteuser(emp_login e3);

}
