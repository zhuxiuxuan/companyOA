package com.zxx.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.zxx.dao.StaffDao;
import com.zxx.entity.Modules;
import com.zxx.entity.Staff;
import com.zxx.entity.StaffInfo;

public class StaffDaoImpl implements StaffDao{
	private SqlSessionTemplate sst;

	public SqlSessionTemplate getSst() {
		return sst;
	}

	public void setSst(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	@Override
	public List<Staff> find(Map<String, Object> map) {
		return sst.selectList("com.zxx.dao.impl.StaffDaoImpl.find", map);
	}

	@Override
	public List<Modules> find(int module_level) {
		return sst.selectList("com.zxx.dao.impl.StaffDaoImpl.findModules", module_level);
	}

	@Override
	public int add(StaffInfo staffInfo) {
		int i = sst.insert("com.zxx.dao.impl.StaffDaoImpl.addStaffInfo", staffInfo);
		return i;
	}

	@Override
	public int add(Staff staff) {
		return sst.insert("com.zxx.dao.impl.StaffDaoImpl.add", staff);
	}

	@Override
	public int findStaffCount(Map<String, Object> map) {
		return sst.selectOne("com.zxx.dao.impl.StaffDaoImpl.findStaffCount",map);
	}

	@Override
	public int update(StaffInfo staffInfo) {
		return sst.update("com.zxx.dao.impl.StaffDaoImpl.update", staffInfo);
	}

	@Override
	public int delete(String info_id) {
		return sst.delete("com.zxx.dao.impl.StaffDaoImpl.delete",info_id);
	}

	@Override
	public int update(Staff staff) {
		return sst.update("com.zxx.dao.impl.StaffDaoImpl.updateStaff", staff);
	}


	
}
