package com.lms.model;

public class LevStatus {
	
	
	private int manager_id;
	private int request_id;
	private int emp_id;
	private String status;
	public int getManager_id() {
		return manager_id;
	}
	
	
	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}
	public int getRequest_id() {
		return request_id;
	}
	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LevStatus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LevStatus(int manager_id, int request_id, int emp_id, String status) {
		super();
		this.manager_id = manager_id;
		this.request_id = request_id;
		this.emp_id = emp_id;
		this.status = status;
	}
	public LevStatus(int manager_id, int emp_id) {
		super();
		this.manager_id = manager_id;
		this.emp_id = emp_id;
	}
	public LevStatus(String status,int request_id ) {
		super();
		this.request_id = request_id;
		this.status = status;
	}
	public LevStatus(int request_id) {
		super();
		this.request_id = request_id;
	}
	
	public LevStatus(int manager_id, int request_id, int emp_id) {
		super();
		this.manager_id = manager_id;
		this.request_id = request_id;
		this.emp_id = emp_id;
	}
	

}
