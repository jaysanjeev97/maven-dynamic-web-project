package com.lms.dao;

import com.lms.model.EmpLogin;

public interface EmpDao {

	public EmpLogin resister(EmpLogin log);

	public boolean login(EmpLogin user);

}
