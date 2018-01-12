<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>员工管理</title>
<meta name="description" content="">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<style type="text/css">
body {
	data-type: generalComponents;
}
</style>

<jsp:include page="../header.jsp"></jsp:include>
<div class="tpl-page-container tpl-page-header-fixed">
	<jsp:include page="../left.jsp"></jsp:include>
	<div class="tpl-content-wrapper">
		<div class="tpl-content-page-title">欢迎您的到来</div>
		<ol class="am-breadcrumb">
			<li><a href="#" class="am-icon-home">首页</a>
			</li>
			<li class="am-active">员工管理</li>
		</ol>
		<div class="tpl-portlet-components">
			<div class="portlet-title">
				<div class="caption font-green bold">
					<span class="am-icon-code"></span>员工列表
				</div>


			</div>
			<div class="tpl-block">
				<div class="am-g">
				
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
							<s:if test="#session.staffInfo.staff_level < 1">
								<a href="pl6Ki6YOo6Zeo.action?opr=aad9f5b26fb62adf5"><button type="button" 
									class="am-btn am-btn-default am-btn-success">
									<span class="am-icon-plus"></span> 新增
								</button></a>
								</s:if>
								<a><button type="button"
									class="am-btn am-btn-default am-btn-danger">
									<span class="am-icon-trash-o"></span> 删除
								</button></a>
							</div>
						</div>
					</div>
					
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-form-group">
							<select data-am-selected="{btnSize: 'sm'}">
								<option value="s">部门选择</option>
							</select>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field"> <span
								class="am-input-group-btn">
								<button
									class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search"
									type="button"></button> </span>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="tpl-table-images">
					<s:if test="#request.page != null">
					<s:iterator value="#request.page.list" var="staff">
						<div class="aa am-u-sm-12 am-u-md-6 am-u-lg-4">
							<div class="tpl-table-images-content">
								<div class="tpl-table-images-content-i-time">
								<span><strong>入职时间：${staff.staff_info.info_entry }</strong>
								</span>
								<input type="checkbox" style="float: right;width:1.5em;height:1.5em;"/>
								</div>
								
								<div class="tpl-i-title">
								<div class="am-g am-g-fixed">
									  <div class="am-u-sm-6 zxx-staff-info" title="${staff.staff_name }">
									  	<span class="am-icon-tint font-green">&nbsp;账&nbsp;&nbsp;户：</span>${staff.staff_name }
									  </div>
									  <div class="am-u-sm-6 zxx-staff-info" title="${staff.staff_info.info_name }"><span class="am-icon-tint font-green">&nbsp;姓&nbsp;&nbsp;名：</span> ${staff.staff_info.info_name }</div>
									  <br>
									  <div class="am-u-sm-6 zxx-staff-info" title="${staff.staff_info.info_department.d_name }"><span class="am-icon-tint font-green">&nbsp;部&nbsp;&nbsp;门：</span>${staff.staff_info.info_department.d_name }</div>
									  <div class="am-u-sm-6 zxx-staff-info" title="${staff.staff_info.info_position.p_name }"><span class="am-icon-tint font-green">&nbsp;职&nbsp;&nbsp;务：</span> ${staff.staff_info.info_position.p_name }</div>
									</div>
								</div>
								<a href="javascript:;" class="tpl-table-images-content-i"> <span
									class="tpl-table-images-content-i-shadow"></span>
									 <img src="../${staff.staff_info.info_photo }" style="height: 10em;"/></a>
								<div class="tpl-table-images-content-block">
									<div class="tpl-i-font">
										<strong>联系方式：</strong></div>
									<div class="tpl-i-more">
										<ul >
											<li class="zxx-staff-info" style="float:left;width:45%" title="${staff.staff_info.info_phone }"><span class="am-icon-phone am-text-warning">：${staff.staff_info.info_phone }</span>
											</li>
											<li class="zxx-staff-info" style="float:right;width:45%" title="${staff.staff_info.info_WeChat }"><span class="am-icon-weixin am-text-success">： ${staff.staff_info.info_WeChat }</span>
											</li>
										</ul>
									</div>
									<div class="am-btn-toolbar">
										
										<div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
											<button type="button" class="am-btn am-btn-default am-btn-success" onclick="resetStaff('${staff.staff_info.info_id }')">
											<span class="am-icon-plus"></span> 重置
											</button>
											<button type="button" 
												class="am-btn am-btn-default am-btn-secondary" onclick="updateStaff('${staff.staff_info.info_id }','${staff.staff_info.info_name }','${staff.staff_info.info_photo }','${staff.staff_info.info_department.d_id }','${staff.staff_info.info_department.d_name }','${staff.staff_info.info_position.p_id }','${staff.staff_info.info_position.p_name }','${staff.staff_info.info_entry }','${staff.staff_info.info_phone }','${staff.staff_info.info_WeChat }')">
												<span class="am-icon-edit"></span> 修改
											</button>
											<button type="button" class="am-btn am-btn-default am-btn-warning" onclick="jurisdictionStaff('${staff.staff_info.info_id }','${staff.staff_level }');">
											<span class="am-icon-archive">
											</span> 权限
											</button>
											<button type="button"
												class="am-btn am-btn-default am-btn-danger" onclick="delStaff('${staff.staff_info.info_id }','${staff.staff_info.info_photo }')" data-id="1">
												<span class="am-icon-trash-o"></span> 删除
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						</s:iterator>
						<div class="am-u-lg-12">
							<div class="am-cf">
								<div class="am-fr" id="page">
									<ul class="am-pagination tpl-pagination" >
										<li class="am-disabled"><a href="#">«</a>
										</li>
										<s:bean name="org.apache.struts2.util.Counter" id="counter" var="i">
											<s:param name="first" value="1" />
      										<s:param name="last" value="#request.page.pageCount" />
      										<s:iterator>
      											<li id="page<s:property/>"><a href="../staff/pl55yL.action?pageNo=<s:property/>"><s:property/></a>
      										</s:iterator>
										</s:bean>
										
										<li class="am-disabled"><a href="#">»</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						</s:if>
						<!-- 修改弹框开始 -->
						<div class="am-modal am-modal-prompt" tabindex="-1" id="updateStaff">
							  <div class="am-modal-dialog">
							    <div class="am-modal-hd">修改信息</div>
							    <div class="am-modal-bd am-form am-form-horizontal">
							    <form id="updateFrom" enctype="multipart/form-data" method="post"></form>
							    <input id="mId" type="hidden"  class="am-modal-prompt-input"/>
		                            <div class="am-form-group am-form-file">
		                            <label class="am-u-sm-3 am-form-label">头像</label>
										  <button type="button" class="am-btn am-btn-danger am-btn-sm">
										    <i class="am-icon-cloud-upload"></i> 选择头像</button>
										  <input id="doc-form-file" type="file" class="am-modal-prompt-input" multiple/>
										  <div id="file-list">
										</div>
										</div> 
		                                <div class="am-form-group">
		                                    <label class="am-u-sm-3 am-form-label">姓名</label>
		                                    <div class="am-u-sm-9">
		                                        <input id="mName" value="sss" type="text" class="am-modal-prompt-input" name="info_name"/>
		                                    </div>
		                                </div>
										<div class="am-form-group">
		                                    <label class="am-u-sm-3 am-form-label">部门 </label>
		                                    <div class="am-u-sm-9">
		                                        <select data-am-selected="{searchBox: 1}" class="am-modal-prompt-input">
													  <option id="mDepartment" ></option>
													</select>
		                                    </div>
		                                </div>
		                                <div class="am-form-group">
		                                    <label class="am-u-sm-3 am-form-label">职位</label>
		                                    <div class="am-u-sm-9">
		                                        <select data-am-selected="{searchBox: 1}" class="am-modal-prompt-input">
													  <option id="mPosition"></option>
													</select>
		                                    </div>
		                                </div>
		                                <div class="am-form-group am-form-icon">
		                                <label class="am-u-sm-3 am-form-label">入职时间 </label>
		                                 <div class="am-u-sm-9">
											    <input id="mEntry" type="text" class="am-modal-prompt-input" data-am-datepicker readonly required style="cursor:pointer;">
											    </div>
											  </div>
		                                <div class="am-form-group">
		                                    <label class="am-u-sm-3 am-form-label">电话</label>
		                                    <div class="am-u-sm-9">
		                                        <input id="mPhone" type="tel" class="am-modal-prompt-input"/>
		                                    </div>
		                                </div>
		                                <div class="am-form-group">
		                                    <label class="am-u-sm-3 am-form-label">微信 </label>
		                                    <div class="am-u-sm-9">
		                                        <input id="mWeChat" type="text" class="am-modal-prompt-input"/>
		                                    </div>
		                                </div>
		                                <input id="mPhoto" type="hidden"  class="am-modal-prompt-input"/>
							    </div>
							    <div class="am-modal-footer">
							      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
							      <span class="am-modal-btn" data-am-modal-confirm>提交</span>
							    </div>
							  </div>
							</div>
							<!-- 修改弹框结束 -->
						<!-- 重置弹框开始 -->
							<div class="am-modal am-modal-confirm" tabindex="-1" id="resetModal">
								  <div class="am-modal-dialog">
								    <div class="am-modal-hd">五象游学办公OA</div>
								    <div class="am-modal-bd">
								      你，确定要重置这位员工的密码吗？
								    </div>
								    <div class="am-modal-footer">
								      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
								      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
								    </div>
								  </div>
								</div>
							<!-- 重置弹框结束 -->
							<!-- 删除弹框开始 -->
							<div class="am-modal am-modal-confirm" tabindex="-1" id="delStaff">
								  <div class="am-modal-dialog">
								    <div class="am-modal-hd">五象游学办公OA</div>
								    <div class="am-modal-bd">
								      你，确定要删除这位员工信息吗？
								    </div>
								    <div class="am-modal-footer">
								      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
								      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
								    </div>
								  </div>
								</div>
							<!-- 删除弹框结束 -->
							<!-- 权限弹框开始 -->
							<div class="am-modal am-modal-prompt" tabindex="-1" id="jurisdictionModal">
							  <div class="am-modal-dialog">
							    <div class="am-modal-hd">现在的身份为：<span id="levelName">总经理</span></div>
							    <div class="am-modal-bd">
							     		 <label class="am-radio-inline">
											<input type="radio" name="level" value="2" data-am-ucheck>部门管理员
											</label>
											<!-- <label class="am-radio-inline">
											  <input type="radio" name="level" value="3" data-am-ucheck>会计
											</label> -->
											<label class="am-radio-inline">
											  <input type="radio" name="level" value="1" data-am-ucheck>普通员工
											</label>
							    </div>
							    <div class="am-modal-footer">
							      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
							      <span class="am-modal-btn" data-am-modal-confirm>设置</span>
							    </div>
							  </div>
							</div>
							<!-- 权限弹框结束 -->
					</div>
				</div>
			</div>
			<div class="tpl-alert"></div>
		</div>
	</div>

</div>


<jsp:include page="../bottom.jsp"></jsp:include>
</body>

</html>