package com.zxx.entity;

/**
 * 职位实体类
 * @author 朱修轩
 *2017-12-22
 *下午3:57:28
 */
public class Position {
	private String p_id;
	private String p_name;
	private String p_departmentID;
	private Department p_department;
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_departmentID() {
		return p_departmentID;
	}
	public void setP_departmentID(String p_departmentID) {
		this.p_departmentID = p_departmentID;
	}
	public Department getP_department() {
		return p_department;
	}
	public void setP_department(Department p_department) {
		this.p_department = p_department;
	}
	
}
