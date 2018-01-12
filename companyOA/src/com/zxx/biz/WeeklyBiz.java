package com.zxx.biz;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Weekly;

public interface WeeklyBiz {
	/**
	 * 提交周报
	 * 2017-12-27上午10:05:38
	 */
	public int sendWeekly(Weekly weekly);
	/**
	 * 根据接收者来查询所接收到的周报条数
	 * 2017-12-28上午9:00:13
	 */
	public int findWeeklyCountByRecipient(Map<String, Object> map);
	/**
	 * 根据接收者来查询所接收到的周报
	 * 2017-12-28上午9:52:58
	 */
	public List<Weekly> findWeeklyByRecipient(Map<String, Object> map);

}
