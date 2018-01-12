package com.zxx.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.DefaultValueProcessor;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.zxx.biz.WeeklyBiz;
import com.zxx.entity.Department;
import com.zxx.entity.StaffInfo;
import com.zxx.entity.Weekly;
import com.zxx.util.PageUtil;
import com.zxx.util.SetUuidUtil;

/**
 * 周报action
 * @author 朱修轩
 *2017-12-26
 *下午4:20:21
 */
public class WeeklyAction implements SessionAware,RequestAware{
	private Map<String, Object> map = new HashMap<String, Object>();
	private WeeklyBiz weeklyBiz;
	private String weekly_recipient;//接收者
	private String weekly_complete;//本周完成工作
	private String weekly_problem;//本周遇到问题
	private String weekly_plan;//下周计划
	private String write_data;//根据时间查询周报
	private String pageNo;
	private JSONObject jsonObject;
	
	

	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public String getWrite_data() {
		return write_data;
	}

	public void setWrite_data(String write_data) {
		this.write_data = write_data;
	}

	public String getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}

	public WeeklyBiz getWeeklyBiz() {
		return weeklyBiz;
	}

	public void setWeeklyBiz(WeeklyBiz weeklyBiz) {
		this.weeklyBiz = weeklyBiz;
	}

	public String getWeekly_recipient() {
		return weekly_recipient;
	}

	public void setWeekly_recipient(String weekly_recipient) {
		this.weekly_recipient = weekly_recipient;
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
	/**
	 * 审阅周报
	 * 2017-12-27下午5:39:58
	 */
	public String a6h6ZiF(){
		if(pageNo == null){
			pageNo = "1";
		}
		int PageNo = Integer.parseInt(pageNo);
		int PageSize = 1;
		StaffInfo staffInfo = (StaffInfo)session.get("staffInfo");
		map.put("write_data", write_data);
		map.put("wRecipient", staffInfo.getInfo_id());
		int weeklyCount = weeklyBiz.findWeeklyCountByRecipient(map);
		if(PageNo <= 0 || PageNo>weeklyCount){
			PageNo = 1;
			pageNo = "1";
		}
		map.put("bin", (PageNo-1)*PageSize);
		map.put("pageSize", PageSize);
		List<Weekly> weeklyList = weeklyBiz.findWeeklyByRecipient(map);
		Map<String, Object> m = new HashMap<String, Object>();
		if(weeklyList.size()>0){
			PageUtil page = PageUtil.pageFind(pageNo, PageSize, weeklyCount, weeklyList);
			if(page != null){
				List<Weekly> list = page.getList();
				Weekly weekly = list.get(0);
				System.out.println(weekly.getSenderInfo()+"_________________");
				String[] complete = weekly.getWeekly_complete().split(";");
				String[] problem = weekly.getWeekly_problem().split(";");
				String[] plan = weekly.getWeekly_plan().split(";");
				if(!"".equals(write_data) && null != write_data){
					m.put("ajaxcompleteList", complete);//分割好的本周完成工作串
					m.put("ajaxproblemList", problem);//分割好的本周遇到问题串
					m.put("ajaxplanList", plan);//分割好的下周工作计划串
					m.put("ajaxpage", page);
					m.put("ajaxweeklyInfo", weekly);
				}else{
					request.put("completeList", complete);//分割好的本周完成工作串
					request.put("problemList", problem);//分割好的本周遇到问题串
					request.put("planList", plan);//分割好的下周工作计划串
					request.put("page", page);
					request.put("weeklyInfo", weekly);
				}
			}
		}else{
			m.put("ajaxweeklyInfo", "");
		}
		map.remove("write_data");map.remove("wRecipient");map.remove("bin");map.remove("pageSize");
		if(!"".equals(write_data) && null != write_data){
			JsonConfig jsonConfig = new JsonConfig();//json默认如果没有值为null,这里修改为没有值为""
			jsonConfig.registerDefaultValueProcessor(Department.class,  
			        new DefaultValueProcessor() {  
			            @Override
						public Object getDefaultValue(Class type) {  
			                return "";  
			            }  
			        });
			jsonObject = JSONObject.fromObject(m,jsonConfig);
			System.out.println(jsonObject);
			return "a6h6ZiF";
		}
		return "reviewOK";
	}

	/**
	 * 发送周报
	 * 2017-12-27上午10:18:55
	 */
	public  String YR6YCB(){
		String weekly_id = SetUuidUtil.getUUID();
		StaffInfo staffInfo = (StaffInfo)session.get("staffInfo");
		String weekly_sender = staffInfo.getInfo_id();
		//System.out.println(weekly_sender+"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		String weekly_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		Weekly weekly = new  Weekly(weekly_id, weekly_sender, weekly_recipient, weekly_date, weekly_complete, weekly_problem, weekly_plan, 2);
		int flag = weeklyBiz.sendWeekly(weekly);
		request.put("weeklyMsg", flag);
		return "send";
	}

	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

}
