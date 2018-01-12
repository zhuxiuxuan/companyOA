<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>审阅周报</title>
<meta name="description" content="">
<meta name="keywords" content="">
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
		<ol class="am-breadcrumb">
			<li><a href="#" class="am-icon-home">首页</a>
			</li>
			<li><a href="#">周报</a>
			</li>
			<li class="am-active">审阅周报</li>
		</ol>
		<div class="tpl-portlet-components">
			<div class="portlet-title">
				<div class="caption font-green bold">
					<span class="am-icon-code"></span> 员工周报
				</div>
			</div>
			<div class="tpl-block ">
				<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
                            <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field" placeholder="选择日期" data-am-datepicker="{theme: 'success'}" readonly style="cursor:pointer;" onchange="findByDate(1)" id="date" value="${write_data }"/>   
                            </div>
                        </div>
				
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-form-group">
							<select data-am-selected="{btnSize: 'sm'}">
								<option value="option1">所有类别</option>
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
					<div class="am-u-sm-12 am-u-md-9" id="reHtml">
					<s:if test="#request.completeList != null">
					<table class="am-table am-table-bordered am-table-centered">
					  <tr>
					    <th>姓名</th>
					    <th>部门</th>
					    <th>职务</th>
					    <th>提交日期</th>
					  </tr>
					  <tr id="info">
					    <td>${request.weeklyInfo.senderInfo.info_name }</td>
					    <td>${request.weeklyInfo.senderInfo.info_department.d_name }</td>
					    <td>${request.weeklyInfo.senderInfo.info_position.p_name }</td>
					    <td>${request.weeklyInfo.weekly_date}</td>
					  </tr>
					</table>
						<table class="am-table am-table-bordered" id="completes">
							<tr >
						    <th style="text-align:center;">类别</th>
						    <th style="text-align:center;">详情</th>
						  </tr>
						  <s:iterator value="#request.completeList" var="complete" status="s">
						  	<s:if test="#s.index == 0">
						  	
						  		<tr>
									<td rowspan='<s:property value="#request.completeList.length"/>' class="am-text-middle"
										style="text-align:center;width: 20%;">本周完成任务</td>
									<td>${complete }</td>
								</tr>
						  	</s:if>
						  	<s:else>
						  		<tr>
						  			<td>${complete }</td>
						  		</tr>
						  	</s:else>
								</s:iterator>
						</table>
						<table class="am-table am-table-bordered" id="problems">
						  <s:iterator value="#request.problemList" var="problem" status="s">
						  	<s:if test="#s.index == 0">
						  		<tr>
									<td rowspan='<s:property value="#request.problemList.length"/>' class="am-text-middle"
										style="text-align:center;width: 20%;">本周遇到问题</td>
									<td>${problem }</td>
								</tr>
						  	</s:if>
						  	<s:else>
						  		<tr>
						  			<td>${problem }</td>
						  		</tr>
						  	</s:else>
								</s:iterator>
						</table>
						<table class="am-table am-table-bordered" id="plans">
						  <s:iterator value="#request.planList" var="plan" status="s">
						  	<s:if test="#s.index == 0">
						  		<tr>
									<td rowspan='<s:property value="#request.planList.length"/>' class="am-text-middle"
										style="text-align:center;width: 20%;">下周工作计划</td>
									<td>${plan }</td>
								</tr>
						  	</s:if>
						  	<s:else>
						  		<tr>
						  			<td>${plan }</td>
						  		</tr>
						  	</s:else>
								</s:iterator>
						</table>
						
						<ul id="pages" data-am-widget="pagination"
					      class="am-pagination am-pagination-select"
					      >
					      <li class="am-pagination-prev ">
					        <a href="../weekly/a6h6ZiF.action?pageNo=${page.pageNo-1 }&write_data=${write_data}" class="">上一条</a>
					      </li>
					      <li class="am-pagination-next ">
					        <a href="../weekly/a6h6ZiF.action?pageNo=${page.pageNo+1 }&write_data=${write_data}" class="">下一条</a>
					      </li>
					  </ul>
						</s:if>
						<s:else>
							<span>暂时没有人提交周报！</span>
						</s:else>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>


<jsp:include page="../bottom.jsp"></jsp:include>
</body>

</html>