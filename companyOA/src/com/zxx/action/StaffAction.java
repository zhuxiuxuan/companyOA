package com.zxx.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.zxx.biz.StaffBiz;
import com.zxx.entity.Modules;
import com.zxx.entity.Staff;
import com.zxx.entity.StaffInfo;
import com.zxx.util.ChineseToEnglishUtil;
import com.zxx.util.MD5Util;
import com.zxx.util.PageUtil;
import com.zxx.util.SetUuidUtil;
import com.zxx.util.UploadUtil;

public class StaffAction implements SessionAware,RequestAware{
	Map<String, Object> map = new HashMap<String, Object>();
	private StaffBiz staffBiz;
	private String staffName;
	private String staffPwd;
	private File info_photo;
	private String info_name;
	private String info_department;
	private String info_position;
	private String info_entry;
	private String info_phone;
	private String info_WeChat;
	private String info_photoFileName ;  // 上传文件的名字 ,FileName 固定的写法  
    private String info_photoContentType ; //上传文件的类型， ContentType 固定的写法 
    private String info_level;
	private String pageNo;
	private String updateInfo_id;
	private String delectInfo_photo;
	public String staff_pwd;
	private JSONObject jsonObject;
	
	
    public String getStaff_pwd() {
		return staff_pwd;
	}

	public void setStaff_pwd(String staff_pwd) {
		this.staff_pwd = staff_pwd;
	}

	public String getInfo_level() {
		return info_level;
	}

	public void setInfo_level(String info_level) {
		this.info_level = info_level;
	}

	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public String getDelectInfo_photo() {
		return delectInfo_photo;
	}

	public void setDelectInfo_photo(String delectInfo_photo) {
		this.delectInfo_photo = delectInfo_photo;
	}

	public String getUpdateInfo_id() {
		return updateInfo_id;
	}

	public void setUpdateInfo_id(String updateInfo_id) {
		this.updateInfo_id = updateInfo_id;
	}

