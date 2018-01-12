<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>部门设置</title>
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
			<li><a href="#" class="am-icon-home">公司管理</a>
			</li>
			<li class="am-active">部门设置</li>
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
								<button type="button" 
									class="am-btn am-btn-default am-btn-success">
									<span class="am-icon-plus"></span> 新增
								</button>
								<button type="button"
									class="am-btn am-btn-default am-btn-danger">
									<span class="am-icon-trash-o"></span> 删除
								</button>
							</div>
						</div>
					</div>
				<br><br>
				</div>
				 <div class="am-g">
                        <div class="am-u-sm-12 am-scrollable-horizontal">
                        		<table class="am-table am-table-bordered am-table-striped am-text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                            <th>ID</th>
                                            <th>部门名称</th>
                                            <th>关联职务</th>
                                            <th>创建时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>15</td>
                                            <td>技术部</td>
                                            <td>主管;员工</td>
                                            <td >2014年9月4日 7:28:47</td>
                                            <td>
                                                <div >
                                                    <div >
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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