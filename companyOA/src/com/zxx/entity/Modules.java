package com.zxx.entity;

/**
 * 模块实体类
 * @author 朱修轩
 *2017-12-22
 *上午9:51:41
 */
public class Modules {
	private String module_id;
	private String module_name;
	private String module_like;//模块链接地址
	private String module_style;//模块图标样式
	private String module_level;//显示级别，普通职员为1
	private String module_istwomodule;//是否为二级模块。若有一级ID为是，否为空
	private int module_showmodule;//模块是否显示
	public String getModule_id() {
		return module_id;
	}
	public void setModule_id(String module_id) {
		this.module_id = module_id;
	}
	public String getModule_name() {
		return module_name;
	}
	public void setModule_name(String module_name) {
		this.module_name = module_name;
	}
	public String getModule_like() {
		return module_like;
	}
	public void setModule_like(String module_like) {
		this.module_like = module_like;
	}
	public String getModule_style() {
		return module_style;
	}
	public void setModule_style(String module_style) {
		this.module_style = module_style;
	}
	
	public String getModule_level() {
		return module_level;
	}
	public void setModule_level(String module_level) {
		this.module_level = module_level;
	}
	public String getModule_istwomodule() {
		return module_istwomodule;
	}
	public void setModule_istwomodule(String module_istwomodule) {
		this.module_istwomodule = module_istwomodule;
	}
	public int getModule_showmodule() {
		return module_showmodule;
	}
	public void setModule_showmodule(int module_showmodule) {
		this.module_showmodule = module_showmodule;
	}
	
}
