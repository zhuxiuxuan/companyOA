package com.zxx.biz.impl;

import java.util.List;
import java.util.Map;

import com.zxx.biz.WeeklyBiz;
import com.zxx.dao.WeeklyDao;
import com.zxx.entity.Weekly;

public class WeeklyBizImpl implements WeeklyBiz{
	private WeeklyDao weeklyDao;

	public WeeklyDao getWeeklyDao() {
		return weeklyDao;
	}

	public void setWeeklyDao(WeeklyDao weeklyDao) {
		this.weeklyDao = weeklyDao;
	}

	@Override
	public int sendWeekly(Weekly weekly) {
		return weeklyDao.add(weekly);
	}

	@Override
	public int findWeeklyCountByRecipient(Map<String, Object> map) {
		return weeklyDao.findCount(map);
	}

	@Override
	public List<Weekly> findWeeklyByRecipient(Map<String, Object> map) {
		return weeklyDao.find(map);
	}
	

}
