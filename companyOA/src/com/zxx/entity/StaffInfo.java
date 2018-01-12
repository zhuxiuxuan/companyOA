package com.zxx.entity;

/**
 * 员工详细信息表
 * @author 朱修轩
 *2017-12-22
 *上午8:45:47
 */
public class StaffInfo {
	private String info_id;
	private String info_name;
	private String info_photo;//头像照片
	private String info_departmentId;//部门
	private String info_positionId;//职位
	private String info_entry;//入职时间
	private String info_phone;
	private String info_WeChat;
	private int staff_level;
	private String creation_date;
	
	public int getStaff_level() {
		return staff_level;
	}
	public void setStaff_level(int staff_level) {
		this.staff_level = staff_level;
	}
	public String getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(String creation_date) {
		this.creation_date = creation_date;
	}
	private Department info_department;
	private Position info_position;
	
	public StaffInfo(){
		
	}
	public String getInfo_departmentId() {
		return info_departmentId;
	}
	public void setInfo_departmentId(String info_departmentId) {
		this.info_departmentId = info_departmentId;
	}
	public String getInfo_positionId() {
		return info_positionId;
	}
	public void setInfo_positionId(String info_positionId) {
		this.info_positionId = info_positionId;
	}
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}
	public String getInfo_name() {
		return info_name;
	}
	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}
	public String getInfo_photo() {
		return info_photo;
	}
	public void setInfo_photo(String info_photo) {
		this.info_photo = info_photo;
	}
	public String getInfo_entry() {
		return info_entry;
	}
	public void setInfo_entry(String info_entry) {
		this.info_entry = info_entry;
	}
	public String getInfo_phone() {
		return info_phone;
	}
	public void setInfo_phone(String info_phone) {
		this.info_phone = info_phone;
	}
	public String getInfo_WeChat() {
		return info_WeChat;
	}
	public void setInfo_WeChat(String info_WeChat) {
		this.info_WeChat = info_WeChat;
	}
	public Department getInfo_department() {
		return info_department;
	}
	public void setInfo_department(Department info_department) {
		this.info_department = info_department;
	}
	public Position getInfo_position() {
		return info_position;
	}
	public void setInfo_position(Position info_position) {
		this.info_position = info_position;
	}
	public StaffInfo(String info_id, String info_name, String info_photo,
			String info_departmentId, String info_positionId,
			String info_entry, String info_phone, String info_WeChat,int staff_level,String creation_date) {
		this.info_id = info_id;
		this.info_name = info_name;
		this.info_photo = info_photo;
		this.info_departmentId = info_departmentId;
		this.info_positionId = info_positionId;
		this.info_entry = info_entry;
		this.info_phone = info_phone;
		this.info_WeChat = info_WeChat;
		this.staff_level = staff_level;
		this.creation_date = creation_date;
	}
	
}
