package com.zxx.entity;

/**
 * 公司员工实体类
 * @author 朱修轩
 *2017-12-21
 *下午3:38:39
 */
public class Staff {
	private String staff_id;
	private String staff_name;
	private String staff_pwd;
	private String staff_infoid;
	private StaffInfo staff_info;
	private int staff_level;
	
	public Staff(){
		
	}
	public int getStaff_level() {
		return staff_level;
	}
	public void setStaff_level(int staff_level) {
		this.staff_level = staff_level;
	}
	public String getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_pwd() {
		return staff_pwd;
	}
	public void setStaff_pwd(String staff_pwd) {
		this.staff_pwd = staff_pwd;
	}
	public String getStaff_infoid() {
		return staff_infoid;
	}
	public void setStaff_infoid(String staff_infoid) {
		this.staff_infoid = staff_infoid;
	}
	public StaffInfo getStaff_info() {
		return staff_info;
	}
	public void setStaff_info(StaffInfo staff_info) {
		this.staff_info = staff_info;
	}
	public Staff(String staff_id, String staff_name, String staff_pwd,
			String staff_infoid, int staff_level) {
		this.staff_id = staff_id;
		this.staff_name = staff_name;
		this.staff_pwd = staff_pwd;
		this.staff_infoid = staff_infoid;
		this.staff_level = staff_level;
	}
	
	
	
}
