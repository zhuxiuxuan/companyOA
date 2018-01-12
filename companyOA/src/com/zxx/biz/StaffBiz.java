package com.zxx.biz;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Modules;
import com.zxx.entity.Staff;
import com.zxx.entity.StaffInfo;

public interface StaffBiz {
	/**
	 * 登录
	 * 2017-12-21下午5:15:27
	 */
	public Staff login(Map<String, Object> map);
	/**
	 * 根据级别查询模块
	 * 2017-12-22上午10:19:16
	 */
	public List<Modules> findModulesByLevel(int module_level);
	/**
	 * 查询出所有的员工信息
	 * 2017-12-22上午11:57:21
	 */
	public List<Staff> findAllStaff(Map<String, Object> map);
	/**
	 * 创建一条员工详细信息
	 * 2017-12-25上午11:54:01
	 */
	public int add(StaffInfo staffInfo);
	/**
	 * 生成员工登录账户密码
	 * 2017-12-25下午12:30:01
	 */
	public int add(Staff staff);
	/**
	 * 查询出员工总数
	 * 2017-12-25下午5:13:28
	 */
	public int findStaffCount(Map<String, Object> map);
	/**
	 * 根据所属部门id查询本部门高层
	 * 2017-12-26下午4:45:11
	 */
	public List<Staff> findDepartmentHeadByStaffId(Map<String, Object> map);
	/**
	 * 根据ID修改员工信息
	 * 2018-1-3上午10:39:07
	 */
	public int updateStaffInfoById(StaffInfo staffInfo);
	/**
	 * 根据ID删除员工信息
	 * 2018-1-3下午4:57:09
	 */
	public int deleteStaffInfoById(String info_id);
	/**
	 * 重置密码
	 * 2018-1-4下午3:46:21
	 */
	public int resetStaffPwdById(Staff staff);
	/**
	 * 权限设置
	 * 2018-1-5上午8:43:29
	 */
	public int jurisdictionByid(Staff staff);
	/**
	 * 修改密码
	 * 2018-1-9下午4:46:23
	 */
	public int modifyStaffPwdByid(Staff staff);

}
