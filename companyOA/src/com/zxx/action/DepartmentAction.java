package com.zxx.action;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
import net.sf.json.processors.DefaultValueProcessor;

import org.apache.struts2.interceptor.RequestAware;

import com.zxx.biz.DepartmentBiz;
import com.zxx.entity.Department;
import com.zxx.entity.Position;

public class DepartmentAction implements RequestAware{
	private String departmentID;
	private JSONArray jsonArray;
	private DepartmentBiz departmentBiz;
	private String opr;
	Map<String, Object> map = new HashMap<String, Object>();
	
	public String getOpr() {
		return opr;
	}

	public void setOpr(String opr) {
		this.opr = opr;
	}

	public String getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(String departmentID) {
		this.departmentID = departmentID;
	}

	public JSONArray getJsonArray() {
		return jsonArray;
	}

	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}

	public DepartmentBiz getDepartmentBiz() {
		return departmentBiz;
	}

	public void setDepartmentBiz(DepartmentBiz departmentBiz) {
		this.departmentBiz = departmentBiz;
	}
	/**
	 * 查询部门
	 * 2017-12-24-下午3:49:40
	 * @return
	 */
	public String pl6Ki6YOo6Zeo(){
		List<Department> departmentList = departmentBiz.findAllDepartment();
		request.put("departmentList", departmentList);
		if("0af78c2dd98551845".equals(opr)){
			for(int i = 0;i<departmentList.size();i++){
				map.put("departmentID", departmentList.get(i).getD_id());
				List<Position> positions = departmentBiz.findPositionByDID(map);
				departmentList.get(i).setPositions(positions);
			}
			request.put("departmentList", departmentList);
			return "";
		}else if("aad9f5b26fb62adf5".equals(opr)){
			return "staffInfoPage";
		}else{
			return "";
		}
		
	}
	/**
	 * 查询部门对应职位
	 * 2017-12-24-下午4:40:17
	 * @return
	 */
	public String i6IGM5L2N(){
		//System.out.println(departmentID+"_________________________________________________");
		if(!"".equals(departmentID) || null != departmentID){
			map.put("departmentID", departmentID);
			List<Position> positionList = departmentBiz.findPositionByDID(map);
			map.remove("departmentID");
			JsonConfig jsonConfig = new JsonConfig();//json默认如果没有值为null,这里修改为没有值为""
			jsonConfig.registerDefaultValueProcessor(Department.class,  
			        new DefaultValueProcessor() {  
			            @Override
						public Object getDefaultValue(Class type) {  
			                return "";  
			            }  
			        }); 
			jsonArray = JSONArray.fromObject(positionList,jsonConfig);
			//System.out.println(jsonArray+"_________________________________________________");
		}
		return "PositionOK";
		
	}
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

}
