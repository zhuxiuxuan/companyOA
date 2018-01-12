package com.zxx.entity;

/**
 * 周报实体类
 * @author 朱修轩
 *2017-12-27
 *上午9:34:23
 */
public class Weekly {
	private String weekly_id;//周报运用ID
	private String weekly_sender;//发送者
	private String weekly_recipient;//接收者
	private String weekly_date;//周报日期
	private String weekly_complete;//本周完成工作
	private String weekly_problem;//本周遇到问题
	private String weekly_plan;//下周计划
	private int weekly_status;//状态，1=未发送，2=发送成功
	private StaffInfo senderInfo;
	public Weekly(){
		
	}
	public String getWeekly_id() {
		return weekly_id;
	}
	public void setWeekly_id(String weekly_id) {
		this.weekly_id = weekly_id;
	}
	public String getWeekly_sender() {
		return weekly_sender;
	}
	public void setWeekly_sender(String weekly_sender) {
		this.weekly_sender = weekly_sender;
	}
	public String getWeekly_recipient() {
		return weekly_recipient;
	}
	public void setWeekly_recipient(String weekly_recipient) {
		this.weekly_recipient = weekly_recipient;
	}
	public String getWeekly_date() {
		return weekly_date;
	}
	public void setWeekly_date(String weekly_date) {
		this.weekly_date = weekly_date;
	}
	public String getWeekly_complete() {
		return weekly_complete;
	}
	public void setWeekly_complete(String weekly_complete) {
		this.weekly_complete = weekly_complete;
	}
	public String getWeekly_problem() {
		return weekly_problem;
	}
	public void setWeekly_problem(String weekly_problem) {
		this.weekly_problem = weekly_problem;
	}
	public String getWeekly_plan() {
		return weekly_plan;
	}
	public void setWeekly_plan(String weekly_plan) {
		this.weekly_plan = weekly_plan;
	}
	public int getWeekly_status() {
		return weekly_status;
	}
	public void setWeekly_status(int weekly_status) {
		this.weekly_status = weekly_status;
	}
	
	public StaffInfo getSenderInfo() {
		return senderInfo;
	}
	public void setSenderInfo(StaffInfo senderInfo) {
		this.senderInfo = senderInfo;
	}
	public Weekly(String weekly_id, String weekly_sender,
			String weekly_recipient, String weekly_date,
			String weekly_complete, String weekly_problem, String weekly_plan,
			int weekly_status) {
		this.weekly_id = weekly_id;
		this.weekly_sender = weekly_sender;
		this.weekly_recipient = weekly_recipient;
		this.weekly_date = weekly_date;
		this.weekly_complete = weekly_complete;
		this.weekly_problem = weekly_problem;
		this.weekly_plan = weekly_plan;
		this.weekly_status = weekly_status;
	}
	

}
