package com.zxx.biz.impl;

import java.util.List;
import java.util.Map;

import com.zxx.biz.StaffBiz;
import com.zxx.dao.StaffDao;
import com.zxx.entity.Modules;
import com.zxx.entity.Staff;
import com.zxx.entity.StaffInfo;

public class StaffBizImpl implements StaffBiz{
	private StaffDao staffDao;

	public StaffDao getStaffDao() {
		return staffDao;
	}

	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}

	@Override
	public Staff login(Map<String, Object> map) {
		List<Staff> list = staffDao.find(map);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<Modules> findModulesByLevel(int module_level) {
		return staffDao.find(module_level);
	}

	@Override
	public List<Staff> findAllStaff(Map<String, Object> map) {
		return staffDao.find(map);
	}

	@Override
	public int add(StaffInfo staffInfo) {
		return staffDao.add(staffInfo);
	}

	@Override
	public int add(Staff staff) {
		return staffDao.add(staff);
	}

	@Override
	public int findStaffCount(Map<String, Object> map) {
		return staffDao.findStaffCount(map);
	}

	@Override
	public List<Staff> findDepartmentHeadByStaffId(Map<String, Object> map) {
		return staffDao.find(map);
	}

	@Override
	public int updateStaffInfoById(StaffInfo staffInfo) {
		return staffDao.update(staffInfo);
	}

	@Override
	public int deleteStaffInfoById(String info_id) {
		return staffDao.delete(info_id);
	}

	@Override
	public int resetStaffPwdById(Staff staff) {
		return staffDao.update(staff);
	}

	@Override
	public int jurisdictionByid(Staff staff) {
		return staffDao.update(staff);
	}

	@Override
	public int modifyStaffPwdByid(Staff staff) {
		return staffDao.update(staff);
	}
	
	
}
