package com.zxx.dao;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Modules;
import com.zxx.entity.Staff;
import com.zxx.entity.StaffInfo;

public interface StaffDao {
	/**
	 * 查询staff表
	 * 2017-12-22上午10:12:06
	 */
	public List<Staff> find(Map<String, Object> map);
	/**
	 * 查询显示模块
	 * wwz
	 * 2017-12-22上午10:16:03
	 */
	public List<Modules> find(int module_level);
	/**
	 * 添加员工详细信息
	 * 2017-12-25上午11:32:54
	 */
	public int add(StaffInfo staffInfo);
	/**
	 * 添加员工账户密码
	 * 2017-12-25下午12:27:04
	 */
	public int add(Staff staff);
	/**
	 * 查询职员人数
	 * 2017-12-25下午5:02:58
	 */
	public int findStaffCount(Map<String, Object> map);
	/**
	 * 修改员工信息
	 * 2018-1-3上午10:36:29
	 */
	public int update(StaffInfo staffInfo);
	/**
	 * 删除员工信息
	 * 2018-1-3下午4:37:31
	 */
	public int delete(String info_id);
	/**
	 * 修改staff表
	 * 2018-1-4下午3:43:55
	 */
	public int update(Staff staff);
}