	public String getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}
	
	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getStaffPwd() {
		return staffPwd;
	}

	public void setStaffPwd(String staffPwd) {
		this.staffPwd = staffPwd;
	}

	public StaffBiz getStaffBiz() {
		return staffBiz;
	}

	public void setStaffBiz(StaffBiz staffBiz) {
		this.staffBiz = staffBiz;
	}
	
	public File getInfo_photo() {
		return info_photo;
	}

	public void setInfo_photo(File info_photo) {
		this.info_photo = info_photo;
	}

	public String getInfo_name() {
		return info_name;
	}

	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}

	public String getInfo_department() {
		return info_department;
	}

	public void setInfo_department(String info_department) {
		this.info_department = info_department;
	}

	public String getInfo_position() {
		return info_position;
	}

	public void setInfo_position(String info_position) {
		this.info_position = info_position;
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
	public String getInfo_photoFileName() {
		return info_photoFileName;
	}

	public void setInfo_photoFileName(String info_photoFileName) {
		this.info_photoFileName = info_photoFileName;
	}

	public String getInfo_photoContentType() {
		return info_photoContentType;
	}

	public void setInfo_photoContentType(String info_photoContentType) {
		this.info_photoContentType = info_photoContentType;
	}
	/**
	 * 修改密码
	 * 2018-1-9下午4:43:10
	 */
	public String RoZSBwYXNzd29yZA(){
		Staff staff = new Staff("s","s",MD5Util.toMD5(staff_pwd),updateInfo_id,0);
		int flag = staffBiz.modifyStaffPwdByid(staff);
		jsonObject = JSONObject.fromObject(flag);
		return "RoZSBwYXNzd29yZA";
	}
	/**
	 * 权限设置
	 * 2018-1-5上午8:40:17
	 */
	public String anVyaXNkaWN0aW9u(){
		int int1 = Integer.parseInt(info_level);
		Staff staff = new Staff("","","",updateInfo_id,int1);
		staffBiz.jurisdictionByid(staff);
		return "anVyaXNkaWN0aW9u";
	}
	/**
	 * 重置密码
	 * 2018-1-4下午4:01:14
	 */
	public String UmVzZXRQV0Q(){
		String staff_pwd = MD5Util.toMD5("123456");
		Staff staff = new Staff("s","s",staff_pwd,updateInfo_id,0);
		int flag = staffBiz.resetStaffPwdById(staff);
		jsonObject = JSONObject.fromObject(flag);
		return "UmVzZXRQV0Q";
	}
	/**
	 * 根据id删除信息
	 * 2018-1-3下午5:16:25
	 */
	public String Yig6Zmk5ZGY5bel(){
		int flag = staffBiz.deleteStaffInfoById(updateInfo_id);
		if(flag>0){
			UploadUtil.delectUpload(delectInfo_photo);
		}
		jsonObject = JSONObject.fromObject(flag);
		return "Yig6Zmk5ZGY5bel";
	}
	/**
	 * 根据id修改信息
	 * 2018-1-3上午10:18:10
	 */
	public String Lh5oGv5Lu5pS5(){
		String info_photoName = "";
		if(!"".equals(info_photo) && null != info_photo){
			boolean flag = UploadUtil.delectUpload(delectInfo_photo);
			if(flag){
				info_photoName = UploadUtil.upload(info_photo, info_photoFileName,"photoFolder");
			}else{
				info_photoName = delectInfo_photo;
			}
		}else{
			info_photoName = delectInfo_photo;
		}
		StaffInfo staffInfo = new StaffInfo(updateInfo_id, info_name, info_photoName, info_department, info_position, info_entry, info_phone, info_WeChat,1,"");
    	int flag = staffBiz.updateStaffInfoById(staffInfo);
    	jsonObject = JSONObject.fromObject(flag);
		return "Lh5oGv5Lu5pS5";
	}
	/**
	 * 根据部门查询部门高层
	 * 2017-12-26下午4:34:17
	 */
	public String YOo6Zeo6auY5bGC(){
		StaffInfo staffInfo = (StaffInfo)session.get("staffInfo");
		int level = staffInfo.getStaff_level();
		if(level == 2){
			map.put("staffLevel", -1);
		}else{
			map.put("staffDepartment", staffInfo.getInfo_departmentId());
			map.put("staffLevel", 2);
		}
		List<Staff> staffList = staffBiz.findDepartmentHeadByStaffId(map);
		System.out.println(staffList.size()+"+++++++++++++");
		map.remove("staffDepartment");map.remove("staffLevel");
		//System.out.println("_________________"+staffList.size());
		/*Date date = new Date();
		String d = new SimpleDateFormat("yyyy-MM-dd E",Locale.CHINA).format(date);
		request.put("date", d);*/
		request.put("staffList", staffList);
		return "DepartmentHeadOK";
	}
	/**
	 * 员工退出
	 * 2017-12-26下午3:53:46
	 */
	public String YCA5Ye6(){
		session.clear();
		map.clear();
		request.clear();
		return "OutOK";
	}

	/**
	 * 登录
	 * 2017-12-22下午2:36:09
	 */
	public String m75b2V(){
		map.put("staffName", staffName);
		map.put("staffPwd", MD5Util.toMD5(staffPwd));
		Staff staff = staffBiz.login(map);
		map.remove("staffName");map.remove("staffPwd");
		//System.out.println(map.get("PageSize")+"****************************************");
		//System.out.println(staff.getStaff_info().getInfo_name()+"_________________________");
		if(staff != null){
			int module_level = staff.getStaff_level();
			//查询级别对应模块信息
			List<Modules> modulelist = staffBiz.findModulesByLevel(module_level);
			if("E10ADC3949BA59ABBE56E057F20F883E".equals(staff.getStaff_pwd())){
				request.put("pwd", "delpwd");
			}else{
				request.put("pwd", "");
			}
			session.put("modulelist", modulelist);
			session.put("staffInfo", staff.getStaff_info());
			return "loginOK";
		}
		return "loginNO";
	}
	/**
	 * 查看员工信息
	 * 2017-12-22下午2:37:17
	 */
	public String pl55yL(){
		if(pageNo == null){
			pageNo = "1";
		}
		StaffInfo staffInfo = (StaffInfo)session.get("staffInfo");
		
		if(staffInfo.getStaff_level() == 2){
			map.put("findByDEP", staffInfo.getInfo_departmentId());
		}
		int PageNo = Integer.parseInt(pageNo);
		int PageSize = 3;
		int totalCount = staffBiz.findStaffCount(map);//查询总条数
		if(PageNo <= 0 || PageNo>totalCount){
			PageNo = 1;
			pageNo = "1";
		}
		map.put("pageFind", "pagefind");
		map.put("bin", (PageNo-1)*PageSize);
		map.put("pageSize", PageSize);
		//System.out.println(map.get("staffName"));
		//(${PageNo}-1)*${PageSize},${PageSize}
		List<Staff> staffList = staffBiz.findAllStaff(map);
		map.remove("findByDEP");map.remove("pageFind");map.remove("bin");map.remove("pageSize");
		PageUtil page = PageUtil.pageFind(pageNo, PageSize, totalCount, staffList);
		request.put("page", page);
		return "findOK";
	}
	/**
	 * 新增员工
	 * 2017-12-25上午9:30:21
	 */
	public String paw5aKe(){
		/*System.out.println("fileName:"+this.getInfo_photoFileName());
        System.out.println("contentType:"+this.getInfo_photoContentType());
        System.out.println("File:"+this.getInfo_photo());*/
        String info_photoName = UploadUtil.upload(info_photo, info_photoFileName,"photoFolder");
        if(!"".equals(info_photoName)){
        	String info_id = SetUuidUtil.getUUID();
        	String creation_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        	StaffInfo staffInfo = new StaffInfo(info_id, info_name, info_photoName, info_department, info_position, info_entry, info_phone, info_WeChat,1,creation_date);
        	int result = staffBiz.add(staffInfo);//创建新员工的详细信息
        	if(result>0){
        		String staff_id = SetUuidUtil.getUUID();
            	String staff_name = ChineseToEnglishUtil.getPingYin(info_name);
            	String staff_pwd = MD5Util.toMD5("123456");
            	Staff staff = new Staff(staff_id, staff_name, staff_pwd, info_id, 1);
            	int flag = staffBiz.add(staff);//生成员工登入账户和密码
            		request.put("staffMsg", flag);
            		return "addStaffOK";
        	}
        }
		return "ERROR";
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
