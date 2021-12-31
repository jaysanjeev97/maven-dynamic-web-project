package com.lms.dao;

import com.lms.model.emp_login;

public interface empdao {

	public emp_login resister(emp_login log);

	public boolean login(emp_login user);

}
