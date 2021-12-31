package com.lms.dao;

import com.lms.model.leave_res;

public interface leave_res_dao {
	
	public leave_res applyLeave(leave_res lev );
	public leave_res updatelev(leave_res resq) ;
	public boolean updatestatus(String status,int request_id);
	public leave_res deleteuser(leave_res res);
	public boolean showLevres();

}
