<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>新增员工</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <style type="text/css">
body {
	data-type: generalComponents;
</style>
<jsp:include page="../header.jsp"></jsp:include>
    <div class="tpl-page-container tpl-page-header-fixed">
       <jsp:include page="../left.jsp"></jsp:include>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	欢迎您的到来
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">员工管理</a></li>
                <li class="am-active">新增</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 员工信息
                    </div>
                </div>
                <input type="hidden" value="${staffMsg }" id="staffMsg">
                <div class="tpl-block ">
                    <div class="am-g tpl-amazeui-form">
                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="../staff/paw5aKe.action" method="post" enctype="multipart/form-data">
                            
                            <div class="am-form-group am-form-file">
                            <label for="user-name" class="am-u-sm-3 am-form-label">头像 / Photo</label>
								  <button type="button" class="am-btn am-btn-danger am-btn-sm">
								    <i class="am-icon-cloud-upload"></i> 选择头像</button>
								  <input id="doc-form-file" type="file" multiple name="info_photo">
								  <div id="file-list">
								  
								</div>
								</div>
								
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">姓名 / Name</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-name" placeholder="姓名 / Name" name="info_name">
                                    </div>
                                </div>
								<div class="am-form-group">
                                    <label  class="am-u-sm-3 am-form-label">部门 / Department</label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1}" name="info_department" onchange="findPosition();" id="DID">
											  <option value="s">请选择</option>
											  <s:if test="#request.departmentList != null">
											 <s:iterator value="#request.departmentList" var="d">
											 	<option  value="${d.d_id }">${d.d_name }</option>
											 </s:iterator>
											 </s:if>
											</select>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label  class="am-u-sm-3 am-form-label">职位 / position</label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1}" name="info_position" id="position">
											  <option value="s">请选择</option>
											</select>
                                    </div>
                                </div>
                                <div class="am-form-group am-form-icon">
                                <label for="user-email" class="am-u-sm-3 am-form-label">入职时间 / Email</label>
                                 
                                 <div class="am-u-sm-9">
									    <i class="am-icon-calendar" style="left: 1.2em;"></i>
									    <input type="text" class="am-form-field" placeholder="日期" name="info_entry" data-am-datepicker readonly required style="cursor:pointer;">
									    </div>
									  </div>
                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
                                    <div class="am-u-sm-9">
                                        <input type="tel" id="user-phone" placeholder="输入你的电话号码 / Telephone" name="info_phone">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">微信 / WeChat</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-weibo" placeholder="输入你的微信 / WeChat" name="info_WeChat">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">添加</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


    <jsp:include page="../bottom.jsp"></jsp:include>
    <script type="text/javascript">
     $(function() {//上传图片的
	    $('#doc-form-file').on('change', function() {
	      var fileNames = '';
	      $.each(this.files, function() {
	        fileNames += '<span class="am-badge">' + this.name + '</span> ';
	      });
	      $('#file-list').html(fileNames);
	    });
	    var staffMsg =  $("#staffMsg").val();
	    if(staffMsg > 0){
	    	$("#confirmMsg").html("添加成功,还需要继续添加吗？");
			$("#confirm").modal({
			relatedTarget: this,
		    closeViaDimmer: false,
			onConfirm: function(e) {
			window.location.href="../staff/pl6Ki6YOo6Zeo.action";
			},
			onCancel: function() {
			window.location.href="../staff/pl55yL.action?pageNo=1";
       		}
		});
	    }
	  });
  	</script>
</body>

</html>